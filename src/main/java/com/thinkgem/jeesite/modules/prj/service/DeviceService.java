package com.thinkgem.jeesite.modules.prj.service;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.BaseService;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.prj.dao.DeviceDao;
import com.thinkgem.jeesite.modules.prj.dao.DeviceStatusDao;
import com.thinkgem.jeesite.modules.prj.entity.Device;
import com.thinkgem.jeesite.modules.prj.entity.DeviceStatus;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * peopleService
 * @author ThinkGem
 */
@Service
@Transactional(readOnly = true)
public class DeviceService extends BaseService {

	@Autowired
	private DeviceDao deviceDao;

	@Autowired
	private DeviceStatusDao deviceStatusDao;

	@Transactional(readOnly = false)
	public List<Device> findAll(){
		return deviceDao.findAllList();
	}

	@Transactional(readOnly = false)
	public Device getDevice(String id) {
		return deviceDao.get(id);
	}

	@Transactional(readOnly = false)
	public DeviceStatus getDeviceStatus(String id) {
		return deviceStatusDao.get(id);
	}

	@Transactional(readOnly = false)
	public void saveDeviceStatus(DeviceStatus ps) {
		deviceStatusDao.save(ps);
	}

	@Transactional(readOnly = false)
	public Page<Device> findDevice(Page<Device> page, Device device) {
		DetachedCriteria dc = deviceDao.createDetachedCriteria();
		dc.add(Restrictions.eq(Device.FIELD_DEL_FLAG, Device.DEL_FLAG_NORMAL));

		if (StringUtils.isNotEmpty(device.getId())){
			dc.add(Restrictions.idEq(device.getId()));
		}

		if (StringUtils.isNotEmpty(device.getName())){
			dc.add(Restrictions.like("name", "%" + device.getName()+"%"));
		}
		dc.addOrder(Order.asc("name"));
		return deviceDao.find(page, dc);



		/*Page<Device> resultPage = deviceDao.find(page, dc);
		List<Device> list = resultPage.getList();

		Date preStartTime = null, preEndTime = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			Date currentTime = sdf.parse(DateUtils.getDateTime());
			for( Device entry : list ){
				List<DeviceStatus> lps = entry.getStatusList();

				for(int i = 0; i < lps.size(); i++){
					DeviceStatus ps = lps.get(i);
					Date startTime = ps.getStartTime();
					Date endTime = ps.getEndTime();

					if( preStartTime != null && preEndTime!= null){
						if(startTime.after(preEndTime)){
							DeviceStatus pz= new DeviceStatus();
							pz.setStartTime(preEndTime);
							pz.setEndTime(startTime);
							pz.setStatus("0");
							lps.add(lps.indexOf(ps), pz);
						}
					}
					preStartTime = startTime;
					preEndTime = endTime;
				}
			}
		}catch (ParseException e) {
			e.printStackTrace();
		}

		return resultPage;
		*/
	}

	@Transactional(readOnly = false)
	public Page<DeviceStatus> findDeviceStatus(Page<DeviceStatus> page, Device device) {
		DetachedCriteria dc = deviceStatusDao.createDetachedCriteria();
		dc.add(Restrictions.eq(Device.FIELD_DEL_FLAG, Device.DEL_FLAG_NORMAL));

		if (StringUtils.isNotEmpty(device.getId())){
			dc.add(Restrictions.eq("device.id", device.getId()));
		}
		dc.addOrder(Order.asc("startTime"));
		return deviceStatusDao.find(page, dc);
	}

	@Transactional(readOnly = false)
	public void saveDevice(Device device) {
		deviceDao.save(device);
	}

	@Transactional(readOnly = false)
	public void deleteDevice(String id) {
		deviceDao.deleteById(id);
	}

	@Transactional(readOnly = false)
	public void deleteDeviceStatus(String id) {
		deviceStatusDao.deleteById(id);
	}
	
//	@Transactional(readOnly = false)
//	public void save(Area area) {
//		area.setParent(this.get(area.getParent().getId()));
//		String oldParentIds = area.getParentIds(); // 获取修改前的parentIds，用于更新子节点的parentIds
//		//获取父节点的pids 再加上当前新设置的pid的值
//		area.setParentIds(area.getParent().getParentIds()+area.getParent().getId()+",");
//		//清除缓存
//		areaDao.clear();
//		areaDao.save(area);
//		// 更新子节点 parentIds
//		List<Area> list = areaDao.findByParentIdsLike("%,"+area.getId()+",%");
//		for (Area e : list){
//			//是不是还应该加上Area的id???
//			e.setParentIds(e.getParentIds().replace(oldParentIds, area.getParentIds()));
//		}
//		areaDao.save(list);
//		UserUtils.removeCache(UserUtils.CACHE_AREA_LIST);
//	}
//
//	@Transactional(readOnly = false)
//	public void delete(String id) {
//		areaDao.deleteById(id, "%,"+id+",%");
//		UserUtils.removeCache(UserUtils.CACHE_AREA_LIST);
//	}
	
}
