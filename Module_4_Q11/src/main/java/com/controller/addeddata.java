package com.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.bean.Address;
import com.bean.Student;

public class addeddata {

	public static void main(String[] args) {

		Address add = new Address();
		add.setStreet("piyush point");
		add.setCity("surat");
		add.setState("Gujrat");
		add.setZipcode("394221");

		Student studnet = new Student();
		studnet.setStudentName("kirti patel");
		studnet.setAddress(add);

		Configuration cfg = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Student.class)
				.addAnnotatedClass(Address.class);

		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();

		Transaction transaction = session.beginTransaction();
		session.saveOrUpdate(studnet);
		transaction.commit();
		session.close();

	}
}
