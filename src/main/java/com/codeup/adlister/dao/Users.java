package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);

    void changePassword(User user, String newPassword);

//    void updateEmail(User user, String email);
    void updateEmail (String email, Long id);
}
