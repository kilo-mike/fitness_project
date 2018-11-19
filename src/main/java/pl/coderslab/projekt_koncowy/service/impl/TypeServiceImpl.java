package pl.coderslab.projekt_koncowy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.projekt_koncowy.domain.Type;
import pl.coderslab.projekt_koncowy.repository.TypeRepository;
import pl.coderslab.projekt_koncowy.service.TypeService;

import java.util.List;

@Service
public class TypeServiceImpl implements TypeService {

    @Autowired
    TypeRepository typeRepository;

    @Override
    public Type registerType(Type type) {
        return typeRepository.save(type);
    }

    @Override
    public List<Type> findAll() {

        return typeRepository.findAll();
    }
}
