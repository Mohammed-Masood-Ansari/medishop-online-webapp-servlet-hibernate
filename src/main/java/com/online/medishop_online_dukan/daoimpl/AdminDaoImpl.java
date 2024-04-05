package com.online.medishop_online_dukan.daoimpl;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import com.online.medishop_online_dukan.dao.AdminDao;
import com.online.medishop_online_dukan.dto.Admin;

public class AdminDaoImpl implements AdminDao {

	EntityManager em = Persistence.createEntityManagerFactory("medishop").createEntityManager();
	EntityTransaction et = em.getTransaction();

	@Override
	public Admin getAdminByEmailDao(String email) {

		TypedQuery<Admin> query = 
				em.createQuery("Select a From Admin a Where a.email=:em", Admin.class);
			query.setParameter("em", email);
		try {
			return query.getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
