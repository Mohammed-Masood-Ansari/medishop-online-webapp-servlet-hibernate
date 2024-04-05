package com.online.medishop_online_dukan.daoimpl;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.online.medishop_online_dukan.dao.MedicineDao;
import com.online.medishop_online_dukan.dto.Medicine;

public class MedicineDaoImpl implements MedicineDao {

	EntityManager em = Persistence.createEntityManagerFactory("medishop").createEntityManager();
	EntityTransaction et = em.getTransaction();
	
	@Override
	public Medicine saveMedicineDao(Medicine medicine) {
		try {
			et.begin();
			em.persist(medicine);
			et.commit();
			return medicine;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}	
}
