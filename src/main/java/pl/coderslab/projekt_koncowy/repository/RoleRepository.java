package pl.coderslab.projekt_koncowy.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.projekt_koncowy.domain.Role;



@Repository
public interface RoleRepository extends JpaRepository<Role, Integer> { //repozytorium dla Role (punkt styku z frameworkiem)
    Role findByName(String name);
}
