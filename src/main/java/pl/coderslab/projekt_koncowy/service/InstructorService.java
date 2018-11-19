package pl.coderslab.projekt_koncowy.service;

import pl.coderslab.projekt_koncowy.domain.Instructor;

import java.util.List;

public interface InstructorService {
    Instructor registerInstructor (Instructor instructor);
    List<Instructor> findAll();
}
