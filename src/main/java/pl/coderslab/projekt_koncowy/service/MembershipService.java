package pl.coderslab.projekt_koncowy.service;

import pl.coderslab.projekt_koncowy.domain.Membership;

import java.util.List;

public interface MembershipService {
    Membership addMembreship(Membership membership);
    Membership findByUserId (Long id);
    List<Membership> findAll();
}
