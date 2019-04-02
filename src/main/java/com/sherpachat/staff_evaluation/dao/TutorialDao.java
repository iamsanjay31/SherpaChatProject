package com.sherpachat.staff_evaluation.dao;

import java.util.List;

import com.sherpachat.staff_evaluation.model.Tutorial;



public interface TutorialDao {
	
	void addTutorial(Tutorial tut);

	void deleteTutorial(int id);

	void updateTutorial(Tutorial tut);

	Tutorial getById(int id);

	List<Tutorial> getAllTutorial();

}
