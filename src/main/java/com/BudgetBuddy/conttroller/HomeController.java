package com.BudgetBuddy.conttroller;

/*
 * Copyright (c) 2024 Team 8 - BudgetBuddy
 * Boston University MET CS 633
 * Team 8 - BudgetBuddy Application
 * 
 */
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @GetMapping("/budgetbuddy")
    public String welcome() {
        logger.info("Welcome to BudgetBuddy Application");       
        return "home";
        
        
    }
    
    @GetMapping("/budgetbuddy/register")
    public String register() {
        logger.info("Register an account with BudgetBuddy Application");
        return "register";
    }

    @GetMapping("/budgetbuddy/login")
    public String login() {
        logger.info("Login to BudgetBuddy Application");
        return "login";
    }
    
    @GetMapping("budgetbuddy/success")
    public String showSuccessPage() {
        return "success"; // 
    }
    
    @GetMapping("/budgetbuddy/dashboard")
    public String dashboard() {
        logger.info("Welcome to user Dashboard");       
        return "dashboard";
        
        
    }
    
    @GetMapping("/budgetbuddy/addincome")
    public String addIncome() {
        logger.info("Welcome to user add Income form");       
        return "addincome";
        
        
    }
}
