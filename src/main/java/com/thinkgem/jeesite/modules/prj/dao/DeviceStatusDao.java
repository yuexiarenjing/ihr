package com.thinkgem.jeesite.modules.prj.dao;

import com.thinkgem.jeesite.common.persistence.BaseDao;
import com.thinkgem.jeesite.modules.prj.entity.DeviceStatus;
import org.springframework.stereotype.Repository;

/**
 * 人员状态DAO接口
 * @author ThinkGem
 */
@Repository
public class DeviceStatusDao extends BaseDao<DeviceStatus>  {

//	public List<People> findAllList() {
//		return find("from People where delFlag=:p1 order by id", new Parameter(People.DEL_FLAG_NORMAL));
//	}
	
}
