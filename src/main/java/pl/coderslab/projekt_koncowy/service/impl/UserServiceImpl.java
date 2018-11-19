package pl.coderslab.projekt_koncowy.service.impl;

import com.sun.deploy.association.RegisterFailedException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import pl.coderslab.projekt_koncowy.domain.Role;
import pl.coderslab.projekt_koncowy.domain.User;
import pl.coderslab.projekt_koncowy.domain.dto.RegisterDto;
import pl.coderslab.projekt_koncowy.repository.RoleRepository;
import pl.coderslab.projekt_koncowy.repository.UserRepository;
import pl.coderslab.projekt_koncowy.service.UserService;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    //implementujemy kontrakt dla serwisu usera
    // główne zalety to łatwiejsza możliwość testowania serwisów
    // późniejsze możliwości rozwoju dzięki przesłanianiu przez interfejs
    // (możemy stworzyć nowy serwis który działa inaczej - np laczy sie z innym kontenerem danych - a dla
    // reszty aplikacji jest to przezroczyste)
    // dodatkowo mamy zapewniona separacje miedzy warstwami aplikacji (clean architecture)


    @Autowired
    BCryptPasswordEncoder passwordEncoder;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    RoleRepository roleRepository;

    @Override
    public User save(User u) {
        u.setPassword(passwordEncoder.encode(u.getPassword()));
        u.setEnabled(1);
        Role userRole = roleRepository.findByName("ROLE_USER");
        u.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
        return userRepository.save(u);
    }

    @Override
    public User saveAdmin(User u) {
        u.setPassword(passwordEncoder.encode(u.getPassword()));
        u.setEnabled(1);
        Role userRole = roleRepository.findByName("ROLE_USER");
        Role adminRole = roleRepository.findByName("ROLE_ADMIN");
        u.setRoles(new HashSet<Role>(Arrays.asList(userRole,adminRole)));
        return userRepository.save(u);
    }

    @Override
    public List<User> findAll() {

        return userRepository.findAll();
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public User registerUser(RegisterDto dto) throws RegisterFailedException {
        if(!dto.getPassword().equals(dto.getConfirm_password()) || dto.getPassword()==null || dto.getPassword().isEmpty()
                || dto.getConfirm_password()==null || dto.getConfirm_password().isEmpty()){
            throw new RegisterFailedException("Password incorrect");

        }
        Role userRole = roleRepository.findByName("ROLE_USER");
        User user = new User(dto.getName(),dto.getUsername(),passwordEncoder.encode(dto.getPassword()),1,dto.getEmail(),new HashSet<Role>(Arrays.asList(userRole)),null);


        return userRepository.save(user);
    }

    @Override
    public User findById(Long id) {
        return userRepository.findById(id.longValue());
    }

    @Override
    public User update(User u) {
        return userRepository.save(u);
    }
}
