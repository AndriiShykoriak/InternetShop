package com.company.dao;

import com.company.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserDao extends JpaRepository<User,Integer> {
    @Query("from User u where u.username =:username")
    User findByUserName(@Param("username") String username);
}
