package com.thinkgem.jeesite.modules.prj.web;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.prj.entity.People;
import com.thinkgem.jeesite.modules.prj.entity.PeopleStatus;
import com.thinkgem.jeesite.modules.prj.service.PeopleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 用户Controller
 * @author ThinkGem
 */
@Controller
@RequestMapping(value = "${adminPath}/prj/people")
public class PeopleController extends BaseController{

	@Autowired
	private PeopleService peopleService;

	@ModelAttribute
	public People get(@RequestParam(required=false) String id) {
		if (StringUtils.isNotBlank(id)){
			return peopleService.getPeople(id);
		}else{
			return new People();
		}
	}
	
	//获取用户列表
//	@RequiresPermissions("sys:user:view")
	@RequestMapping(value = {"list", ""})
	public String list(People people, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<People> page = peopleService.findPeople(new Page<People>(request, response), people);
        model.addAttribute("page", page);
		return "modules/prj/peopleList";
	}

	//	@RequiresPermissions("sys:user:view")
	@RequestMapping(value = {"form", "edit"})
	public String form(People people, HttpServletRequest request, HttpServletResponse response,Model model) {
		model.addAttribute("people", people);
		return "modules/prj/peopleForm";
	}

	//	@RequiresPermissions("sys:user:edit")
	@RequestMapping(value = "save")
	public String save(People people, RedirectAttributes redirectAttributes) {
		// 保存用户信息
		peopleService.savePeople(people);
		addMessage(redirectAttributes, "保存用户'" + people.getName() + "'成功");
		return "redirect:"+Global.getAdminPath()+"/prj/people/?repage";
	}
	//
//	@RequiresPermissions("sys:user:edit")
	@RequestMapping(value = "delete")
	public String delete(String id, RedirectAttributes redirectAttributes) {
		peopleService.deletePeople(id);
		addMessage(redirectAttributes, "删除用户成功");
		return "redirect:"+Global.getAdminPath()+"/prj/people/?repage";
	}

	@RequestMapping(value = {"status"})
	public String getStatus(People people, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<PeopleStatus> page = peopleService.findPeopleStatus(new Page<PeopleStatus>(request, response), people);
		model.addAttribute("page", page);
		return "modules/prj/peopleStatus";
	}

	@RequestMapping(value = {"status/edit"})
	public String editStatus(HttpServletRequest request, HttpServletResponse response,Model model) {
		String id = request.getParameter("id");
		if("".equals(id) || null == id ){
			return "error/500";
		}

		PeopleStatus ps = peopleService.getPeopleStatus(id);
		//----------------------
		//        Date gst = ps.getStartTime();
		//		String tTime;
		//		SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//		tTime = sdformat.format(ps.getStartTime());
		//		Date date = null;
		//		try {
		//			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//			date = sdf.parse(tTime);
		//		}catch(ParseException e){
		//
		//		}
		//		ps.setStartTime(date);
		//-----------------------
		model.addAttribute("peoplestatus", ps);
		return "modules/prj/peopleStatusEdit";
	}

	@RequestMapping(value = {"status/form"})
	public String formStatus(PeopleStatus ps, HttpServletRequest request, HttpServletResponse response,Model model){
		model.addAttribute("peoplestatus", ps);
		return "modules/prj/peopleStatusForm";
	}

	@RequestMapping(value = "status/save")
	public String saveStatus(@RequestParam String id, @RequestParam("pid") String pid,
							 @RequestParam String startTime, @RequestParam String endTime,
							 @RequestParam String status,
							 RedirectAttributes redirectAttributes   ){
		System.out.println(id);
		System.out.println(pid);
		System.out.println(startTime);
		System.out.println(endTime);
		System.out.println(status);

		if(id == "") {  //添加状态
			People p = peopleService.getPeople(pid);
			Date startTime2Date = null;
			Date endTime2Date = null;
			try {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				startTime2Date = sdf.parse(startTime + ":0");
				endTime2Date = sdf.parse(endTime + ":0");
			}catch(ParseException e){
				System.out.println("时间解析出错");
			}
			PeopleStatus ps = new PeopleStatus(p, startTime2Date, endTime2Date, status);
			peopleService.savePeopleStatus(ps);
		}
		else{  //修改状态
			PeopleStatus ps = peopleService.getPeopleStatus(id);
			ps.setStatus(status);
			peopleService.savePeopleStatus(ps);
		}

		addMessage(redirectAttributes, "保存状态" + "成功");
		return "redirect:"+Global.getAdminPath()+"/prj/people/status?id=" + pid;
	}

	@RequestMapping(value = "status/delete")
	public String deleteStatus(String id, String pid, RedirectAttributes redirectAttributes) {
		peopleService.deletePeopleStatus(id);
		addMessage(redirectAttributes, "删除状态成功");
		return "redirect:"+Global.getAdminPath()+"/prj/people/status?id=" + pid;
	}

//
//	@ResponseBody
//	@RequiresPermissions("sys:user:edit")
//	@RequestMapping(value = "checkLoginName")
//	public String checkLoginName(String oldLoginName, String loginName) {
//		//新的名字等于旧的名字 允许修改
//		if (loginName !=null && loginName.equals(oldLoginName)) {
//			return "true";
//		//新的名字数据库里不存在 允许修改
//		} else if (loginName !=null && systemService.getUserByLoginName(loginName) == null) {
//			return "true";
//		}
//		return "false";
//	}
//

//
//	@RequiresPermissions("sys:user:view")
//    @RequestMapping(value = "export", method=RequestMethod.POST)
//    public String exportFile(User user, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
//		try {
//            String fileName = "用户数据"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
//            //如果传递 -1 则为不分页，返回所有数据
//    		Page<User> page = systemService.findUser(new Page<User>(request, response, -1), user);
//    		new ExportExcel("用户数据", User.class).setDataList(page.getList()).write(response, fileName).dispose();
//    		return null;
//		} catch (Exception e) {
//			addMessage(redirectAttributes, "导出用户失败！失败信息："+e.getMessage());
//		}
//		return "redirect:"+Global.getAdminPath()+"/sys/user/?repage";
//    }
//
//	@RequiresPermissions("sys:user:edit")
//    @RequestMapping(value = "import", method=RequestMethod.POST)
//    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes) {
//		if(Global.isDemoMode()){
//			addMessage(redirectAttributes, "演示模式，不允许操作！");
//			return "redirect:"+Global.getAdminPath()+"/sys/user/?repage";
//		}
//		try {
//			int successNum = 0;
//			int failureNum = 0;
//			StringBuilder failureMsg = new StringBuilder();
//			ImportExcel ei = new ImportExcel(file, 1, 0);
//			List<User> list = ei.getDataList(User.class);
//			for (User user : list){
//				try{
//					if ("true".equals(checkLoginName("", user.getLoginName()))){
//						user.setPassword(SystemService.entryptPassword("123456"));
//						BeanValidators.validateWithException(validator, user);
//						systemService.saveUser(user);
//						successNum++;
//					}else{
//						failureMsg.append("<br/>登录名 "+user.getLoginName()+" 已存在; ");
//						failureNum++;
//					}
//				}catch(ConstraintViolationException ex){
//					failureMsg.append("<br/>登录名 "+user.getLoginName()+" 导入失败：");
//					List<String> messageList = BeanValidators.extractPropertyAndMessageAsList(ex, ": ");
//					for (String message : messageList){
//						failureMsg.append(message+"; ");
//						failureNum++;
//					}
//				}catch (Exception ex) {
//					failureMsg.append("<br/>登录名 "+user.getLoginName()+" 导入失败："+ex.getMessage());
//				}
//			}
//			if (failureNum>0){
//				failureMsg.insert(0, "，失败 "+failureNum+" 条用户，导入信息如下：");
//			}
//			addMessage(redirectAttributes, "已成功导入 "+successNum+" 条用户信息，默认初始密码为123456"+failureMsg);
//		} catch (Exception e) {
//			addMessage(redirectAttributes, "导入用户失败！失败信息："+e.getMessage());
//		}
//		return "redirect:"+Global.getAdminPath()+"/sys/user/?repage";
//    }
//
//	@RequiresPermissions("sys:user:view")
//    @RequestMapping(value = "import/template")
//    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
//		try {
//            String fileName = "用户数据导入模板.xlsx";
//    		List<User> list = Lists.newArrayList();
//    		list.add(UserUtils.getUser());
//    		new ExportExcel("用户数据", User.class, 2).setDataList(list).write(response, fileName).dispose();
//    		return null;
//		} catch (Exception e) {
//			addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
//		}
//		return "redirect:"+Global.getAdminPath()+"/sys/user/?repage";
//    }
//
//	@RequiresUser
//	@RequestMapping(value = "info")
//	public String info(User user, Model model) {
//		User currentUser = UserUtils.getUser();
//		//根据user的name判断是否为更新或者展示
//		if (StringUtils.isNotBlank(user.getName())){
//			if(Global.isDemoMode()){
//				model.addAttribute("message", "演示模式，不允许操作！");
//				return "modules/sys/userInfo";
//			}
//			//清除缓存中的user信息在获取新的保存到缓存中
//			currentUser = UserUtils.getUser(true);
//			currentUser.setEmail(user.getEmail());
//			currentUser.setPhone(user.getPhone());
//			currentUser.setMobile(user.getMobile());
//			currentUser.setRemarks(user.getRemarks());
//			systemService.saveUser(currentUser);
//			model.addAttribute("message", "保存用户信息成功");
//		}
//		model.addAttribute("user", currentUser);
//		return "modules/sys/userInfo";
//	}
//
//	@RequiresUser
//	@RequestMapping(value = "modifyPwd")
//	public String modifyPwd(String oldPassword, String newPassword, Model model) {
//		User user = UserUtils.getUser();
//		if (StringUtils.isNotBlank(oldPassword) && StringUtils.isNotBlank(newPassword)){
//			if(Global.isDemoMode()){
//				model.addAttribute("message", "演示模式，不允许操作！");
//				return "modules/sys/userModifyPwd";
//			}
//			if (SystemService.validatePassword(oldPassword, user.getPassword())){
//				systemService.updatePasswordById(user.getId(), user.getLoginName(), newPassword);
//				model.addAttribute("message", "修改密码成功");
//			}else{
//				model.addAttribute("message", "修改密码失败，旧密码错误");
//			}
//		}
//		model.addAttribute("user", user);
//		return "modules/sys/userModifyPwd";
//	}

}
