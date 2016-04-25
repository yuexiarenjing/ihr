package com.thinkgem.jeesite.modules.prj.entity;

import com.thinkgem.jeesite.common.persistence.IdEntity;
import org.hibernate.annotations.*;
import org.hibernate.annotations.Cache;

import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * 用户Entity
 * @author ThinkGem
 * @version 2013-5-15
 */
@Entity
@Table(name = "sys_people_status")
@DynamicInsert @DynamicUpdate
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class PeopleStatus extends IdEntity<PeopleStatus> {

	private static final long serialVersionUID = 1L;
//	private String pid;	      // 对应的人员编号
    private People people;	      // 对应的人员编号
	private Date startTime;   // 起始时间
	private Date endTime;     // 结束时间
	private String status;    // 人员状态

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	@ManyToOne
	@JoinColumn(name = "pid",referencedColumnName="id")
	@NotFound(action = NotFoundAction.IGNORE)
	@NotNull
	public People getPeople() {
		return people;
	}

	public void setPeople(People people) {
		this.people = people;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public PeopleStatus() {
		super();
	}

	public PeopleStatus( People people, Date startTime, Date endTime, String status){
		super();
		this.people = people;
		this.startTime = startTime;
		this.endTime = endTime;
		this.status = status;
	}

	public PeopleStatus(String id) {
		this();
		this.id = id;
	}






	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
