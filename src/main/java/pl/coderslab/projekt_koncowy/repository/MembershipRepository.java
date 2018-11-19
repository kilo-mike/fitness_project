package pl.coderslab.projekt_koncowy.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.coderslab.projekt_koncowy.domain.Membership;

@Repository
public interface MembershipRepository extends JpaRepository<Membership, Long> {


    Membership findByUserId(Long id);
}
