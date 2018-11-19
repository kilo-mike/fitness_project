//package pl.coderslab.projekt_koncowy.domain.mailSender;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.mail.SimpleMailMessage;
//import org.springframework.mail.javamail.JavaMailSender;
//import org.springframework.stereotype.Component;
//
//@Component
//public class MailSender {
//
//    @Autowired
//    JavaMailSender javaMailSender;
//
//    Logger logger = LoggerFactory.getLogger(this.getClass());
//
//    public void sendMail(String from, String to, String subject, String body) {
//
//        SimpleMailMessage mail = new SimpleMailMessage();
//
//        mail.setFrom(from);
//        mail.setTo(to);
//        mail.setSubject(subject);
//        mail.setText(body);
//
//        logger.info("Sending...");
//
//        javaMailSender.send(mail);
//
//        logger.info("Done!");
//    }
//
//
//    public void send(SimpleMailMessage mail) {
//
//
//
//        logger.info("Sending...");
//
//        javaMailSender.send(mail);
//
//        logger.info("Done!");
//    }
//}