package Service;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class SendingEmail {
    private String userEmail;
    private String myHash;

    public SendingEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public SendingEmail(String userEmail, String myHash) {
        this.userEmail = userEmail;
        this.myHash = myHash;
    }

    public String sendFPassByEmail(){
        String email = "dphuc2363@gmail.com";
        String pword = "tdnm xnue zhfr rmae";
        Properties properties = new Properties();

        properties.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
        properties.put("mail.smtp.port", "587"); //TLS Port
        properties.put("mail.smtp.auth", "true"); //enable authentication
        properties.put("mail.smtp.starttls.enable", "true"); //enable

        Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator(){
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(email, pword);
            }
        });

        MimeMessage message = new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress(email));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail));
            message.setSubject("StudyViral.in Email Verification Link");
            message.setText("Verification Link ...");
            String verificationLink = "Your Verification Link :: http://localhost:8081/WebBanThuocBaoVeThucVat/ForgotPassword?action=createPass&key1=" + userEmail;
            message.setText(verificationLink);
            Transport.send(message);
            return "success";
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

    public void sendMail(){
        String email = "dphuc2363@gmail.com";
        String pword = "tdnm xnue zhfr rmae";
        Properties properties = new Properties();

        properties.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
        properties.put("mail.smtp.port", "587"); //TLS Port
        properties.put("mail.smtp.auth", "true"); //enable authentication
        properties.put("mail.smtp.starttls.enable", "true"); //enable

        Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator(){
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(email, pword);
            }
        });

        MimeMessage message = new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress(email));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail));
            message.setSubject("StudyViral.in Email Verification Link");
            message.setText("Verification Link ...");
            String verificationLink = "Your Verification Link :: http://localhost:8081/WebBanThuocBaoVeThucVat/ActiveAccount?key1=" + userEmail + "&key2=" + myHash;
            message.setText(verificationLink);
            Transport.send(message);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
}
