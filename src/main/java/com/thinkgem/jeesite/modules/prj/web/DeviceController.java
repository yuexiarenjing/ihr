package com.thinkgem.jeesite.modules.prj.web;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.prj.entity.Device;
import com.thinkgem.jeesite.modules.prj.entity.DeviceStatus;
import com.thinkgem.jeesite.modules.prj.service.DeviceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 设备Controller
 * @author ThinkGem
 */
@Controller
@RequestMapping(value = "${adminPath}/prj/device")
public class DeviceController extends BaseController{

	@Autowired
	private DeviceService deviceService;

	@ModelAttribute
	public Device get(@RequestParam(required=false) String id) {
		if (StringUtils.isNotBlank(id)){
			return deviceService.getDevice(id);
		}else{
			return new Device();
		}
	}

//	@RequiresPermissions("sys:user:view")
	@RequestMapping(value = {"list", ""})
	public String list(Device device, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<Device> page = deviceService.findDevice(new Page<Device>(request, response), device);
        model.addAttribute("page", page);
		return "modules/prj/deviceList";
	}

	//	@RequiresPermissions("sys:user:view")
	@RequestMapping(value = {"form", "edit"})
	public String form(Device device, HttpServletRequest request, HttpServletResponse response,Model model) {
		model.addAttribute("device", device);
		return "modules/prj/deviceForm";
	}

	//	@RequiresPermissions("sys:user:edit")
	@RequestMapping(value = "save")
	public String save(Device device, RedirectAttributes redirectAttributes) {
		// 保存设备信息
		deviceService.saveDevice(device);
		addMessage(redirectAttributes, "保存设备'" + device.getName() + "'成功");
		return "redirect:"+Global.getAdminPath()+"/prj/device/?repage";
	}
	//
//	@RequiresPermissions("sys:user:edit")
	@RequestMapping(value = "delete")
	public String delete(String id, RedirectAttributes redirectAttributes) {
		deviceService.deleteDevice(id);
		addMessage(redirectAttributes, "删除设备成功");
		return "redirect:"+Global.getAdminPath()+"/prj/device/?repage";
	}

	@RequestMapping(value = {"status"})
	public String getStatus(Device device, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<DeviceStatus> page = deviceService.findDeviceStatus(new Page<DeviceStatus>(request, response), device);
		model.addAttribute("page", page);
		return "modules/prj/deviceStatus";
	}

	@RequestMapping(value = {"status/edit"})
	public String editStatus(HttpServletRequest request, HttpServletResponse response,Model model) {
		String id = request.getParameter("id");
		if("".equals(id) || null == id ){
			return "error/500";
		}

		DeviceStatus ps = deviceService.getDeviceStatus(id);
		model.addAttribute("devicestatus", ps);
		return "modules/prj/deviceStatusEdit";
	}

	@RequestMapping(value = {"status/form"})
	public String formStatus(DeviceStatus ps, HttpServletRequest request, HttpServletResponse response,Model model){
		model.addAttribute("devicestatus", ps);
		return "modules/prj/deviceStatusForm";
	}

	@RequestMapping(value = "status/save")
	public String saveStatus(@RequestParam String id, @RequestParam("did") String did,
							 @RequestParam String startTime, @RequestParam String endTime,
							 @RequestParam String status,
							 RedirectAttributes redirectAttributes   ){

		if(id == "") {  //添加状态
			Device p = deviceService.getDevice(did);
			Date startTime2Date = null;
			Date endTime2Date = null;
			try {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				startTime2Date = sdf.parse(startTime + ":0");
				endTime2Date = sdf.parse(endTime + ":0");
			}catch(ParseException e){
				System.out.println("时间解析出错");
			}
			DeviceStatus ps = new DeviceStatus(p, startTime2Date, endTime2Date, status);
			deviceService.saveDeviceStatus(ps);
		}
		else{  //修改状态
			DeviceStatus ps = deviceService.getDeviceStatus(id);
			ps.setStatus(status);
			deviceService.saveDeviceStatus(ps);
		}

		addMessage(redirectAttributes, "保存状态" + "成功");
		return "redirect:"+Global.getAdminPath()+"/prj/device/status?id=" + did;
	}

	@RequestMapping(value = "status/delete")
	public String deleteStatus(String id, String did, RedirectAttributes redirectAttributes) {
		deviceService.deleteDeviceStatus(id);
		addMessage(redirectAttributes, "删除状态成功");
		return "redirect:"+Global.getAdminPath()+"/prj/people/status?id=" + did;
	}

}
