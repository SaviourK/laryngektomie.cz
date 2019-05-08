package cz.laryngektomie.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cz.laryngektomie.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	User findByUsername(String username);
}
