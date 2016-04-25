package com.thinkgem.jeesite.modules.prj.service;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.BaseService;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.prj.dao.SampleDao;
import com.thinkgem.jeesite.modules.prj.dao.SampleStatusDao;
import com.thinkgem.jeesite.modules.prj.entity.Sample;
import com.thinkgem.jeesite.modules.prj.entity.SampleStatus;
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
public class SampleService extends BaseService {

	@Autowired
	private SampleDao sampleDao;

	@Autowired
	private SampleStatusDao sampleStatusDao;

	@Transactional(readOnly = false)
	public List<Sample> findAll(){
		return sampleDao.findAllList();
	}

	@Transactional(readOnly = false)
	public Sample getSample(String id) {
		return sampleDao.get(id);
	}

	@Transactional(readOnly = false)
	public SampleStatus getSampleStatus(String id) {
		return sampleStatusDao.get(id);
	}

	@Transactional(readOnly = false)
	public void saveSampleStatus(SampleStatus ps) {
		sampleStatusDao.save(ps);
	}

	@Transactional(readOnly = false)
	public Page<Sample> findSample(Page<Sample> page, Sample sample) {
		DetachedCriteria dc = sampleDao.createDetachedCriteria();
		dc.add(Restrictions.eq(Sample.FIELD_DEL_FLAG, Sample.DEL_FLAG_NORMAL));

		if (StringUtils.isNotEmpty(sample.getId())){
			dc.add(Restrictions.idEq(sample.getId()));
		}

		if (StringUtils.isNotEmpty(sample.getName())){
			dc.add(Restrictions.like("name", "%" + sample.getName()+"%"));
		}
		dc.addOrder(Order.asc("name"));
		return sampleDao.find(page, dc);



		/*Page<Sample> resultPage = sampleDao.find(page, dc);
		List<Sample> list = resultPage.getList();

		Date preStartTime = null, preEndTime = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			Date currentTime = sdf.parse(DateUtils.getDateTime());
			for( Sample entry : list ){
				List<SampleStatus> lps = entry.getStatusList();

				for(int i = 0; i < lps.size(); i++){
					SampleStatus ps = lps.get(i);
					Date startTime = ps.getStartTime();
					Date endTime = ps.getEndTime();

					if( preStartTime != null && preEndTime!= null){
						if(startTime.after(preEndTime)){
							SampleStatus pz= new SampleStatus();
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
	public Page<SampleStatus> findSampleStatus(Page<SampleStatus> page, Sample sample) {
		DetachedCriteria dc = sampleStatusDao.createDetachedCriteria();
		dc.add(Restrictions.eq(Sample.FIELD_DEL_FLAG, Sample.DEL_FLAG_NORMAL));

		if (StringUtils.isNotEmpty(sample.getId())){
			dc.add(Restrictions.eq("sample.id", sample.getId()));
		}
		dc.addOrder(Order.asc("startTime"));
		return sampleStatusDao.find(page, dc);
	}

	@Transactional(readOnly = false)
	public void saveSample(Sample sample) {
		sampleDao.save(sample);
	}

	@Transactional(readOnly = false)
	public void deleteSample(String id) {
		sampleDao.deleteById(id);
	}

	@Transactional(readOnly = false)
	public void deleteSampleStatus(String id) {
		sampleStatusDao.deleteById(id);
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
