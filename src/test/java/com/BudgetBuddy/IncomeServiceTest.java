package com.BudgetBuddy;
import com.BudgetBuddy.servicImp.IncomeServiceImpl;
import com.BudgetBuddy.service.IncomeService;


public class IncomeServiceTest {
    public static void main(String[] args) {
        testIncomeService();
    }

    private static void testIncomeService() {
        // Create an instance of the IncomeService implementation
        IncomeService incomeService = new IncomeServiceImpl();

        // Test getIncome method
        double initialIncome = incomeService.getIncome();
        System.out.println("Initial Income: " + initialIncome);

        // Test addIncome method
        incomeService.addIncome(1000.0);
        double newIncome = incomeService.getIncome();
        System.out.println("Income after adding 1000.0: " + newIncome);

        // Additional tests
        try {
            // Try adding a negative income (should throw an exception)
            incomeService.addIncome(-500.0);
        } catch (IllegalArgumentException e) {
            System.out.println("Exception caught: " + e.getMessage());
        }

        // Display final income
        System.out.println("Final Income: " + incomeService.getIncome());
    }
}
