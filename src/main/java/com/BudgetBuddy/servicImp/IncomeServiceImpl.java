package com.BudgetBuddy.servicImp;

import com.BudgetBuddy.service.IncomeService;

public class IncomeServiceImpl implements IncomeService {
    private double currentIncome;

    @Override
    public double getIncome() {
        return currentIncome;
    }

    @Override
    public void addIncome(double amount) {
        if (amount < 0) {
            throw new IllegalArgumentException("Income amount must be non-negative.");
        }
        currentIncome += amount;
    }
}
