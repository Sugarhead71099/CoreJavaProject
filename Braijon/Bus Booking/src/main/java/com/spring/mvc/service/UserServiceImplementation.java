package com.spring.mvc.service;

import java.util.List;

import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mvc.DAO.UserDAO;
import com.spring.mvc.DAO.criteriaQueryReturnData;
import com.spring.mvc.model.UserModel;

@Service
public class UserServiceImplementation implements UserService
{

	private UserDAO serviceImplementation;

	public UserServiceImplementation(UserDAO serviceImplementation)
	{
		this.serviceImplementation = serviceImplementation;
	}

	@Override
	@Transactional
	public void addUser(UserModel user)
	{
		serviceImplementation.create(user);
	}

	@Override
	@Transactional
	public void updateUser(UserModel user)
	{
		serviceImplementation.update(user);
	}

	@Override
	@Transactional
	public void deleteUser(UserModel user)
	{
		serviceImplementation.delete(user);
	}
	
	@Override
	@Transactional
	public List<UserModel> getUser(long id)
	{
		criteriaQueryReturnData cqrd = serviceImplementation.getUser();
		CriteriaQuery<UserModel> cQuery = cqrd.criteriaQuery.where(cqrd.criteriaBuilder.equal(cqrd.rootEntry.get("id"), id));

		TypedQuery<UserModel> query = cqrd.session.createQuery(cQuery);
		return query.getResultList();
	}

}
