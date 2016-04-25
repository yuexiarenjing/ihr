/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.oa.service;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.BaseService;
import com.thinkgem.jeesite.modules.oa.dao.NotifyDao;
import com.thinkgem.jeesite.modules.oa.dao.NotifyRecordDao;
import com.thinkgem.jeesite.modules.oa.entity.Notify;
import com.thinkgem.jeesite.modules.oa.entity.NotifyRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * 通知通告Service
 * @author ThinkGem
 * @version 2014-05-16
 */
@Service
@Transactional(readOnly = true)
public class NotifyService extends BaseService {

	@Autowired
	private NotifyDao notifyDao;

	@Autowired
	private NotifyRecordDao notifyRecordDao;

	public Notify get(String id) {
		Notify entity = notifyDao.get(id);
		return entity;
	}
	
	/**
	 * 获取通知发送记录
	 * @param notify
	 * @return
	 */
	public Notify getRecordList(Notify notify) {
		notify.setNotifyRecordList(notifyRecordDao.findList(new NotifyRecord(notify)));
		return notify;
	}
	
	public Page<Notify> find(Page<Notify> page, Notify notify) {
		notify.setPage(page);
		page.setList(notifyRecordDao.findList(notify));
		return page;
	}
	
	/**
	 * 获取通知数目
	 * @param notify
	 * @return
	 */
	public Long findCount(Notify notify) {
		return notifyRecordDao.findCount(notify);
	}
	
	@Transactional(readOnly = false)
	public void save(Notify notify) {
		super.save(notify);
		
		// 更新发送接受人记录
		notifyRecordDao.deleteByNotifyId(notify.getId());
		if (notify.getNotifyRecordList().size() > 0){
			notifyRecordDao.insertAll(notify.getNotifyRecordList());
		}
	}
	
	/**
	 * 更新阅读状态
	 */
	@Transactional(readOnly = false)
	public void updateReadFlag(Notify notify) {
		NotifyRecord notifyRecord = new NotifyRecord(notify);
		notifyRecord.setUser(notifyRecord.getCurrentUser());
		notifyRecord.setReadDate(new Date());
		notifyRecord.setReadFlag("1");
		notifyRecordDao.update(notifyRecord);
	}
}