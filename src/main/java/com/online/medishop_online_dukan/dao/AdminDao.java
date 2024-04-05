package com.online.medishop_online_dukan.dao;

import com.online.medishop_online_dukan.dto.Admin;

public interface AdminDao {

	public Admin getAdminByEmailDao(String email);
}
