package pl.coderslab.projekt_koncowy.controller;

import com.sun.deploy.association.RegisterFailedException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RestController;
import pl.coderslab.projekt_koncowy.domain.Membership;
import pl.coderslab.projekt_koncowy.domain.Session;
import pl.coderslab.projekt_koncowy.domain.User;
import pl.coderslab.projekt_koncowy.domain.dto.LoginDto;
import pl.coderslab.projekt_koncowy.domain.dto.RegisterDto;
import pl.coderslab.projekt_koncowy.security.CurrentUser;
import pl.coderslab.projekt_koncowy.service.MembershipService;
import pl.coderslab.projekt_koncowy.service.SessionService;
import pl.coderslab.projekt_koncowy.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.awt.print.Book;
import java.time.LocalDate;
import java.time.chrono.ChronoLocalDate;
import java.util.Set;
@Controller
public class HomeController { //kontroller gdzie do endpointów dostęp mają niezalogowani użytkownicy

@Autowired
    MembershipService membershipService;
    @Autowired
    SessionService sessionService;

    @Autowired
    UserService userService;
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(){


        return "index";
    }
    @RequestMapping(value = "/user/all",method = RequestMethod.GET)
    public String allForUser(){

        return "allforuser";
    }
    @RequestMapping("/user/home")
    public String home(@AuthenticationPrincipal CurrentUser user, Model model){
        model.addAttribute("user",user.getUser());
        return "home";
    }

    @RequestMapping(value = "/login",method = RequestMethod.GET) //
    public String login(){

        return "login";
    }


    @RequestMapping(value = "/register",method = RequestMethod.GET)
    public String register(Model model){
        model.addAttribute("dto", new RegisterDto());
        return "register";
    }

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String register( @ModelAttribute("dto") @Valid RegisterDto dto,Membership membership, BindingResult result){
        User user=null;

        if(!result.hasErrors() ){
            try {
                user=userService.registerUser(dto);

            }catch (RegisterFailedException e){
                return "register";
            }

            if(user!=null) {
                return "redirect:login";
            }
        }
        return "register";

    }
    @RequestMapping(value = "/logout",method = RequestMethod.POST)
    public String logout(){
        return "register";
    }



    @RequestMapping("/edit/{id}")
    public String editSes(@PathVariable Long id, @AuthenticationPrincipal CurrentUser user, @Valid Session session, BindingResult result ){
        Membership byUserId = membershipService.findByUserId(user.getUser().getId());
        if (byUserId==null){
            return "redirect:/membership";
        }
        LocalDate localDate= LocalDate.now();
        LocalDate date = byUserId.getDate();
        System.out.println(date);
        System.out.println(localDate);
        if (!localDate.isBefore(date)){
            return "redirect:/membership";
        }
        Session byId = sessionService.findById(id);
        Set<User> currentList = byId.getUsers();
        currentList.add(user.getUser());
        byId.setUsers(currentList);
        sessionService.registerSession(byId);

        return "redirect:../";
    }
    @RequestMapping("/unregister/{id}")
    public String unregister(@PathVariable Long id, @AuthenticationPrincipal CurrentUser user, @Valid Session session, BindingResult result ){
        Session byId = sessionService.findById(id);
        Set<User> currentList = byId.getUsers();
        currentList.remove(user.getUser());
        byId.setUsers(currentList);
        sessionService.registerSession(byId);

        return "redirect:../";
    }


    @RequestMapping("/all")
    public String findAll(Model model) {
        model.addAttribute("session", sessionService.findAll());
        return "list";
    }

    @RequestMapping("/session/{id}")
    public String findOneToRegister (@PathVariable Long id,Model model){
        model.addAttribute(sessionService.findById(id));
        return "onesession";
    }
    @RequestMapping("/session/user/{id}")
    public String findOneToRemove (@PathVariable Long id,Model model){
        model.addAttribute(sessionService.findById(id));
        return "unregister";
    }


    @RequestMapping(value = "/update", method = RequestMethod.GET)
    public String update(Model model, @AuthenticationPrincipal CurrentUser user) {
       User user1=  userService.findById(user.getUser().getId());
        model.addAttribute("user", user1);
        return "userupdate";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String updated( @Valid User user) {

        userService.update(user);
        return "index";
    }
//    @RequestMapping(value = "/404",method = RequestMethod.GET)
//    public String print404(){
//        return "404";
//    }
//    @RequestMapping(value = "/blank",method = RequestMethod.GET)
//    public String blank(){
//        return "blank";
//    }

}
