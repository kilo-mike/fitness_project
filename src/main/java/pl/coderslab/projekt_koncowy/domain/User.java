package pl.coderslab.projekt_koncowy.domain;


import lombok.*;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;


@Entity
@Getter
@Setter
@NoArgsConstructor //tworzy bezargumentowy konstruktor
@AllArgsConstructor
@ToString //tworzy metode to String
public class User extends BaseEntity{

    private String name;
    private String username;
    private String password;
    private int enabled;
    private String email;

    @ManyToMany(fetch = FetchType.EAGER, cascade=CascadeType.MERGE)
    private Set<Role> roles;

    @ManyToMany(mappedBy = "users")
    private Set<Session> sessions;


}
