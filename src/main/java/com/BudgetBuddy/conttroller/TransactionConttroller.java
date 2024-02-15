package com.BudgetBuddy.conttroller;

import java.math.BigDecimal;
import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.BudgetBuddy.repo.IncomeRepository;
import com.BudgetBuddy.service.BudgetBudyService;

import jakarta.servlet.http.HttpSession;

import com.BudgetBuddy.repo.*;



@Controller

public class TransactionConttroller {
	

	    @Autowired
	    private IncomeRepository incomeRepository;
	    
	  
	    @PostMapping("/budgetbuddy/addIncome")
	    public String addIncome(@RequestParam("amount") BigDecimal amount,
	                            @RequestParam("category") String category,
	                            HttpSession session) {
	        // Retrieve the user ID from the session
	        Integer userId = (Integer) session.getAttribute("userId");
	        
	        if (userId != null) {
	            // Create a new Income object
	            Income income = new Income();
	            income.setUserId(userId); // Set the user ID
	            income.setAmount(amount);
	            income.setSource(category);
	            income.setDate(LocalDate.now()); // Assuming you want to set the current date
	            
	            // Save the income to the database
	            incomeRepository.save(income);
	            
	            // Redirect to the user dashboard or any other page
	            return "redirect:/budgetbuddy/dashboard";
	        } else {
	            // If user ID is not found in the session, redirect to login page
	            return "redirect:/budgetbuddy/login";
	        }
	    }
}