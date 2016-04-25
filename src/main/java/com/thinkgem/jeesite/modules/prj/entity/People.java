package com.thinkgem.jeesite.modules.prj.entity;

import com.google.common.collect.Lists;
import com.thinkgem.jeesite.common.persistence.IdEntity;
import com.thinkgem.jeesite.common.utils.excel.annotation.ExcelField;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.*;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;

import javax.persistence.Entity;
import javax.persistence.*;
import javax.persistence.Table;
import java.util.List;

/**
 * 用户Entity
 * @author ThinkGem
 * @version 2013-5-15
 */
@Entity
@Table(name = "sys_people")
@DynamicInsert @DynamicUpdate
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class People extends IdEntity<People> {

	private static final long serialVersionUID = 1L;
	private String name;	// 姓名
	private String email;	// 邮箱
	private String phone;	// 电话
	private String mobile;	// 手机
	private List<PeopleStatus> statusList = Lists.newArrayList(); // 状态列表

	public People() {
		super();
	}

	public People(String id) {
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

	@Email @Length(min=0, max=200)
	@ExcelField(title="邮箱", align=1, sort=50)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	@Length(min=0, max=200)
	@ExcelField(title="电话", align=1, sort=60)
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

    @Length(min=0, max=200)
	@ExcelField(title="手机", align=1, sort=70)
	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
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
//	@JoinTable(name = "sys_people_status", joinColumns = { @JoinColumn(name = "user_id") }, inverseJoinColumns = { @JoinColumn(name = "role_id") })
//	@Where(clause="del_flag='"+DEL_FLAG_NORMAL+"'")
//	@OrderBy("id") @Fetch(FetchMode.SUBSELECT)
//	@NotFound(action = NotFoundAction.IGNORE)
//	@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
//	@JsonIgnore
//	@ExcelField(title="拥有状态", align=1, sort=800, fieldType=RoleListType.class)
	////OneToMany指定了一对多的关系，mappedBy="pid"指定了由多的那一方来维护关联关系，mappedBy指的是多的一方对1的这一方的依赖的属性是pid
	@OneToMany(mappedBy = "people")
	public List<PeopleStatus> getStatusList() {
		return statusList;
	}

	public void setStatusList(List<PeopleStatus> statusList) {
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
