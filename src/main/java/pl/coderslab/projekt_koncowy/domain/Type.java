package pl.coderslab.projekt_koncowy.domain;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Getter
@Setter

//@ToString //tworzy metode to String
@Entity
public class Type {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;

    public Type() {
    }

    public Type(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return name;
    }
}
