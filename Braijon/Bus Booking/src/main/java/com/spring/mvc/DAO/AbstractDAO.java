package com.spring.mvc.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public abstract class AbstractDAO
{

	private SessionFactory sessionFactory;

	public AbstractDAO(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}

	protected Session getSession()
	{
		return sessionFactory.openSession();
	}

	public void persist(Object entity)
	{
		getSession().persist(entity); 
	}

	public void delete(Object entity)
	{
		getSession().delete(entity);
	}

	public void update(Object entity)
	{
		getSession().update(entity);
	}

	public Object get(String entityName, int id)
	{
		return getSession().get(entityName, id);
	}

}
