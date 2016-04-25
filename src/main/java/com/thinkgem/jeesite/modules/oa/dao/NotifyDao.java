/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.oa.dao;

import com.thinkgem.jeesite.common.persistence.BaseDao;
import com.thinkgem.jeesite.modules.oa.entity.Notify;
import com.thinkgem.jeesite.modules.prj.entity.Device;
import org.springframework.stereotype.Repository;

/**
 * 通知通告DAO
 * @author ThinkGem
 * @version 2014-05-16
 */
@Repository
public class NotifyDao extends BaseDao<Notify> {
	
	/**
	 * 获取通知数目
	 * @param notify
	 * @return
	 */
	public Long findCount(Notify notify){
		return 0l;
	}
	
}