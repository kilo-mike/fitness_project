package pl.coderslab.projekt_koncowy.domain.dto;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.NotNull;
@Getter
@Setter
public class LoginDto {
 @NotNull
    private String login;
 @NotNull
    private String password;
}
