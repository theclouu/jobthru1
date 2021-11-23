package com.mySpring.myapp.mailcheck.controller;


import javax.mail.internet.MimeMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;

import java.io.File;
//memberController�뿉 �엳�뜕 import�뱾 
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mySpring.myapp.HomeController;
import com.mySpring.myapp.member.service.MemberService;
import com.mySpring.myapp.member.vo.MemberVO;
//�뿬湲곌퉴吏�

import jdk.internal.org.jline.utils.Log;

//mail send瑜� �쐞�븳 import �뱾
import javax.mail.internet.MimeMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.web.bind.annotation.ResponseBody; //responsebody 
import java.util.Random; //�옖�뜡 ���엯 �꽑�뼵�쓣 �쐞�븳 �쑀�떥 
import org.slf4j.Logger; // logger�궗�슜�쓣 �쐞�븳 �엫�룷�듃 
import org.slf4j.LoggerFactory;




@Controller
public class MailCheckController {
	@Autowired
	private JavaMailSenderImpl mailSender;
	private static final Logger logger = LoggerFactory.getLogger(MailCheckController.class);	
	@RequestMapping(value = "/mailCheck.do" , method = RequestMethod.GET)
	@ResponseBody
		public String mailCheckGET(String email) throws Exception{
		
		/*뷰에서 잘 넘어오는지 확인  */
		
		logger.info("이메일 데이터 전송 확인");
		logger.info("이메일 : " + email );
		
		/* 랜덤한 난수 생성  */
		Random random = new Random();
		int checkNum = random.nextInt(888888)+111111;
		/*할당된 인증번호 확인  */
		logger.info("인증번호 " + checkNum);
		
		
		/* 이메일 보내는 부분  */
		String subject = "JobThru에서 보낸 회원가입 이메일 인증입니다. ";
        String content = 
        		"회원가입을 진행해주셔서 감사합니다. "+
        		"<br><br>" + 
        		"인증번호는 " +checkNum + "입니다. " + 
        		"<br>" + 
        		"해당 인증번호를 인증번호 확인란에 기입하여 주세요. "
        		;
        String from = "kdk970704@gmail.com";
        String to = email;
        
        
        try {
        	MimeMessage mail = mailSender.createMimeMessage();
            MimeMessageHelper mailHelper = new MimeMessageHelper(mail,true,"UTF-8");
            mailHelper.setFrom(from);
            mailHelper.setTo(to);
            mailHelper.setSubject(subject);
            mailHelper.setText(content, true);
            mailSender.send(mail);
        	
        } catch(Exception e) {
        	e.printStackTrace();
        }
        
        String num = Integer.toString(checkNum);
        return num;
        
	}
	
	@RequestMapping(value = "/memberInfoMailSend.do" , method = RequestMethod.POST) //member_info 창에서 이메일 보내는 기능 
	@ResponseBody
		public void memberInfoMailSend(String email, String fileNameSplitFull, String fileNameSplit) throws Exception{
		
		/*뷰에서 잘 넘어오는지 확인  */
		
		logger.info("이메일 데이터 전송 확인");
		logger.info("이메일 : " + email );
		logger.info( "fileNameSplitFull: " + fileNameSplitFull + "/ fileNameSplit : " + fileNameSplit);
			
		/* 이메일 보내는 부분  */
		String subject = "JobThru에서 보낸 전자근로계약서입니다. ";
        String content = 
        		"축하합니다! 회원님께서 지원하신 이력서가 채택되었습니다. "+
        		"<br>"+
        		"저희 JobThru에서 고용계약을 진행해주셔서 감사합니다. . "+
        		"<br><br>" + 
        		"아래 계약서는 고용주가 보낸 계약서 입니다. " + 
        		"<br>" + 
        		"자세히 읽어보신 후 서명을 진행하시고 해당 이메일로 다시 보내주시기 바랍니다.  "
        		
        		;
        String from = "kdk970704@gmail.com";
        String to = email;
        
        
        try {
        	MimeMessage mail = mailSender.createMimeMessage();
            MimeMessageHelper mailHelper = new MimeMessageHelper(mail,true,"UTF-8");
            mailHelper.setFrom(from);
            mailHelper.setTo(to);
            mailHelper.setSubject(subject);
            mailHelper.setText(content, true);
            
            FileSystemResource file = new FileSystemResource(new File(fileNameSplitFull)); 
            mailHelper.addAttachment(fileNameSplit, file);
            
            mailSender.send(mail);
        	
        } catch(Exception e) {
        	e.printStackTrace();
        }
        
        
	}
	

	

}

