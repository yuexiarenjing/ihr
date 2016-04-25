package com.thinkgem.jeesite.modules.prj.entity;

import com.thinkgem.jeesite.common.persistence.IdEntity;
import org.hibernate.annotations.*;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * 样件状态Entity
 * @author ThinkGem
 * @version 2013-5-15
 */
@Entity
@Table(name = "sys_sample_status")
@DynamicInsert @DynamicUpdate
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class SampleStatus extends IdEntity<SampleStatus> {

	private static final long serialVersionUID = 1L;
//	private String pid;	      // 对应的设备编号
    private Sample sample;	  // 对应的样件
	private Date startTime;   // 起始时间
	private Date endTime;     // 结束时间
	private String status;    // 样件状态

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	@ManyToOne
	@JoinColumn(name = "sid",referencedColumnName="id")
	@NotFound(action = NotFoundAction.IGNORE)
	@NotNull
	public Sample getSample() {
		return sample;
	}

	public void setSample(Sample sample) {
		this.sample = sample;
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

	public SampleStatus() {
		super();
	}

	public SampleStatus(Sample sample, Date startTime, Date endTime, String status){
		super();
		this.sample = sample;
		this.startTime = startTime;
		this.endTime = endTime;
		this.status = status;
	}

	public SampleStatus(String id) {
		this();
		this.id = id;
	}






	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
