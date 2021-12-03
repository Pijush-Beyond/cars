package com.webapp.carrent.repository;

import com.webapp.carrent.model.User;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer> {

  public User findByEmail(String email);
}
