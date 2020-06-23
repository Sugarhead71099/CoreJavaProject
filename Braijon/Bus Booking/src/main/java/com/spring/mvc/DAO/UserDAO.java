package com.spring.mvc.DAO;

import com.spring.mvc.model.UserModel;

public interface UserDAO
{

	public void create(UserModel customer);
	public criteriaQueryReturnData getUser();
	public void update(UserModel customer);
	public void delete(UserModel customer);

}
