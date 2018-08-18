package com.ngc.admin.web.dao;

import com.ngc.admin.web.model.User;


public interface UserDao {

	User findById(int id);
	
	User findBySSO(String sso);
	
}

