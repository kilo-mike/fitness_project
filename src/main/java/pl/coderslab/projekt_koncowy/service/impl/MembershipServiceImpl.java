package pl.coderslab.projekt_koncowy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.projekt_koncowy.domain.Membership;
import pl.coderslab.projekt_koncowy.repository.MembershipRepository;
import pl.coderslab.projekt_koncowy.service.MembershipService;

import java.util.List;

@Service
public class MembershipServiceImpl implements MembershipService {

    @Autowired
    MembershipRepository membershipRepository;
    @Override
    public Membership addMembreship(Membership membership) {
        return membershipRepository.save(membership);
    }

    @Override
    public Membership findByUserId(Long id) {
        return membershipRepository.findByUserId(id);
    }

    @Override
    public List<Membership> findAll() {
        return membershipRepository.findAll();
    }


}
