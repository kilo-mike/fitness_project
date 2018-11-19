package pl.coderslab.projekt_koncowy.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import pl.coderslab.projekt_koncowy.service.SpringDataUserDetailsService;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception { //metoda konfigurujaca zachowania autoryzacyjne
        http.authorizeRequests()
                .antMatchers("/").authenticated()
                .antMatchers("/user/**").hasAnyRole("USER", "ADMIN")
                .antMatchers("/admin/**").hasRole("ADMIN")

                .anyRequest().permitAll()
                .and().formLogin().loginPage("/login")

                .successForwardUrl("/user/home")
                .and().exceptionHandling().accessDeniedPage("/")
                .and().logout().logoutSuccessUrl("/login").permitAll();
    }
    @Bean
    public SpringDataUserDetailsService customUserDetailsService() {
        return new SpringDataUserDetailsService();
    } //bean ktory wstrzykiwany jest do znalezienia usera w NASZEJ bazie danych
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    } //bean do szyfrowania hasla usera rejestrujacego sie
}