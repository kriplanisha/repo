package com.util;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailSend {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		try{
	
			String host="smtp.gmail.com";
			String user="rs142120074@gmail.com";
			String pass="9024273931";
			String to="";
			String from="rs142120074@gmail.com	"; 
			String subject="Password";
			String text=Random1.getSaltString();
			
			boolean sessionDebug=false;
			
			Properties props=System.getProperties();
			props.put(" mail.smtp.starttls.enable", true );
			props.put("mail.smtp.host",host);
			props.put("mail.smtp.port","465");
			props.put("mail.smtp.auth", true);
			props.put("mail.smtp.starttls.required","true");
		//	java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl)
			
			
			//java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.pro
			
			Session mailSession=Session.getDefaultInstance(props,null);
			mailSession.setDebug(sessionDebug);
			Message msg=new MimeMessage(mailSession);
			msg.setFrom(new InternetAddress(from));
			InternetAddress[] address ={new InternetAddress(to)};
			msg.setRecipients(Message.RecipientType.TO, address);
			msg.setSubject(subject);
			msg.setText(text);
			
			Transport transport=mailSession.getTransport("smtp");
			transport.connect(host, user, pass);
			transport.sendMessage(msg,msg.getAllRecipients());
			transport.close();
			System.out.println("sent Succesfull");
			
			
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}

	}

}


