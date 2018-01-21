package dao;
import java.util.Properties;
import java.util.Random;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.activation.*;
 
public class MailDAO {
	public int sendOTP(String email) {
		int i=0;
		String to = email;
		final String from = "aniket.vishwasrao3@gmail.com";
		final String password = "mygoogle@21nov";
		String host = "localhost";
	
		
		
		Properties prop = System.getProperties();
		prop.put("mail.smtp.host", host);
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true");
        prop.put("mail.user", from);
        prop.put("mail.password", password);
		
        //prop.setProperty("mail.smtp.host", host);
		
        Authenticator auth = new Authenticator()
        {
            public PasswordAuthentication getPasswordAuthentication()
            {
                return new PasswordAuthentication(from, password);
            }
        };
        
		Session session = Session.getDefaultInstance(prop, auth);
		
		Random randnum = new Random();
		i = randnum.nextInt(500);
		
		try {
			MimeMessage msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(from));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			msg.setSubject("Your OTP");
			msg.setText("heres the otp:"+i);
			Transport.send(msg);
		}catch (MessagingException e) {
			e.printStackTrace();
		}
		return i;
	}
}
