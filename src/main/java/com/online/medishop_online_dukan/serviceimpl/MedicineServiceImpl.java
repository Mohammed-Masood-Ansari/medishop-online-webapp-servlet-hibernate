package com.online.medishop_online_dukan.serviceimpl;

import com.online.medishop_online_dukan.dao.MedicineDao;
import com.online.medishop_online_dukan.daoimpl.MedicineDaoImpl;
import com.online.medishop_online_dukan.dto.Medicine;
import com.online.medishop_online_dukan.service.MedicineService;

public class MedicineServiceImpl implements MedicineService {

	MedicineDao dao = new MedicineDaoImpl();
	
	@Override
	public Medicine saveMedicineService(Medicine medicine) {
		
		return dao.saveMedicineDao(medicine);
		
	}

}
