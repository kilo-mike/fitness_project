package pl.coderslab.projekt_koncowy.domain;


import lombok.*;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor //tworzy bezargumentowy konstruktor
@AllArgsConstructor //tworzy konstruktor ze wszystkimi argumentami (oprocz id)
@ToString //tworzy metode to String
@Entity
public class Role extends BaseEntity {

    private String name;

    @ManyToMany(mappedBy = "roles")
    private Set<User> users;


}
