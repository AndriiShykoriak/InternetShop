package com.company.service;

import com.company.model.User;

public interface UserService {
    void save(User user);
    User findByName(String username);
}
