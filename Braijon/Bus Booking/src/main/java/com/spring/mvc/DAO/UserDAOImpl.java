package com.spring.mvc.DAO;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.spring.mvc.model.UserModel;

@Repository
public class UserDAOImpl implements UserDAO
{

	private SessionFactory sessionFactory;

	public UserDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}

	@Override
	public criteriaQueryReturnData getUser()
	{
		Session session = sessionFactory.getCurrentSession();

	    CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
	    CriteriaQuery<UserModel> criteriaQuery = criteriaBuilder.createQuery(UserModel.class);
	    Root<UserModel> rootEntry = criteriaQuery.from(UserModel.class);
	    CriteriaQuery<UserModel> userModelQuery = criteriaQuery.select(rootEntry);

	    return new criteriaQueryReturnData(criteriaBuilder, userModelQuery, rootEntry, session);
	}

	@Override
	public void create(UserModel user)
	{
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);
	}

	@Override
	public void update(UserModel user)
	{
		sessionFactory.getCurrentSession().update(user);
	}

	@Override
	public void delete(UserModel user)
	{
		sessionFactory.getCurrentSession().delete(user);
	}

	public List<UserModel> getAll()
	{
		Session session = sessionFactory.getCurrentSession();

	    CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
	    CriteriaQuery<UserModel> criteriaQuery = criteriaBuilder.createQuery(UserModel.class);
	    Root<UserModel> rootEntry = criteriaQuery.from(UserModel.class);
	    CriteriaQuery<UserModel> userModelQuery = criteriaQuery.select(rootEntry);

	    TypedQuery<UserModel> userModels = session.createQuery(userModelQuery);

	    return userModels.getResultList();
	}
	
}
