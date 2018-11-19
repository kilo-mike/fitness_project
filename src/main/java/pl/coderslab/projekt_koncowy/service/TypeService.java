package pl.coderslab.projekt_koncowy.service;

import pl.coderslab.projekt_koncowy.domain.Type;

import java.util.List;

public interface TypeService {
    Type registerType (Type type);
    List<Type> findAll();
}
