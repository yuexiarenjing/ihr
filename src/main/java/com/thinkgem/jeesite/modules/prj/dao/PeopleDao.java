package com.thinkgem.jeesite.modules.prj.dao;

import com.thinkgem.jeesite.common.persistence.BaseDao;
import com.thinkgem.jeesite.common.persistence.Parameter;
import com.thinkgem.jeesite.modules.prj.entity.People;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 人员DAO接口
 * @author ThinkGem
 */
@Repository
public class PeopleDao extends BaseDao<People>  {

	public List<People> findAllList() {
		return find("from People where delFlag=:p1 order by id", new Parameter(People.DEL_FLAG_NORMAL));
	}
	
//	public People findByLoginName(String loginName){
//		return getByHql("from User where loginName = :p1 and delFlag = :p2", new Parameter(loginName, User.DEL_FLAG_NORMAL));
//	}
//
//	public int updatePasswordById(String newPassword, String id){
//		return update("update User set password=:p1 where id = :p2", new Parameter(newPassword, id));
//	}
//
//	public int updateLoginInfo(String loginIp, Date loginDate, String id){
//		return update("update User set loginIp=:p1, loginDate=:p2 where id = :p3", new Parameter(loginIp, loginDate, id));
//	}
	
}
