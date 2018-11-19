//package pl.coderslab.projekt_koncowy.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import pl.coderslab.projekt_koncowy.domain.Membership;
//import pl.coderslab.projekt_koncowy.domain.User;
//import pl.coderslab.projekt_koncowy.domain.mailSender.MailSender;
//import pl.coderslab.projekt_koncowy.service.MembershipService;
//
//import java.time.LocalDate;
//import java.util.List;
//
//@Controller
//public class EmailController {
//    @Autowired
//    MailSender mailSender;
//    @Autowired
//    MembershipService membershipService;
//
//    @RequestMapping("/email")
//    public String emailSender() {
//        for (Membership membership : membershipService.findAll()) {
//
//            if (membership.getDate() == LocalDate.now()) {
//
//                    mailSender.
//            }
//        }
//
//
//    }
//}
