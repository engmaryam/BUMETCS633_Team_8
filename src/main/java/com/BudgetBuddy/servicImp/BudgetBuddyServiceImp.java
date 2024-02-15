package com.BudgetBuddy.servicImp;
import org.springframework.beans.factory.annotation.Autowired;

import com.BudgetBuddy.repo.IncomeRepository;
import com.BudgetBuddy.repo.User;
import com.BudgetBuddy.repo.UserRepository;
/*
 * Copyright (c) 2024 Team 8 - BudgetBuddy
 * Boston University MET CS 633
 * Team 8 - BudgetBuddy Application
 * 
 */
import com.BudgetBuddy.service.BudgetBudyService;

public class BudgetBuddyServiceImp implements BudgetBudyService  {
	  @Autowired
	    private UserRepository userRepository;
	
	public int getUserIdByUsername(String username) {
	    User user = userRepository.findByUsername(username);
	    if (user != null) {
	        return user.getUserId();
	    } else {
	        return 0;
	    }
	}
}
