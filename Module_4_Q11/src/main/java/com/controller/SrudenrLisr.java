package com.controller;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.bean.Address;
import com.bean.Student;

public class SrudenrLisr {
	public static void main(String[] args) {

		SessionFactory sf = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Student.class)
				.addAnnotatedClass(Address.class).buildSessionFactory();

		Session session = sf.openSession();

		Transaction tr = session.beginTransaction();

		List<Student> studentlist = session.createQuery("from Student", Student.class).list();

		for (Student std : studentlist) {
			System.out.println("student id:-" + std.getStudnetid() + "  name :" + std.getStudentName() + "  address:-"
					+ std.getAddress().getStreet() +" "+ std.getAddress().getCity() +" "+ std.getAddress().getState()+" "
					+ std.getAddress().getZipcode());
		}
		tr.commit();
		session.close();

	}

}
