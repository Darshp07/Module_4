package com.contoller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.bean.Cart;
import com.bean.Item;

public class additem {

	public static void main(String[] args) {

		SessionFactory sf = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Item.class)
				.addAnnotatedClass(Cart.class).buildSessionFactory();

		Session session = sf.openSession();
		Transaction ts = session.beginTransaction();

		Cart cart = new Cart();
		cart.setName("electonic");
		cart.setTotal(7);

		Item item = new Item();
		item.setItemId("1");
		item.setItemTotal(10.0);
		item.setQuantity(2);
		item.setCart(cart);

		session.saveOrUpdate(cart);
		session.saveOrUpdate(item);
		ts.commit();
		session.close();
	}
}
