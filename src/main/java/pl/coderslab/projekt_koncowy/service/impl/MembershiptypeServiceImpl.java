package pl.coderslab.projekt_koncowy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.projekt_koncowy.domain.Membershiptype;

import pl.coderslab.projekt_koncowy.repository.MembershiptypeRepository;

import pl.coderslab.projekt_koncowy.service.MembershiptypeService;

import java.util.List;

@Service
public class MembershiptypeServiceImpl implements MembershiptypeService {
    @Autowired
    MembershiptypeRepository membershipTypeRepository;

    @Override
    public List<Membershiptype> findAll() {
        return membershipTypeRepository.findAll();
    }
}
