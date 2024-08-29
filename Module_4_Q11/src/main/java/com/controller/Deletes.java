package com.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.bean.Address;
import com.bean.Student;

public class Deletes {

	public static void main(String[] args) {

		SessionFactory sf = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Student.class)
				.addAnnotatedClass(Address.class).buildSessionFactory();
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();

		Address add = session.get(Address.class, 2);
		System.out.println(add.getAddressId() + " " + add.getStreet() + " " + add.getCity() + " " + add.getState() + " "
				+ add.getZipcode());
		session.delete(add);
		tr.commit();
		session.close();
	}
}
