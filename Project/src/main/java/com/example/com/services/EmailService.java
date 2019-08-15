package com.example.com.services;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

@Service
public class EmailService {

    @Autowired
    private JavaMailSender emailSender;

    @Autowired
    private Configuration freemarkerConfig;
    
    public static final String  TEMPLATE_ROOT_LOCATION="/templates";
    
    public static final String ABSENCE_TEMPLATE= "absence-email-template.ftl";
    
    public static final String RATTRAPAGE_CONFIRMATION_TEMPLATE= "rattrapage-confirmation-template.ftl";
    
    public static final String RATTRAPAGE_PROPOSITION_TEMPLATE= "rattrapage-proposition-template.ftl";
   
    public void sendSimpleMessage(Mail mail, String[] to, String templateName) throws MessagingException, IOException, TemplateException {
        MimeMessage message = emailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message,
                MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED,
                StandardCharsets.UTF_8.name());

        freemarkerConfig.setClassForTemplateLoading(this.getClass(), TEMPLATE_ROOT_LOCATION);
        Template t = freemarkerConfig.getTemplate(templateName);
        
        String html = FreeMarkerTemplateUtils.processTemplateIntoString(t, mail.getModel());

        helper.setTo(to);
        helper.setText(html, true);
        helper.setSubject(mail.getSubject());
        helper.setFrom(mail.getFrom());

        emailSender.send(message);
    }
    public void sendSimpleMessageToOne(Mail mail, String to,  String templateName) throws MessagingException, IOException, TemplateException {
        MimeMessage message = emailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message,
                MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED,
                StandardCharsets.UTF_8.name());

        freemarkerConfig.setClassForTemplateLoading(this.getClass(), TEMPLATE_ROOT_LOCATION);
        Template t = freemarkerConfig.getTemplate(templateName);
        
        String html = FreeMarkerTemplateUtils.processTemplateIntoString(t, mail.getModel());

        helper.setTo(to);
        helper.setText(html, true);
        helper.setSubject(mail.getSubject());
        helper.setFrom(mail.getFrom());

        emailSender.send(message);
    }


}