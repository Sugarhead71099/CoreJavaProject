package com.spring.mvc.service;

import java.util.List;

import com.spring.mvc.model.UserModel;

public interface UserService
{

	public void addUser(UserModel user);
	public void updateUser(UserModel user);
	public void deleteUser(UserModel user);
	public List<UserModel> getUser(long id);

}
