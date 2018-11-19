package pl.coderslab.projekt_koncowy.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.projekt_koncowy.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User,Long> { //repozytorium dla User (punkt styku z frameworkiem)
    User findByUsername(String name);
    User findById (long id);
}
