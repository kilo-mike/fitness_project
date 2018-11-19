package pl.coderslab.projekt_koncowy;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import pl.coderslab.projekt_koncowy.domain.Role;
import pl.coderslab.projekt_koncowy.domain.User;
import pl.coderslab.projekt_koncowy.service.RoleService;
import pl.coderslab.projekt_koncowy.service.UserService;

@SpringBootApplication
public class ProjektKoncowyApplication {

    public static void main(String[] args) {

        SpringApplication.run(ProjektKoncowyApplication.class, args);
    }

    @Bean
    CommandLineRunner init(UserService userService, RoleService roleService) { //funkcja ktora uruchamia sie podczas startu aplikacji (za kazdym razem)
        return (args) -> {

            if (roleService.findByName("ROLE_ADMIN") == null) { //patrzymy czy mamy role admin i jesli nie to ja tworzymy
                Role r = new Role();
                r.setName("ROLE_ADMIN");
                roleService.save(r);
            }
            if (roleService.findByName("ROLE_USER") == null) { //analogicznie do roli wyzej
                Role r = new Role();
                r.setName("ROLE_USER");
                roleService.save(r);
            }
            if (userService.findByUsername("admin") == null) { //tworze admina

                User user = new User();
                user.setName("Super user");
                user.setUsername("admin");
                user.setPassword("admin");
                userService.saveAdmin(user);
            }
        };
    }

}