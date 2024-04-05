package com.online.medishop_online_dukan.daoimpl;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import com.online.medishop_online_dukan.dao.UserDao;
import com.online.medishop_online_dukan.dto.User;

public class UserDaoImpl implements UserDao {

	EntityManager entityManager = Persistence.createEntityManagerFactory("medishop").createEntityManager();
	EntityTransaction et = entityManager.getTransaction();

	@Override
	public User saveUserDao(User user) {
		et.begin();
		entityManager.persist(user);
		et.commit();
		return user;
	}

	@Override
	public User getUserByIdDao(int userId) {
		return entityManager.find(User.class, userId);
	}

	@Override
	public User getUserByEmailDao(String userEmail) {

		String selectEmailQuery = "SELECT u from User u Where u.email=?12";

		TypedQuery<User> query = entityManager.createQuery(selectEmailQuery, User.class);
		query.setParameter(12, userEmail);

		try {
			User user = query.getSingleResult();
			return user;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
