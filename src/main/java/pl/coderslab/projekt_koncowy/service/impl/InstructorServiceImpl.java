package pl.coderslab.projekt_koncowy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.projekt_koncowy.domain.Instructor;
import pl.coderslab.projekt_koncowy.repository.InstructorRepository;
import pl.coderslab.projekt_koncowy.service.InstructorService;

import java.util.List;

@Service
public class InstructorServiceImpl implements InstructorService {

    @Autowired
    InstructorRepository instructorRepository;

    @Override
    public Instructor registerInstructor(Instructor instructor) {
        return instructorRepository.save(instructor);
    }

    @Override
    public List<Instructor> findAll() {

        return instructorRepository.findAll();
    }
}
