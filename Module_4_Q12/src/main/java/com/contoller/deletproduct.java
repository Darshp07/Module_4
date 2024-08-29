package com.contoller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.bean.Cart;
import com.bean.Item;

public class deletproduct {

	public static void main(String[] args) {

		SessionFactory sf = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Item.class)
				.addAnnotatedClass(Cart.class).buildSessionFactory();

		Session session = sf.openSession();
		Transaction ts = session.beginTransaction();

		Item item = session.get(Item.class, 1);
		session.delete(item);

		ts.commit();
		session.close();
	}
}
