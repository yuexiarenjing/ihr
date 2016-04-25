package com.thinkgem.jeesite.modules.cms.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.cms.entity.Article;
import com.thinkgem.jeesite.modules.cms.entity.Category;
import com.thinkgem.jeesite.modules.cms.entity.Site;
import com.thinkgem.jeesite.modules.cms.service.CategoryService;
import com.thinkgem.jeesite.modules.cms.service.FileTplService;
import com.thinkgem.jeesite.modules.cms.service.SiteService;
import com.thinkgem.jeesite.modules.cms.utils.TplUtils;

/**
 * 栏目Controller
 * @author ThinkGem
 */
@Controller
@RequestMapping(value = "${adminPath}/cms/category")    //RequestMapping用于类上，表示类中的所有响应请求的方法都是以该地址作为父路径。
public class CategoryController extends BaseController{
	
	@Autowired
	private CategoryService categoryService;
    @Autowired
   	private FileTplService fileTplService;
    @Autowired
   	private SiteService siteService;
	
    private List<String> getTplContent(String prefix) {
   		List<String> tplList = fileTplService.getNameListByPrefix(siteService.get(Site.getCurrentSiteId()).getSolutionPath());
   		tplList = TplUtils.tplTrim(tplList, prefix, "");
   		return tplList;
   	}

	//加了@ModelAttribute的方法，会在每个目标方法执行之前被springmvc调用
	//加了@ModelAttribute以后会先做get方法,并且会在model里添加category这个对象.然后再去访问@RequestMapping的方法，由于在model里也就可以直接在视图展示页面使用category这个对象
	//@ModelAttribute也可以不加参数，入参传个model进去，然后再model里加入category
	@ModelAttribute("category")
	public Category get(@RequestParam(required=false) String id) {   //获取请求里的参数-id，将之传递到这个方法里
		if (StringUtils.isNotBlank(id)){
			return categoryService.get(id);          //这个Category对象是从数据库中获取的，加了@ModelAttribute("category")  属性以后，有种拦截器的感觉
		}else{
			return new Category();
		}
	}

	@RequiresPermissions("cms:category:view")
	@RequestMapping(value = {"list", ""})    //将类上的注解作为基路径，因为有两个值，任选一，即为${adminPath}/cms/category/list ，${adminPath}/cms/category/
	public String list(Model model) {        //@RequestMapping来映射请求，value对应url，method对应请求方法
										     //方法的入参可以加map或model类型的参数，在map或model里放入键值对，比如这里的list，然后在视图（jsp页面）就可以使用 ${list}获取对应的值
		                                     //map或model起的就是存储模型数据，以供视图使用的作用
		List<Category> list = Lists.newArrayList();
		List<Category> sourcelist = categoryService.findByUser(true, null);
		Category.sortList(list, sourcelist, "1");
        model.addAttribute("list", list);
		return "modules/cms/categoryList";
	}
	
	@RequiresPermissions("cms:category:view")
	@RequestMapping(value = "form")    						//Spring MVC 会按请求参数名和 POJO 属性名进行自动匹配，自动为该对象填充属性值,这里应该不是，之前有@ModelAttribute修饰的方法
	public String form(Category category, Model model) {    //	 * 1. 执行 @ModelAttribute 注解修饰的方法: 从数据库中取出对象, 把对象放入到了 model 中. 键为: category
															//   * 2. SpringMVC 从 model 中取出 Category 对象, 并把表单的请求参数赋给该 Category 对象的对应属性.
															//   * 3. SpringMVC 把上述对象传入目标方法的参数.
															//   注意: 在 @ModelAttribute 修饰的方法中, 放入到 model 时的键需要和目标方法入参类型的第一个字母小写的字符串一致!
		if (category.getParent()==null||category.getParent().getId()==null){
			category.setParent(new Category("1"));
		}
		category.setParent(categoryService.get(category.getParent().getId()));
        model.addAttribute("listViewList",getTplContent(Category.DEFAULT_TEMPLATE));
        model.addAttribute("category_DEFAULT_TEMPLATE",Category.DEFAULT_TEMPLATE);
        model.addAttribute("contentViewList",getTplContent(Article.DEFAULT_TEMPLATE));
        model.addAttribute("article_DEFAULT_TEMPLATE",Article.DEFAULT_TEMPLATE);
		model.addAttribute("category", category);
		return "modules/cms/categoryForm";
	}

	/*
	* SpringMVC 确定目标方法 POJO 类型入参的过程
	* 1. 确定一个 key:
	* 		1). 若目标方法的 POJO 类型的参数木有使用 @ModelAttribute 作为修饰, 则 key 为 POJO 类名第一个字母的小写
	* 		2). 若使用了  @ModelAttribute 来修饰, 则 key 为 @ModelAttribute 注解的 value 属性值.
	* 2. 在 implicitModel 中查找 key 对应的对象, 若存在, 则作为入参传入
	* 		1). 若在 @ModelAttribute 标记的方法中在 Map/model 中保存过, 且 key 和 1 确定的 key 一致, 则会获取到.
	* 3. 若 implicitModel 中不存在 key 对应的对象, 则检查当前的 Handler 是否使用 @SessionAttributes 注解修饰,
	* 若使用了该注解, 且 @SessionAttributes 注解的 value 属性值中包含了 key, 则会从 HttpSession 中来获取 key 所
	* 对应的 value 值, 若存在则直接传入到目标方法的入参中. 若不存在则将抛出异常.
	* 4. 若 Handler 没有标识 @SessionAttributes 注解或 @SessionAttributes 注解的 value 值中不包含 key, 则
	* 会通过反射来创建 POJO 类型的参数, 传入为目标方法的参数
	* 5. SpringMVC 会把 key 和 POJO 类型的对象保存到 implicitModel 中, 进而会保存到 request 中.
	* */

	/*
	 @ModelAttribute 注解也可以来修饰目标方法 POJO 类型的入参, 其 value 属性值有如下的作用:
	 * 1). SpringMVC 会使用 value 属性值在 implicitModel 中查找对应的对象, 若存在则会直接传入到目标方法的入参中.
	 * 2). SpringMVC 会以value 为 key, POJO 类型的对象为 value, 存入到 request 中.
	 不用@ModelAttribute 注解修饰，POJO也会被放入implicitModel中，key就是POJO 类名第一个字母的小写，加了@ModelAttribute可以通过其value指定其key的值
	 */


	@RequiresPermissions("cms:category:edit")
	@RequestMapping(value = "save")
	public String save(Category category, Model model, RedirectAttributes redirectAttributes) {
		if(Global.isDemoMode()){
			addMessage(redirectAttributes, "演示模式，不允许操作！");
			return "redirect:"+Global.getAdminPath()+"/cms/category/";
		}
		if (!beanValidator(model, category)){
			return form(category, model);
		}
		categoryService.save(category);
		addMessage(redirectAttributes, "保存栏目'" + category.getName() + "'成功");
		return "redirect:"+Global.getAdminPath()+"/cms/category/";
	}
	
	@RequiresPermissions("cms:category:edit")
	@RequestMapping(value = "delete")
	public String delete(String id, RedirectAttributes redirectAttributes) {
		if(Global.isDemoMode()){
			addMessage(redirectAttributes, "演示模式，不允许操作！");
			return "redirect:"+Global.getAdminPath()+"/cms/category/";
		}
		if (Category.isRoot(id)){
			addMessage(redirectAttributes, "删除栏目失败, 不允许删除顶级栏目或编号为空");
		}else{
			categoryService.delete(id);
			addMessage(redirectAttributes, "删除栏目成功");
		}
		return "redirect:"+Global.getAdminPath()+"/cms/category/";
	}
	
	/**
	 * 批量修改栏目排序
	 */
	@RequiresPermissions("cms:category:edit")
	@RequestMapping(value = "updateSort")
	public String updateSort(String[] ids, Integer[] sorts, RedirectAttributes redirectAttributes) {
    	int len = ids.length;
    	Category[] entitys = new Category[len];
    	for (int i = 0; i < len; i++) {
    		entitys[i] = categoryService.get(ids[i]);
    		entitys[i].setSort(sorts[i]);
    		categoryService.save(entitys[i]);
    	}
    	addMessage(redirectAttributes, "保存栏目排序成功!");
		return "redirect:"+Global.getAdminPath()+"/cms/category/";
	}
	
	@RequiresUser
	@ResponseBody
	@RequestMapping(value = "treeData")
	public List<Map<String, Object>> treeData(String module, @RequestParam(required=false) Long extId, HttpServletResponse response) {
		response.setContentType("application/json; charset=UTF-8");
		List<Map<String, Object>> mapList = Lists.newArrayList();
		List<Category> list = categoryService.findByUser(true, module);
		for (int i=0; i<list.size(); i++){
			Category e = list.get(i);
			if (extId == null || (extId!=null && !extId.equals(e.getId()) && e.getParentIds().indexOf(","+extId+",")==-1)){
				Map<String, Object> map = Maps.newHashMap();
				map.put("id", e.getId());
				map.put("pId", e.getParent()!=null?e.getParent().getId():0);
				map.put("name", e.getName());
				map.put("module", e.getModule());
				mapList.add(map);
			}
		}
		return mapList;
	}
	
}
