package pl.coderslab.projekt_koncowy.controller;


import com.sun.deploy.association.RegisterFailedException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.projekt_koncowy.domain.Instructor;
import pl.coderslab.projekt_koncowy.domain.Session;
import pl.coderslab.projekt_koncowy.domain.Type;
import pl.coderslab.projekt_koncowy.domain.User;
import pl.coderslab.projekt_koncowy.domain.dto.RegisterDto;
import pl.coderslab.projekt_koncowy.domain.dto.SessionDto;
import pl.coderslab.projekt_koncowy.security.CurrentUser;
import pl.coderslab.projekt_koncowy.service.InstructorService;
import pl.coderslab.projekt_koncowy.service.SessionService;
import pl.coderslab.projekt_koncowy.service.TypeService;

import javax.validation.Valid;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/admin")
public class AdminController { //strefa chroniona skonfigurowana w SecurityConfig

    @Autowired
    TypeService typeService;

    @Autowired
    InstructorService instructorService;

    @Autowired
    SessionService sessionService;

    @RequestMapping("")
    public String index(@AuthenticationPrincipal CurrentUser user, Model model) {
        model.addAttribute("user", user.getUser());
        return "admin/index";
    }

    @GetMapping("/add/type")
    public String type(Model model) {
        model.addAttribute("type", new Type());
        return "form/type";
    }

    @PostMapping("/add/type")
    public String typePost(@Valid Type type, BindingResult result) {

        if (result.hasErrors()) {
            return "form/type";
        }
        typeService.registerType(type);
        return "redirect:/";
    }

    @GetMapping("/add/instructor")
    public String instructor(Model model) {
        model.addAttribute("instructor", new Instructor());
        return "form/instructor";
    }

    @PostMapping("/add/instructor")
    public String instructorPost(@Valid Instructor instructor, BindingResult result) {

        if (result.hasErrors()) {
            return "form/instructor";
        }
        instructorService.registerInstructor(instructor);
        return "redirect:/";
    }

    @GetMapping("/add/session")
    public String session(Model model) {
        model.addAttribute("session", new Session());
        return "form/session";
    }

    @PostMapping("/add/session")
    public String sessionPost(@Valid Session session, BindingResult result) {

        if (result.hasErrors()) {
            return "form/session";
        }


        sessionService.registerSession(session);
        return "redirect:/";
    }





    @ModelAttribute("instructors")
    public List<Instructor> getPublisher() {

        return instructorService.findAll();
    }

    @ModelAttribute("types")
    public List<Type> getAuthor() {

        return typeService.findAll();
    }
}
