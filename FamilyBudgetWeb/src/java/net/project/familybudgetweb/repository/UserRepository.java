package net.project.familybudgetweb.repository;

import net.project.familybudgetweb.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
