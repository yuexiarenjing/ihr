package com.thinkgem.jeesite.modules.sys.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.thinkgem.jeesite.common.persistence.BaseDao;
import com.thinkgem.jeesite.common.persistence.Parameter;
import com.thinkgem.jeesite.modules.sys.entity.Dict;
import com.thinkgem.jeesite.modules.sys.entity.Menu;

/**
 * 菜单DAO接口
 * @author ThinkGem
 */
@Repository
public class MenuDao extends BaseDao<Menu> {

	public List<Menu> findByParentIdsLike(String parentIds){
		return find("from Menu where parentIds like :p1", new Parameter(parentIds));  //HQL语句
	}
	
	public List<Menu> findAllList(){
		return find("from Menu where delFlag=:p1 order by sort", new Parameter(Dict.DEL_FLAG_NORMAL));
	}
	//user -> role -> menu
	public List<Menu> findByUserId(String userId){
		return find("select distinct m from Menu m, Role r, User u where m in elements (r.menuList) and r in elements (u.roleList)" +
				" and m.delFlag=:p1 and r.delFlag=:p1 and u.delFlag=:p1 and u.id=:p2" + 
				" order by m.sort", new Parameter(Menu.DEL_FLAG_NORMAL, userId));
	}
	
}
