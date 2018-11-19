package pl.coderslab.projekt_koncowy.domain;


import lombok.*;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Date;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Membership {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    private Membershiptype membershiptype;
    private LocalDate date = LocalDate.now().minusDays(1);
    @ManyToOne
    private User user;




}
