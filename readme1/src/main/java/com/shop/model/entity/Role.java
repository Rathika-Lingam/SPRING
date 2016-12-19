package com.shop.model.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Role implements Serializable {

	private static final long serialVersionUID = 1L;

@Id
@GeneratedValue(strategy=GenerationType.AUTO)
	
	private String user_roleid;
@OneToOne
@JoinColumn(name="userid")
private User  uid;
private String userrole;
public String getUser_roleid() {
	return user_roleid;
}
public void setUser_roleid(String user_roleid) {
	this.user_roleid = user_roleid;
}
public String getUserrole() {
	return userrole;
}
public User getUid() {
	return uid;
}
public void setUid(User uid) {
	this.uid = uid;
}
public void setUserrole(String userrole) {
	this.userrole = userrole;
}



	
}
