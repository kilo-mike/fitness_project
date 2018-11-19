package pl.coderslab.projekt_koncowy.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import pl.coderslab.projekt_koncowy.domain.Session;
import pl.coderslab.projekt_koncowy.security.CurrentUser;
import pl.coderslab.projekt_koncowy.service.SessionService;

import java.util.List;

@RestController
@RequestMapping("/sessions")
public class SessionRestController {

    @Autowired
    SessionService sessionService;
    @RequestMapping("/all")
    public List<Session> findAll() {

        return sessionService.findAll();
    }

    @RequestMapping("/user")
    public List<Session> findAllForOne (@AuthenticationPrincipal CurrentUser user){

        return sessionService.findAllByUsersId(user.getUser().getId());
    }
}
