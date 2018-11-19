package pl.coderslab.projekt_koncowy.service;

import com.sun.deploy.association.RegisterFailedException;
import pl.coderslab.projekt_koncowy.domain.User;
import pl.coderslab.projekt_koncowy.domain.dto.RegisterDto;

import java.util.List;

public interface UserService {

    User save(User u);
    User saveAdmin(User u);
    List<User> findAll();
    User findByUsername(String username);
    User registerUser(RegisterDto dto) throws RegisterFailedException;
    User findById (Long id);
    User update (User u);
}
