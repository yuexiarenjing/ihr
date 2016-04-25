package com.thinkgem.jeesite.modules.prj.web;

import com.alibaba.fastjson.JSONObject;
import com.google.zxing.*;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.*;
import com.google.zxing.WriterException;
import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.prj.entity.Sample;
import com.thinkgem.jeesite.modules.prj.entity.SampleStatus;
import com.thinkgem.jeesite.modules.prj.service.SampleService;
import com.thinkgem.jeesite.modules.prj.utils.QRcodeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 设备Controller
 * @author ThinkGem
 */
@Controller
@RequestMapping(value = "${adminPath}/prj/sample")
public class SampleController extends BaseController{

	@Autowired
	private SampleService sampleService;

	@ModelAttribute
	public Sample get(@RequestParam(required=false) String id) {
		if (StringUtils.isNotBlank(id)){
			return sampleService.getSample(id);
		}else{
			return new Sample();
		}
	}

//	@RequiresPermissions("sys:user:view")
	@RequestMapping(value = {"list", ""})
	public String list(Sample sample, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<Sample> page = sampleService.findSample(new Page<Sample>(request, response), sample);
        model.addAttribute("page", page);
		return "modules/prj/sampleList";
	}

	@RequestMapping(value = {"printQRcode"})
	public String printQRcode(Sample sample, RedirectAttributes redirectAttributes)  {
		JSONObject json = new JSONObject();
		json.put("样件ID",sample.getId());
		json.put("样件名称",sample.getName());
		json.put("样件类型",sample.getStype());
		String content = json.toJSONString();// 内容
		boolean printOK = QRcodeUtils.printQRcode(content) == "success";
		addMessage(redirectAttributes, "样件: " + sample.getName() + "二维码打印" + (printOK?"成功":"失败!"));
		return "redirect:" + Global.getAdminPath() + "/prj/sample/?repage";
	}

	//	@RequiresPermissions("sys:user:view")
	@RequestMapping(value = {"form", "edit"})
	public String form(Sample sample, HttpServletRequest request, HttpServletResponse response,Model model) {
		model.addAttribute("sample", sample);
		return "modules/prj/sampleForm";
	}

	//	@RequiresPermissions("sys:user:edit")
	@RequestMapping(value = "save")
	public String save(Sample sample, RedirectAttributes redirectAttributes) {
		// 保存设备信息
		sampleService.saveSample(sample);
		addMessage(redirectAttributes, "保存设备'" + sample.getName() + "'成功");
		return "redirect:"+Global.getAdminPath()+"/prj/sample/?repage";
	}
	//
//	@RequiresPermissions("sys:user:edit")
	@RequestMapping(value = "delete")
	public String delete(String id, RedirectAttributes redirectAttributes) {
		sampleService.deleteSample(id);
		addMessage(redirectAttributes, "删除设备成功");
		return "redirect:"+Global.getAdminPath()+"/prj/sample/?repage";
	}

	@RequestMapping(value = {"status"})
	public String getStatus(Sample sample, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<SampleStatus> page = sampleService.findSampleStatus(new Page<SampleStatus>(request, response), sample);
		model.addAttribute("page", page);
		return "modules/prj/sampleStatus";
	}

	@RequestMapping(value = {"status/edit"})
	public String editStatus(HttpServletRequest request, HttpServletResponse response,Model model) {
		String id = request.getParameter("id");
		if("".equals(id) || null == id ){
			return "error/500";
		}

		SampleStatus ps = sampleService.getSampleStatus(id);
		model.addAttribute("samplestatus", ps);
		return "modules/prj/sampleStatusEdit";
	}

	@RequestMapping(value = {"status/form"})
	public String formStatus(SampleStatus ps, HttpServletRequest request, HttpServletResponse response,Model model){
		model.addAttribute("samplestatus", ps);
		return "modules/prj/sampleStatusForm";
	}

	@RequestMapping(value = "status/save")
	public String saveStatus(@RequestParam String id, @RequestParam("sid") String sid,
							 @RequestParam String startTime, @RequestParam String endTime,
							 @RequestParam String status,
							 RedirectAttributes redirectAttributes   ){

		if(id == "") {  //添加状态
			Sample p = sampleService.getSample(sid);
			Date startTime2Date = null;
			Date endTime2Date = null;
			try {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				startTime2Date = sdf.parse(startTime + ":0");
				endTime2Date = sdf.parse(endTime + ":0");
			}catch(ParseException e){
				System.out.println("时间解析出错");
			}
			SampleStatus ps = new SampleStatus(p, startTime2Date, endTime2Date, status);
			sampleService.saveSampleStatus(ps);
		}
		else{  //修改状态
			SampleStatus ps = sampleService.getSampleStatus(id);
			ps.setStatus(status);
			sampleService.saveSampleStatus(ps);
		}

		addMessage(redirectAttributes, "保存状态" + "成功");
		return "redirect:"+Global.getAdminPath()+"/prj/sample/status?id=" + sid;
	}

	@RequestMapping(value = "status/delete")
	public String deleteStatus(String id, String sid, RedirectAttributes redirectAttributes) {
		sampleService.deleteSampleStatus(id);
		addMessage(redirectAttributes, "删除状态成功");
		return "redirect:"+Global.getAdminPath()+"/prj/people/status?id=" + sid;
	}

}
