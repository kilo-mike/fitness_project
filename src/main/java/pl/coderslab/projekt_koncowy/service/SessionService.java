package pl.coderslab.projekt_koncowy.service;


import pl.coderslab.projekt_koncowy.domain.Session;

import java.util.List;

public interface SessionService {
    Session registerSession(Session session);
    Session findById (Long id);

    List<Session> findAll();

List<Session> findAllByUsersId (Long id);
}
