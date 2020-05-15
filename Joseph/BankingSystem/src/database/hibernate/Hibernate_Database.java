package database.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import account.BankAccount;
import database.Database;

public class Hibernate_Database implements Database {
	private SessionFactory sessionFactory;

	@Override
	public BankAccount getData(int accountNumber) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		BankAccount bankAccount = (BankAccount)session.get(BankAccount.class, accountNumber);
		session.close();
		return bankAccount;
	}

	@Override
	public boolean insertData(BankAccount bankAccount) {
		try {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(bankAccount);
			session.getTransaction().commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean updateData(BankAccount bankAccount) {
		try {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.update(bankAccount);
			session.getTransaction().commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean deleteData(BankAccount bankAccount) {
		try {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.delete(bankAccount);
			session.getTransaction().commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	@Deprecated
	public int getMaxId() {
		return 0;
	}
	
	@Override
	public void close() throws Exception {
		sessionFactory.close();
	}

	@Override
	@SuppressWarnings("deprecation")
	public void open() throws Exception {
		try {
			sessionFactory = new Configuration().configure().buildSessionFactory();
		} catch (Throwable ex) {
			System.err.println("Session Factory could not be created. " + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}
}
