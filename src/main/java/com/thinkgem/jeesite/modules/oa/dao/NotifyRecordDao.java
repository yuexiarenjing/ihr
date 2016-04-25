/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.oa.dao;

import com.thinkgem.jeesite.common.persistence.BaseDao;
import com.thinkgem.jeesite.modules.oa.entity.Notify;
import com.thinkgem.jeesite.modules.oa.entity.NotifyRecord;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 通知通告记录DAO
 * @author ThinkGem
 * @version 2014-05-16
 */
@Repository
public class NotifyRecordDao extends BaseDao<NotifyRecord> {

	/**
	 * 插入通知记录
	 * @param notifyRecordList
	 * @return
	 */
	public int insertAll(List<NotifyRecord> notifyRecordList){
		return 0;
	}
	
	/**
	 * 根据通知ID删除通知记录
	 * @param oaNotifyId 通知ID
	 * @return
	 */
	public int deleteByOaNotifyId(String oaNotifyId){
		return 0;
	}
	
}