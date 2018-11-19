package pl.coderslab.projekt_koncowy.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

/**
 * See: https://stackoverflow.com/questions/48784923/is-using-id-field-in-allargsconstructor-while-using-spring-jpa-correct
 * @author developer
 */

@Entity
@Data
@Getter //tworzy getter
@Setter //tworzy setter
@Inheritance(strategy=InheritanceType.TABLE_PER_CLASS)
public abstract class BaseEntity { //bazowa encja

    @Id
    @GeneratedValue
    protected long id;
}
