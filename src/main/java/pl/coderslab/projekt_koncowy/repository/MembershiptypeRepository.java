package pl.coderslab.projekt_koncowy.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import pl.coderslab.projekt_koncowy.domain.Membershiptype;

@Repository
public interface MembershiptypeRepository extends JpaRepository<Membershiptype,Long> {
}
