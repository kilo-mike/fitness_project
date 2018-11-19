package pl.coderslab.projekt_koncowy.service;


import pl.coderslab.projekt_koncowy.domain.Role;

public interface RoleService {
    Role findByName(String name);
    Role save(Role role);
}
