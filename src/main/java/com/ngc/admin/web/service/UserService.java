package com.ngc.admin.web.service;

import com.ngc.admin.web.model.User;


public interface UserService {

	User findById(int id);
	
	User findBySso(String sso);
	
}