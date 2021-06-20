package net.project.familybudgetweb.service;

import net.project.familybudgetweb.model.User;

public interface UserService {

    void save(User user);

    User findByUsername(String username);
}