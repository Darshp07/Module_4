package com.bean;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int Studnetid;
	private String StudentName;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "Std_id")
	private Address address;

	public int getStudnetid() {
		return Studnetid;
	}

	public void setStudnetid(int studnetid) {
		Studnetid = studnetid;
	}

	public String getStudentName() {
		return StudentName;
	}

	public void setStudentName(String studentName) {
		StudentName = studentName;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

}
