package com.spring.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import com.spring.model.User;

public class UserDao {

	private JdbcTemplate jt;

	public JdbcTemplate getJt() {
		return jt;
	}

	public void setJt(JdbcTemplate jt) {
		this.jt = jt;
	}

	public int addUser(User u) {
		String sql = "insert into user(fname,lname,username,password,nic,email,contact,uType) values(?,?,?,?,?,?,?,?)";
		int r = this.jt.update(sql, u.getFname(), u.getLname(), u.getUsername(), u.getPassword(), u.getNic(),
				u.getEmail(), u.getContact(), u.getuType());
		System.out.println("DAO Record added Successfully");
		System.out.println(r);
		return r;
	}

}
