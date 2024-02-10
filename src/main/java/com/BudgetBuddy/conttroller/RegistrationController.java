package com.BudgetBuddy.conttroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.BudgetBuddy.repo.User;
import com.BudgetBuddy.repo.UserRegistrationDto;
import com.BudgetBuddy.servicImp.UserService;

@Controller
public class RegistrationController {

    @Autowired
    private UserService userService;

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("userRegistrationDto", new UserRegistrationDto());
        return "register";
    }

    @PostMapping("/budgetbuddy/register")
    public String registerUser(@ModelAttribute("userRegistrationDto") UserRegistrationDto userDto) {
        userService.registerUser(userDto);
        return "redirect:/budgetbuddy/login";
    }
    
    @PostMapping("/budgetbuddy/login")
    public String loginUser(@ModelAttribute("user")User user, Model model) {
    	
        if (userService.authenticateUser(user.getUsername(), user.getPasswordHash())) {
            return "redirect:/budgetbuddy";  // Redirect to home page after successful login
        } else {
            model.addAttribute("loginError", "Invalid username or password");
            return "login";  // Redirect back to login page with error message
        }
    }
}

