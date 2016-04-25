/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.oa.web;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.oa.entity.Notify;
import com.thinkgem.jeesite.modules.oa.service.NotifyService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 通知通告Controller
 * @author ThinkGem
 * @version 2014-05-16
 */
@Controller
@RequestMapping(value = "${adminPath}/oa/notify")
public class NotifyController extends BaseController {

	@Autowired
	private NotifyService notifyService;
	
	@ModelAttribute
	public Notify get(@RequestParam(required=false) String id) {
		Notify entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = notifyService.get(id);
		}
		if (entity == null){
			entity = new Notify();
		}
		return entity;
	}
	
	@RequiresPermissions("oa:notify:view")
	@RequestMapping(value = {"list", ""})
	public String list(Notify notify, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Notify> page = notifyService.find(new Page<Notify>(request, response), notify);
		model.addAttribute("page", page);
		return "modules/oa/notifyList";
	}

	@RequiresPermissions("oa:notify:view")
	@RequestMapping(value = "form")
	public String form(Notify notify, Model model) {
		if (StringUtils.isNotBlank(notify.getId())){
			notify = notifyService.getRecordList(notify);
		}
		model.addAttribute("notify", notify);
		return "modules/oa/notifyForm";
	}

	@RequiresPermissions("oa:notify:edit")
	@RequestMapping(value = "save")
	public String save(Notify notify, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, notify)){
			return form(notify, model);
		}
		// 如果是修改，则状态为已发布，则不能再进行操作
		if (StringUtils.isNotBlank(notify.getId())){
			Notify e = notifyService.get(notify.getId());
			if ("1".equals(e.getStatus())){
				addMessage(redirectAttributes, "已发布，不能操作！");
				return "redirect:" + Global.getAdminPath() + "/oa/notify/form?id="+notify.getId();
			}
		}
		notifyService.save(notify);
		addMessage(redirectAttributes, "保存通知'" + notify.getTitle() + "'成功");
		return "redirect:" + Global.getAdminPath() + "/oa/notify/?repage";
	}
	
	@RequiresPermissions("oa:notify:edit")
	@RequestMapping(value = "delete")
	public String delete(Notify notify, RedirectAttributes redirectAttributes) {
		notifyService.delete(notify);
		addMessage(redirectAttributes, "删除通知成功");
		return "redirect:" + Global.getAdminPath() + "/oa/notify/?repage";
	}
	
	/**
	 * 我的通知列表
	 */
	@RequestMapping(value = "self")
	public String selfList(Notify notify, HttpServletRequest request, HttpServletResponse response, Model model) {
		notify.setSelf(true);
		Page<Notify> page = notifyService.find(new Page<Notify>(request, response), notify);
		model.addAttribute("page", page);
		return "modules/oa/notifyList";
	}

	/**
	 * 我的通知列表-数据
	 */
	@RequiresPermissions("oa:notify:view")
	@RequestMapping(value = "selfData")
	@ResponseBody
	public Page<Notify> listData(Notify notify, HttpServletRequest request, HttpServletResponse response, Model model) {
		notify.setSelf(true);
		Page<Notify> page = notifyService.find(new Page<Notify>(request, response), notify);
		return page;
	}
	
	/**
	 * 查看我的通知
	 */
	@RequestMapping(value = "view")
	public String view(Notify notify, Model model) {
		if (StringUtils.isNotBlank(notify.getId())){
			notifyService.updateReadFlag(notify);
			notify = notifyService.getRecordList(notify);
			model.addAttribute("notify", notify);
			return "modules/oa/notifyForm";
		}
		return "redirect:" + Global.getAdminPath() + "/oa/notify/self?repage";
	}

	/**
	 * 查看我的通知-数据
	 */
	@RequestMapping(value = "viewData")
	@ResponseBody
	public Notify viewData(Notify notify, Model model) {
		if (StringUtils.isNotBlank(notify.getId())){
			notifyService.updateReadFlag(notify);
			return notify;
		}
		return null;
	}
	
	/**
	 * 查看我的通知-发送记录
	 */
	@RequestMapping(value = "viewRecordData")
	@ResponseBody
	public Notify viewRecordData(Notify notify, Model model) {
		if (StringUtils.isNotBlank(notify.getId())){
			notify = notifyService.getRecordList(notify);
			return notify;
		}
		return null;
	}
	
	/**
	 * 获取我的通知数目
	 */
	@RequestMapping(value = "self/count")
	@ResponseBody
	public String selfCount(Notify notify, Model model) {
		notify.setSelf(true);
		notify.setReadFlag("0");
		return String.valueOf(notifyService.findCount(notify));
	}
}