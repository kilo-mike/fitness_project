package pl.coderslab.projekt_koncowy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.projekt_koncowy.domain.Membership;

import pl.coderslab.projekt_koncowy.domain.Membershiptype;
import pl.coderslab.projekt_koncowy.security.CurrentUser;
import pl.coderslab.projekt_koncowy.service.MembershipService;
import pl.coderslab.projekt_koncowy.service.MembershiptypeService;

import javax.validation.Valid;
import java.time.LocalDate;
import java.util.List;

@Controller
public class MembershipController {
    @Autowired
    MembershiptypeService membershiptypeService;
@Autowired
    MembershipService membershipService;

    @GetMapping("/membership")
    public String membership(Model model) {
        model.addAttribute("membership", new Membership());
        return "form/membership";
    }

    @PostMapping("/membership")
    public String postMembership(@Valid Membership membership, @AuthenticationPrincipal CurrentUser user, BindingResult result) {

        if (result.hasErrors()) {
            return "form/membership";
        }
        membership.setDate(LocalDate.now().plusMonths(1));
        membership.setUser(user.getUser());

        membershipService.addMembreship(membership);
        return "redirect:/";
    }


    @ModelAttribute("membershiptypes")
    public List<Membershiptype> getMembershipType() {

        return membershiptypeService.findAll();
    }
}
