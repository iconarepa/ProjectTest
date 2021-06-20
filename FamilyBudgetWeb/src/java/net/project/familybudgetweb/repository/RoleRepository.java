package net.project.familybudgetweb.repository;

import net.project.familybudgetweb.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {
}