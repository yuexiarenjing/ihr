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
 * 设备状态Entity
 * @author ThinkGem
 * @version 2013-5-15
 */
@Entity
@Table(name = "sys_device_status")
@DynamicInsert @DynamicUpdate
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class DeviceStatus extends IdEntity<DeviceStatus> {

	private static final long serialVersionUID = 1L;
//	private String pid;	      // 对应的设备编号
    private Device device;	  // 对应的设备
	private Date startTime;   // 起始时间
	private Date endTime;     // 结束时间
	private String status;    // 设备状态

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	@ManyToOne
	@JoinColumn(name = "did",referencedColumnName="id")
	@NotFound(action = NotFoundAction.IGNORE)
	@NotNull
	public Device getDevice() {
		return device;
	}

	public void setDevice(Device device) {
		this.device = device;
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

	public DeviceStatus() {
		super();
	}

	public DeviceStatus(Device device, Date startTime, Date endTime, String status){
		super();
		this.device = device;
		this.startTime = startTime;
		this.endTime = endTime;
		this.status = status;
	}

	public DeviceStatus(String id) {
		this();
		this.id = id;
	}






	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
