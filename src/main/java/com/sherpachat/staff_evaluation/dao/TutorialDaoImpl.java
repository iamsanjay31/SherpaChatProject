package com.sherpachat.staff_evaluation.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sherpachat.staff_evaluation.model.Tutorial;

@Repository
public class TutorialDaoImpl implements TutorialDao {
	
	@Resource
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public void addTutorial(Tutorial tut) {
		Session sess = sessionFactory.getCurrentSession();
		sess.save(tut);
		
	}

	@Override
	@Transactional
	public void deleteTutorial(int id) {
		Session sess = sessionFactory.getCurrentSession();
		Tutorial tl = (Tutorial) sess.get(Tutorial.class, id);
		sess.delete(tl);
		
	}

	@Override
	@Transactional
	public void updateTutorial(Tutorial tut) {
		Session sess = sessionFactory.getCurrentSession();
		sess.update(tut);
		
	}

	@Override
	public Tutorial getById(int id) {
		Session sess = sessionFactory.getCurrentSession();
		Tutorial tut = (Tutorial) sess.get(Tutorial.class, id);
		return tut;
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<Tutorial> getAllTutorial() {
		Session sess = sessionFactory.getCurrentSession();
		Criteria crt = sess.createCriteria(Tutorial.class);
		return crt.list();
	}
	
	

}
 