package cz.laryngektomie.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cz.laryngektomie.model.Role;

public interface RoleRepository extends JpaRepository<Role, Integer> {

}
