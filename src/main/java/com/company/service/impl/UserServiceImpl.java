package com.company.service.impl;

import com.company.config.EncryptionConfig;
import com.company.dao.UserDao;
import com.company.model.User;
import com.company.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements UserService, UserDetailsService {
    @Autowired
    private UserDao userDao;
    @Autowired
    private EncryptionConfig encryptionConfig;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return findByName(username);
    }

    @Override
    public void save(User user) {
        user.setPassword(encryptionConfig.getPasswordEncoder().encode(user.getPassword()));
        userDao.save(user);
    }

    @Override
    public User findByName(String username) {
        return userDao.findByUserName(username);
    }
}
