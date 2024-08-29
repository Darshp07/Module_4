package com.contoller;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.bean.Cart;
import com.bean.Item;

public class showproductlist {

	public static void main(String[] args) {

		SessionFactory sf = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Item.class)
				.addAnnotatedClass(Cart.class).buildSessionFactory();

		Session session = sf.openSession();
		Transaction ts = session.beginTransaction();

		List<Cart> cartlist = session.createQuery("from Cart", Cart.class).list();

		for (Cart cart : cartlist) {
			System.out.println(
					"cart name:" + cart.getName() + " totale" + cart.getTotal() + " items :-" );
			for (Item item : cart.getItems()) {
				System.out.println("id:" + item.getItemId() + " totel :-" + item.getItemTotal() + " quntity:-"
						+ item.getQuantity());
			}
		}
		
		
		
		ts.commit();
		session.close();
	}
}
