package pl.coderslab.projekt_koncowy.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.projekt_koncowy.domain.Session;

import java.util.List;

@Repository
public interface SessionRepository extends JpaRepository<Session, Long> {

    Session findById (long id);
    List<Session> findAllByUsersId (Long id);

}
