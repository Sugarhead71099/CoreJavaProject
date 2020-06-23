package com.spring.mvc.DAO;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;

import com.spring.mvc.model.UserModel;

public class criteriaQueryReturnData
{

	public CriteriaBuilder criteriaBuilder;
	public CriteriaQuery<UserModel> criteriaQuery;
	public Root<UserModel> rootEntry;
	public Session session;

	public criteriaQueryReturnData() {}

	public criteriaQueryReturnData(
		CriteriaBuilder criteriaBuilder,
		CriteriaQuery<UserModel> criteriaQuery,
		Root<UserModel> rootEntry,
		Session session
	)
	{
		this.criteriaBuilder = criteriaBuilder;
		this.criteriaQuery = criteriaQuery;
		this.rootEntry = rootEntry;
		this.session = session;
	}

}
