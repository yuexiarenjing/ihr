package com.thinkgem.jeesite.modules.prj.entity;

import com.google.common.collect.Lists;
import com.thinkgem.jeesite.common.persistence.IdEntity;
import com.thinkgem.jeesite.common.utils.excel.annotation.ExcelField;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.List;

/**
 * 设备Entity
 * @author ThinkGem
 * @version 2013-5-15
 */
@Entity
@Table(name = "sys_device")
@DynamicInsert @DynamicUpdate
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Device extends IdEntity<Device> {

	private static final long serialVersionUID = 1L;
	private String name;	// 名称
	private String dtype;	// 类型
	private String location;	// 位置
	private List<DeviceStatus> statusList = Lists.newArrayList(); // 状态列表

	public Device() {
		super();
	}

	public String getDtype() {
		return dtype;
	}

	public void setDtype(String dtype) {
		this.dtype = dtype;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Device(String id) {

		this();
		this.id = id;
	}

	@Length(min=1, max=100)
	@ExcelField(title="姓名", align=2, sort=40)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Transient
	@ExcelField(title="备注", align=1, sort=900)
	public String getRemarks() {
		return remarks;
	}

//	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
//	@ExcelField(title="最后登录日期", type=1, align=2, sort=110)
//	public Date getLoginDate() {
//		return loginDate;
//	}
//
//	public void setLoginDate(Date loginDate) {
//		this.loginDate = loginDate;
//	}

//	@ManyToMany(fetch = FetchType.EAGER)
//	@JoinTable(name = "sys_device_status", joinColumns = { @JoinColumn(name = "user_id") }, inverseJoinColumns = { @JoinColumn(name = "role_id") })
//	@Where(clause="del_flag='"+DEL_FLAG_NORMAL+"'")
//	@OrderBy("id") @Fetch(FetchMode.SUBSELECT)
//	@NotFound(action = NotFoundAction.IGNORE)
//	@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
//	@JsonIgnore
//	@ExcelField(title="拥有状态", align=1, sort=800, fieldType=RoleListType.class)
	////OneToMany指定了一对多的关系，mappedBy="pid"指定了由多的那一方来维护关联关系，mappedBy指的是多的一方对1的这一方的依赖的属性是pid
	@OneToMany(mappedBy = "device")
	public List<DeviceStatus> getStatusList() {
		return statusList;
	}

	public void setStatusList(List<DeviceStatus> statusList) {
		this.statusList = statusList;
	}
//
//	public void setRoleList(List<Role> roleList) {
//		this.roleList = roleList;
//	}
//
//	@Transient
//	@JsonIgnore
//	public List<String> getRoleIdList() {
//		List<String> roleIdList = Lists.newArrayList();
//		for (Role role : roleList) {
//			roleIdList.add(role.getId());
//		}
//		return roleIdList;
//	}


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
