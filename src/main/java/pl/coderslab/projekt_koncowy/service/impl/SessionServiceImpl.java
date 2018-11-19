package pl.coderslab.projekt_koncowy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.projekt_koncowy.domain.Session;
import pl.coderslab.projekt_koncowy.repository.SessionRepository;
import pl.coderslab.projekt_koncowy.service.SessionService;

import java.util.List;

@Service
public class SessionServiceImpl implements SessionService {

    @Autowired
    SessionRepository sessionRepository;

    @Override
    public Session registerSession(Session session) {
        return sessionRepository.save(session);
    }



    @Override
    public Session findById(Long id) {
        return sessionRepository.findById(id.longValue());
    }

    @Override
    public List<Session> findAll() {

        return sessionRepository.findAll();
    }

    @Override
    public List<Session> findAllByUsersId(Long id) {
        return sessionRepository.findAllByUsersId(id);
    }

}
