package com.sherpachat.staff_evaluation.dao;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sherpachat.staff_evaluation.model.Staff;

@Repository
public class StaffDaoImpl implements StaffDao {

	@Resource
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public void userSignUp(Staff st) {

		Session sess = sessionFactory.getCurrentSession();
		sess.save(st);

	}

	@Override
	@Transactional
	public boolean staffLogin(String un, String psw) {

		Session sess = sessionFactory.getCurrentSession();

		Criteria crt = sess.createCriteria(Staff.class);

		crt.add(Restrictions.eq("username", un)).add(Restrictions.eq("password", psw));

		Staff st = (Staff) crt.uniqueResult();

		if (st != null)
			return true;

		return false;
	}
	
}
