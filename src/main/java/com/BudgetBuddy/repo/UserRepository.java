package com.BudgetBuddy.repo;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsernameAndPasswordHash(String username, String passwordHash);
}
