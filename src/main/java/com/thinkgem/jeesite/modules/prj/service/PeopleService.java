package com.thinkgem.jeesite.modules.prj.service;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.BaseService;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.prj.dao.PeopleDao;
import com.thinkgem.jeesite.modules.prj.dao.PeopleStatusDao;
import com.thinkgem.jeesite.modules.prj.entity.People;
import com.thinkgem.jeesite.modules.prj.entity.PeopleStatus;
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
public class PeopleService extends BaseService {

	@Autowired
	private PeopleDao peopleDao;

	@Autowired
	private PeopleStatusDao peopleStatusDao;

	@Transactional(readOnly = false)
	public List<People> findAll(){
		return peopleDao.findAllList();
	}

	@Transactional(readOnly = false)
	public People getPeople(String id) {
		return peopleDao.get(id);
	}

	@Transactional(readOnly = false)
	public PeopleStatus getPeopleStatus(String id) {
		return peopleStatusDao.get(id);
	}

	@Transactional(readOnly = false)
	public void savePeopleStatus(PeopleStatus ps) {
		peopleStatusDao.save(ps);
	}

	@Transactional(readOnly = false)
	public Page<People> findPeople(Page<People> page, People people) {
		DetachedCriteria dc = peopleDao.createDetachedCriteria();
		dc.add(Restrictions.eq(People.FIELD_DEL_FLAG, People.DEL_FLAG_NORMAL));

		if (StringUtils.isNotEmpty(people.getId())){
			dc.add(Restrictions.idEq(people.getId()));
		}

		if (StringUtils.isNotEmpty(people.getName())){
			dc.add(Restrictions.like("name", "%" + people.getName()+"%"));
		}
		dc.addOrder(Order.asc("name"));
		return peopleDao.find(page, dc);



		/*Page<People> resultPage = peopleDao.find(page, dc);
		List<People> list = resultPage.getList();

		Date preStartTime = null, preEndTime = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			Date currentTime = sdf.parse(DateUtils.getDateTime());
			for( People entry : list ){
				List<PeopleStatus> lps = entry.getStatusList();

				for(int i = 0; i < lps.size(); i++){
					PeopleStatus ps = lps.get(i);
					Date startTime = ps.getStartTime();
					Date endTime = ps.getEndTime();

					if( preStartTime != null && preEndTime!= null){
						if(startTime.after(preEndTime)){
							PeopleStatus pz= new PeopleStatus();
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
	public Page<PeopleStatus> findPeopleStatus(Page<PeopleStatus> page, People people) {
		DetachedCriteria dc = peopleStatusDao.createDetachedCriteria();
		dc.add(Restrictions.eq(People.FIELD_DEL_FLAG, People.DEL_FLAG_NORMAL));

		if (StringUtils.isNotEmpty(people.getId())){
			dc.add(Restrictions.eq("people.id", people.getId()));
		}
		dc.addOrder(Order.asc("startTime"));
		return peopleStatusDao.find(page, dc);
	}

	@Transactional(readOnly = false)
	public void savePeople(People people) {
		peopleDao.save(people);
	}

	@Transactional(readOnly = false)
	public void deletePeople(String id) {
		peopleDao.deleteById(id);
	}

	@Transactional(readOnly = false)
	public void deletePeopleStatus(String id) {
		peopleStatusDao.deleteById(id);
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
