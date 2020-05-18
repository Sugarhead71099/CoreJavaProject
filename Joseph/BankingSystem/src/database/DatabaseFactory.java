package database;

import database.hibernate.Hibernate_Database;
import database.jdbc.JDBC_Database;

public class DatabaseFactory {
	public static Database getDatabase(String databaseType) {
		if (Database.HIBERNATE.equals(databaseType)) {
			return new Hibernate_Database();
		} else if (Database.JDBC.equals(databaseType)) {
			return new JDBC_Database();
		} else {
			return null;
		}
	}
}
