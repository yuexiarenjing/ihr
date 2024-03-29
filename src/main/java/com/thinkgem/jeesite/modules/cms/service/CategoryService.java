package com.thinkgem.jeesite.modules.cms.service;

import java.util.List;
import java.util.Set;

import org.apache.commons.lang3.StringEscapeUtils;
import org.apache.commons.lang3.StringUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.BaseService;
import com.thinkgem.jeesite.modules.cms.dao.CategoryDao;
import com.thinkgem.jeesite.modules.cms.entity.Category;
import com.thinkgem.jeesite.modules.cms.entity.Site;
import com.thinkgem.jeesite.modules.cms.utils.CmsUtils;
import com.thinkgem.jeesite.modules.sys.entity.User;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;

/**
 * 栏目Service
 * @author ThinkGem
 */
@Service
@Transactional(readOnly = true)
public class CategoryService extends BaseService  {

	public static final String CACHE_CATEGORY_LIST = "categoryList";
	
	@Autowired
	private CategoryDao categoryDao;
	
	public Category get(String id) {
		return categoryDao.get(id);
	}
	
	@SuppressWarnings("unchecked")
	public List<Category> findByUser(boolean isCurrentSite, String module){
		
		List<Category> list = (List<Category>)UserUtils.getCache(CACHE_CATEGORY_LIST);
		if (list == null){
			User user = UserUtils.getUser();

			//Criteria 查询采用面向对象方式封装查询条件，又称为对象查询；
			//就是对SQL 语句进行封装，采用对象的方式来组合各种查询条件
			//由Hibernate 自动产生SQL 查询语句
			DetachedCriteria dc = categoryDao.createDetachedCriteria();   //将查询条件封装为对象
			dc.add(Restrictions.eq("delFlag", Category.DEL_FLAG_NORMAL)); //加入具体查询条件
			dc.addOrder(Order.asc("site.id")).addOrder(Order.asc("sort"));
			
			list = categoryDao.find(dc);   //执行查询操作
			
			// 将没有父节点的节点，找到父节点   //作用就是验证下父节点是否在节点集合内，先注释掉
//			Set<String> parentIdSet = Sets.newHashSet();
//			for (Category e : list){
//				if (e.getParent()!=null && StringUtils.isNotBlank(e.getParent().getId())){
//					boolean isExistParent = false;
//					for (Category e2 : list){
//						if (e.getParent().getId().equals(e2.getId())){
//							isExistParent = true;
//							break;
//						}
//					}
//					if (!isExistParent){
//						parentIdSet.add(e.getParent().getId());
//					}
//				}
//			}
//			if (parentIdSet.size() > 0){
//				dc = categoryDao.createDetachedCriteria();
//				dc.add(Restrictions.in("id", parentIdSet));
//				dc.add(Restrictions.eq("delFlag", Category.DEL_FLAG_NORMAL));
//				dc.addOrder(Order.asc("site.id")).addOrder(Order.asc("sort"));
//				list.addAll(0, categoryDao.find(dc));
//			}
			UserUtils.putCache(CACHE_CATEGORY_LIST, list);
		}

		//not important，注释掉
//		if (isCurrentSite){
//			List<Category> categoryList = Lists.newArrayList();
//			for (Category e : list){
//				if (Category.isRoot(e.getId()) || (e.getSite()!=null && e.getSite().getId() !=null
//						&& e.getSite().getId().equals(Site.getCurrentSiteId()))){
//					if (StringUtils.isNotEmpty(module)){
//						if (module.equals(e.getModule()) || "".equals(e.getModule())){
//							categoryList.add(e);
//						}
//					}else{
//						categoryList.add(e);
//					}
//				}
//			}
//			return categoryList;
//		}
		return list;
	}
	
	public List<Category> findByParentId(String parentId, String siteId){
		return categoryDao.findByParentIdAndSiteId(parentId, siteId);
	}
	
	public Page<Category> find(Page<Category> page, Category category) {
		DetachedCriteria dc = categoryDao.createDetachedCriteria();
		if (category.getSite()!=null && StringUtils.isNotBlank(category.getSite().getId())){
			dc.createAlias("site", "site");
			dc.add(Restrictions.eq("site.id", category.getSite().getId()));
		}
		if (category.getParent()!=null && StringUtils.isNotBlank(category.getParent().getId())){
			dc.createAlias("parent", "parent");
			dc.add(Restrictions.eq("parent.id", category.getParent().getId()));
		}
		if (StringUtils.isNotBlank(category.getInMenu()) && Category.SHOW.equals(category.getInMenu())){
			dc.add(Restrictions.eq("inMenu", category.getInMenu()));
		}
		dc.add(Restrictions.eq(Category.FIELD_DEL_FLAG, Category.DEL_FLAG_NORMAL));
		dc.addOrder(Order.asc("site.id")).addOrder(Order.asc("sort"));
		return categoryDao.find(page, dc);
	}
	
	@Transactional(readOnly = false)
	public void save(Category category) {
		category.setSite(new Site(Site.getCurrentSiteId()));
		category.setParent(this.get(category.getParent().getId()));
		String oldParentIds = category.getParentIds(); // 获取修改前的parentIds，用于更新子节点的parentIds
		category.setParentIds(category.getParent().getParentIds()+category.getParent().getId()+",");
        if (StringUtils.isNotBlank(category.getViewConfig())){
            category.setViewConfig(StringEscapeUtils.unescapeHtml4(category.getViewConfig()));
        }
		categoryDao.clear();
        categoryDao.save(category);
		// 更新子节点 parentIds
		List<Category> list = categoryDao.findByParentIdsLike("%,"+category.getId()+",%");
		for (Category e : list){
			e.setParentIds(e.getParentIds().replace(oldParentIds, category.getParentIds()));
		}
		categoryDao.save(list);
		UserUtils.removeCache(CACHE_CATEGORY_LIST);
		CmsUtils.removeCache("mainNavList_"+category.getSite().getId());
	}
	
	@Transactional(readOnly = false)
	public void delete(String id) {
		Category category = get(id);
		if (category!=null){
			categoryDao.deleteById(id, "%,"+id+",%");
			UserUtils.removeCache(CACHE_CATEGORY_LIST);
			CmsUtils.removeCache("mainNavList_"+category.getSite().getId());
		}
	}
	
	/**
	 * 通过编号获取栏目列表
	 */
	public List<Category> findByIds(String ids) {
		List<Category> list = Lists.newArrayList();
		String[] idss = StringUtils.split(ids,",");
		if (idss.length>0){
			List<Category> l = categoryDao.findByIdIn(idss);
			for (String id : idss){
				for (Category e : l){
					//进行排序
					if (e.getId().equals(id)){
						list.add(e);
						break;
					}
				}
			}
		}
		return list;
	}

}
