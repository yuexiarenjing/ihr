/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.oa.entity;

import com.thinkgem.jeesite.common.persistence.DataEntity;
import com.thinkgem.jeesite.common.persistence.IdEntity;
import com.thinkgem.jeesite.modules.sys.entity.User;
import org.hibernate.validator.constraints.Length;

import java.util.Date;

/**
 * 通知通告记录Entity
 * @author ThinkGem
 * @version 2014-05-16
 */
public class NotifyRecord extends IdEntity<NotifyRecord> {
	
	private static final long serialVersionUID = 1L;
	private Notify notify;		// 通知通告
	private User user;		// 接受人
	private String readFlag;		// 阅读标记（0：未读；1：已读）
	private Date readDate;		// 阅读时间
	
	
	public NotifyRecord() {
		super();
	}

	public NotifyRecord(String id){
		this();
		this.id = id;
	}
	
	public NotifyRecord(Notify notify){
		this.notify = notify;
	}

	public Notify getNotify() {
		return notify;
	}

	public void setNotify(Notify notify) {
		this.notify = notify;
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	@Length(min=0, max=1, message="阅读标记（0：未读；1：已读）长度必须介于 0 和 1 之间")
	public String getReadFlag() {
		return readFlag;
	}

	public void setReadFlag(String readFlag) {
		this.readFlag = readFlag;
	}
	
	public Date getReadDate() {
		return readDate;
	}

	public void setReadDate(Date readDate) {
		this.readDate = readDate;
	}
	
}