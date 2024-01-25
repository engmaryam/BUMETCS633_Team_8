package com.BudgetBuddy;
/*
 * Copyright (c) 2024 Team 8 - BudgetBuddy
 * Boston University MET CS 633
 * Team 8 - BudgetBuddy Application
 * 
 */
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan

public class BudgetBuddyApplication {

	public static void main(String[] args) {
		SpringApplication.run(BudgetBuddyApplication.class, args);
	}

}
