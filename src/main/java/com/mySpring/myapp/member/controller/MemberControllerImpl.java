package com.mySpring.myapp.member.controller;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mySpring.myapp.member.service.MemberService;
import com.mySpring.myapp.member.vo.ComEunVO;
import com.mySpring.myapp.member.vo.CompanyVO;
import com.mySpring.myapp.member.vo.MatchingVO;
import com.mySpring.myapp.member.vo.MemberVO;
import com.mySpring.myapp.member.vo.MyMatchingVO;
import com.mySpring.myapp.member.vo.PerApplicationVO;
import com.mySpring.myapp.member.vo.PerApplyVO;
import com.mySpring.myapp.member.vo.Per_applyVO;
import com.mySpring.myapp.member.vo.ReplyVO;



@Controller("memberController")
//@EnableAspectJAutoProxy
public class MemberControllerImpl  implements MemberController {
	@Autowired
	private MemberService memberService;
	@Autowired
	MemberVO memberVO ;
	@Autowired
	CompanyVO companyVO ;
	@Autowired
	MatchingVO matchingVO;
	@Autowired
	MyMatchingVO myMatchingVO;
	@Autowired
	PerApplicationVO perApplicationVO;
	@Autowired
	PerApplyVO perApplyVO;
	
	
	@RequestMapping(value ={"/","/main.do"}, method = RequestMethod.GET)
	   public ModelAndView main(HttpServletRequest request, HttpServletResponse response) {
	      //�α��ο���üũ 
	      HttpSession sessioncheck = request.getSession();
	      Boolean checking = (Boolean) sessioncheck.getAttribute("isLogOn");
	      System.out.println("checking : "+checking);
	      
	      //�α���������, joblist_vo �޾ƿ���
	      if(checking !=null && checking == true) {
	         System.out.println("true��");
	         String userapplycategory = (String)memberVO.getUser_apply_category();
	         List main_list1 = memberService.main_list(memberVO);
	         System.out.println("userapplycategory: " + userapplycategory);
	         String viewName = (String)request.getAttribute("viewName");
	         ModelAndView mav = new ModelAndView();
	         mav.setViewName(viewName);
	         mav.addObject("main_list", main_list1);
	         System.out.println("controller1");
	         return mav;
	         }
	         else {
	            System.out.println("��");
	            String userapplycategory = (String)memberVO.getUser_apply_category();
	            System.out.println("userapplycategory: :" + userapplycategory);
	            List main_list1 = memberService.main_list(memberVO);
	            String viewName = (String)request.getAttribute("viewName");
	            ModelAndView mav = new ModelAndView();
	            mav.setViewName(viewName);
	            mav.addObject("main_list", main_list1);
	            System.out.println("controller");
	            return mav;
	         }
	      
	   }
	

	@RequestMapping(value ="/person/member_Select.do", method = RequestMethod.GET)
	private ModelAndView member_Select(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	

	@RequestMapping(value ="/person/member_Join.do", method = RequestMethod.GET)
	private ModelAndView member_Join(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value ="/job/job_search.do", method = RequestMethod.GET)
	private ModelAndView job_search(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	
	@RequestMapping(value ="/company/com_infoPage.do", method = RequestMethod.GET)
	private ModelAndView com_infoPage(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	@RequestMapping(value ="/job/calculator.do", method = RequestMethod.GET)
	private ModelAndView calculator(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		
		String price = request.getParameter("price");
		System.out.println(price);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("price", price);
		mav.setViewName(viewName);
		return mav;
	}
	@RequestMapping(value ="/job/info1.do", method = RequestMethod.GET)
	private ModelAndView info1(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}	
	@RequestMapping(value ="/job/info2.do", method = RequestMethod.GET)
	private ModelAndView info2(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}	
	@RequestMapping(value ="/job/info3.do", method = RequestMethod.GET)
	private ModelAndView info3(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	@RequestMapping(value ="/company/com_reviewDetailPage.do", method = RequestMethod.GET)
	private ModelAndView com_reviewDetailPage(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	@RequestMapping(value ="/company/com_main.do", method = RequestMethod.GET)
	private ModelAndView com_main( HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		
		//�� ����(�������) �������� 
		HttpSession session = request.getSession();
	    session.setAttribute("member", memberVO);
		System.out.println(memberVO.getMember_id()); 
		
		//�� ���� ã�� 
		int com_apply_ID = memberService.selectComApplyID(memberVO.getMember_id());
		System.out.println(com_apply_ID); 
		
		//�� ���� �ش��ϴ� ��Ī�� �̷¼� ���� �������� 
		List myMatching = memberService.myMatching(com_apply_ID);
		System.out.println(myMatching);

		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("myMatching", myMatching);

		return mav;
	}
	
	@RequestMapping(value ="/person/member_infoPage.do", method = RequestMethod.GET)
	private ModelAndView member_infoPage(@RequestParam("per_apply_ID") int per_apply_ID, HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		perApplicationVO = memberService.perApplication(per_apply_ID);
		ModelAndView mav = new ModelAndView();
		mav.addObject("perApplication", perApplicationVO);
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value ="/person/member_reviewDetailPage.do", method = RequestMethod.GET)
	private ModelAndView member_reviewDetailPage(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value ="/person/member_reviewPage.do", method = RequestMethod.GET)
	private ModelAndView member_reviewPage(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value ="/person/member_myPage.do", method = RequestMethod.GET)
	private ModelAndView member_myPage(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value ="/company/com_statusRegister.do", method = RequestMethod.GET)
	private ModelAndView com_statusRegister(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		
		HttpSession session = request.getSession();
	    session.setAttribute("member", memberVO);
		
		int per_apply_ID = memberService.selectPerApplyID(memberVO.getMember_id());
		
		List perApply = memberService.perApply(per_apply_ID);
		System.out.println(perApply);

		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("perApply", perApply);

		return mav;
	}

	//���� ����

	@RequestMapping(value="/person/member_jjim.do" ,method = RequestMethod.GET)
	public ModelAndView member_jjim(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List person_memberjjim1 = memberService.member_jjim();
		ModelAndView mav = new ModelAndView(viewName);
		mav.setViewName(viewName);
		mav.addObject("member_jjim", person_memberjjim1);
		return mav;
	}
	 @Override
	  @RequestMapping(value="/person/add_jjim.do" ,method = RequestMethod.POST)
	  public ModelAndView add_jjim(@ModelAttribute("ComEunVO") ComEunVO ComEunVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		  request.setCharacterEncoding("utf-8"); 
		  int result = 0; 
		  result = memberService.insert_add_jjim(ComEunVO); 
		  ModelAndView mav = new ModelAndView("redirect:/company/com_infoPage.do");
		  return mav; 
	  }

	 
	 
	@RequestMapping(value ="/company/com_comTract.do", method = RequestMethod.GET)
	private ModelAndView com_comTract(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	
	@RequestMapping(value ="/company/com_myPage.do", method = RequestMethod.GET)
	private ModelAndView com_myPage(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	@RequestMapping(value ="/person/member_statusRegister.do", method = RequestMethod.GET)
	private ModelAndView member_statusRegister(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	@RequestMapping(value ="/person/member_statusRegister_for_review.do", method = RequestMethod.GET)
	private ModelAndView member_statusRegister_for_review(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	@RequestMapping(value ="/job/ad.do", method = RequestMethod.GET)
	private ModelAndView ad(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	@RequestMapping(value ="/company/com_gonggoRegister.do", method = RequestMethod.GET)
	private ModelAndView com_gonggoRegister(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

//	@RequestMapping(value ="/job/job_listPage.do", method = RequestMethod.GET)
//	private ModelAndView job_listPage(HttpServletRequest request, HttpServletResponse response) {
//		List job_list1 = memberService.job_list();
//		String viewName = (String)request.getAttribute("viewName");
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName(viewName);
//		mav.addObject("job_list", job_list1);
//		System.out.println("controller");
//		return mav;
//	} 
	 
	//����		
	// �Խù� ��� + ����¡ �߰�
	@RequestMapping(value = "/job/job_listPage.do", method = RequestMethod.GET)
	public ModelAndView job_listPage(@RequestParam("num") int num, HttpServletRequest request, HttpServletResponse response ) throws Exception {
		
		String viewName = (String)request.getAttribute("viewName");
		System.out.println(viewName);
		//List job_list1 = memberService.job_list();
		
		 // �Խù� �� ����
		 int count = memberService.listCount();
		 System.out.println("�Խù��Ѱ���:" + count);
		  
		 // �� �������� ����� �Խù� ����
		 int postNum = 10;
			  
		 // �ϴ� ����¡ ��ȣ ([ �Խù� �� ���� �� �� �������� ����� ���� ]�� �ø�)
		 int pageNum = (int)Math.ceil((double)count/postNum);
		 System.out.println("����¡��ȣ:" + pageNum);
		  
		 // ����� �Խù� -> ����
		 int startPost = ((num - 1) * postNum) + 1;
		 System.out.println("����� �Խù�:" + startPost);
		 
		 //�Խù���
		 int endPost = num * postNum;
		 System.out.println("����ȣ:" + endPost);
		 
		 //startpost�� endpost�� ���⿡�� ������ �����ؼ� �Ѱ��ִ°� �´�. ���߿� ����. �˰� ����.	
		 //���������� ����ϴ� Ŭ������ ����¡ ���� ����ϴ°� ���� Ʈ����. ���߿� ��������. ���� ���ؾȵǴϱ� õõ�� ����.
		 List list = null; 
		 list = memberService.listPage(startPost, endPost);
		 
		 System.out.println();
		 ModelAndView mav = new ModelAndView();
		 mav.setViewName(viewName);
		 mav.addObject("job_list", list);
		 mav.addObject("totalPage", pageNum);
		 System.out.println();
		 
		 
		 return mav;
	}
	
	

	 /*���� �α��� */
	 @RequestMapping(value ="/login.do", method = RequestMethod.GET)
	   private ModelAndView login(@RequestParam(value= "result", required=false) String result, HttpServletRequest request, HttpServletResponse response) {
	      String viewName = (String)request.getAttribute("viewName");
	      System.out.println(result);
	      ModelAndView mav = new ModelAndView();
	      mav.addObject("result",result); 
	      mav.setViewName(viewName);
	      return mav;
	   }
	
	 @Override
		@RequestMapping(value = "/loginaction.do", method = RequestMethod.POST)
		public ModelAndView loginaction(@ModelAttribute("member") MemberVO member,
					              RedirectAttributes rAttr,
			                       HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		memberVO = memberService.login(member);
		if(memberVO != null) {
		    HttpSession session = request.getSession();
		    session.setAttribute("member", memberVO);
		    session.setAttribute("isLogOn", true);
		    //mav.setViewName("redirect:/member/listMembers.do");
		    String action = (String)session.getAttribute("action");
		    int member_type = memberVO.getType();
		    System.out.println(member_type);
		    session.removeAttribute("action");
		    if(action!= null) {
		       mav.setViewName("redirect:"+action);
		    }else{
		    	if(member_type == 0) {
				       mav.setViewName("redirect:/main.do");
				       System.out.println("����");
		    	}else{
				       mav.setViewName("redirect:/company/com_main.do");
				       System.out.println("���");
				      
		    		}	
		    	}
		    
		    }  	
		else {
		   rAttr.addAttribute("result","loginFailed");
		   mav.setViewName("redirect:/login.do");
		}
		return mav;
		}

	 /*���� �α��� */
	
	
	
	
	@RequestMapping(value ="/job/review_starPoint.do", method = RequestMethod.GET)
	private ModelAndView review_starPoint(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value="/member/listMembers.do" ,method = RequestMethod.GET)
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List membersList = memberService.listMembers();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("membersList", membersList);
		return mav;
	}
	

	@Override
	@RequestMapping(value="/member/addMember.do" ,method = RequestMethod.POST)
	public ModelAndView addMember(@ModelAttribute("member") MemberVO member,
			                  HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		int result = 0;
		result = memberService.addMember(member);
		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
		return mav;
	}
	
	
	@Override
	@RequestMapping(value="/member/removeMember.do" ,method = RequestMethod.GET)
	public ModelAndView removeMember(@RequestParam("id") String id, 
			           HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		memberService.removeMember(id);
		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
		return mav;
	}
	/*
	@RequestMapping(value = { "/member/loginForm.do", "/member/memberForm.do" }, method =  RequestMethod.GET)
	@RequestMapping(value = "/member/*Form.do", method =  RequestMethod.GET)
	public ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	*/
	
	/* ���� �α��� */
	@Override
	@RequestMapping(value = "/member/login.do", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("member") MemberVO member,
				              RedirectAttributes rAttr,
		                       HttpServletRequest request, HttpServletResponse response) throws Exception {
	ModelAndView mav = new ModelAndView();
	memberVO = memberService.login(member);
	if(memberVO != null) {
	    HttpSession session = request.getSession();
	    session.setAttribute("member", memberVO);
	    session.setAttribute("isLogOn", true);
	    //mav.setViewName("redirect:/member/listMembers.do");
	    String action = (String)session.getAttribute("action");
	    session.removeAttribute("action");
	    if(action!= null) {
	       mav.setViewName("redirect:"+action);
	    }else {
	       mav.setViewName("redirect:/member/listMembers.do");	
	    }

	}else {
	   rAttr.addAttribute("result","loginFailed");
	   mav.setViewName("redirect:/member/loginForm.do");
	}
	return mav;
	}

	@Override
	@RequestMapping(value = "/member/logout.do", method =  RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		session.removeAttribute("member");
		session.removeAttribute("isLogOn");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/main.do");
		return mav;
	}	
	/* ���� �α��� */
	
	@RequestMapping(value = "/member/*Form.do", method =  RequestMethod.GET)
	private ModelAndView form(@RequestParam(value= "result", required=false) String result,
							  @RequestParam(value= "action", required=false) String action,
						       HttpServletRequest request, 
						       HttpServletResponse response) throws Exception {
		
		String viewName = (String)request.getAttribute("viewName");
		System.out.println(viewName);
		HttpSession session = request.getSession();
		session.setAttribute("action", action);  
		ModelAndView mav = new ModelAndView();
		mav.addObject("result",result);
		mav.setViewName(viewName);
		return mav;
	}
	

	private String getViewName(HttpServletRequest request) throws Exception {
		String contextPath = request.getContextPath();
		String uri = (String) request.getAttribute("javax.servlet.include.request_uri");
		if (uri == null || uri.trim().equals("")) {
			uri = request.getRequestURI();
		}

		int begin = 0;
		if (!((contextPath == null) || ("".equals(contextPath)))) {
			begin = contextPath.length();
		}

		int end;
		if (uri.indexOf(";") != -1) {
			end = uri.indexOf(";");
		} else if (uri.indexOf("?") != -1) {
			end = uri.indexOf("?");
		} else {
			end = uri.length();
		}

		String viewName = uri.substring(begin, end);
		if (viewName.indexOf(".") != -1) {
			viewName = viewName.substring(0, viewName.lastIndexOf("."));
		}
		if (viewName.lastIndexOf("/") != -1) {
			viewName = viewName.substring(viewName.lastIndexOf("/", 1), viewName.length());
		}
		return viewName;
	}


	
	
	
	
	
	
	
	
	
	/* �ذ� 5�� �߰� */
	@Override
	  @RequestMapping(value="/member/add_com_reply.do" ,method = RequestMethod.GET)
	  public ModelAndView add_com_reply(@ModelAttribute("reply") ReplyVO reply, HttpServletRequest request, HttpServletResponse response) throws Exception {
		  request.setCharacterEncoding("utf-8");
		  
/*		  String rew_gubun = null;
		  
		  String member_comnumber = request.getParameter("member_comnumber");
		  if(member_comnumber == null) {
			  rew_gubun = "2";
		  } else {
			  rew_gubun = "1";
		  }
		  
		  reply.setRew_gubun(rew_gubun);	*/
		  
		  int result = 0; 
		  result = memberService.add_com_reply(reply); 
		  ModelAndView mav = new ModelAndView("redirect:/company/com_reviewPage.do");
		  return mav; 
	  }
	
	   @RequestMapping(value ="/company/com_reviewPage.do", method = RequestMethod.GET)
	      private ModelAndView com_reviewPage(HttpServletRequest request, HttpServletResponse response) {
	       
	      ModelAndView mav = new ModelAndView();
	      //데이터 가져오는 법
	       List company_review1;
	        String day="999999";
	        String getday = request.getParameter("day");
	        System.out.println("getday : "+getday);
	        
	        if (getday != null) {
	           day = getday;
	           System.out.println("true day : "+day);
	           company_review1 = memberService.company_review(day);
	        } else {
	           System.out.println("false day : "+day);
	           company_review1 = memberService.company_review(day);
	        }
	        mav.addObject("day", day);       
	         String viewName = (String)request.getAttribute("viewName");
	         mav.setViewName(viewName);
	         
	         /*
	          * String test = request.getParameter("test");
	          * System.out.println(test);
	          */
	         
	         mav.addObject("company_review", company_review1);
	         
	         return mav;
	      }
	
	@Override
	  @RequestMapping(value="/job/update_Review.do" ,method = RequestMethod.GET)
	  public ModelAndView update_Review(@ModelAttribute("reply") ReplyVO reply, @RequestParam("review_num") String review_num, HttpServletRequest request, HttpServletResponse response) throws Exception {
		  request.setCharacterEncoding("utf-8");
			String viewName = (String)request.getAttribute("viewName");
			ModelAndView mav = new ModelAndView();
			mav.setViewName(viewName);
			mav.addObject("review_num", review_num);
		  return mav; 
	  }

	@Override
	  @RequestMapping(value="/company/go_for_update_Review.do" ,method = RequestMethod.POST)
	  public ModelAndView update_Reply(@ModelAttribute("reply") ReplyVO reply, @RequestParam("review_num") String review_num, HttpServletRequest request, HttpServletResponse response) throws Exception {
		  request.setCharacterEncoding("utf-8");
		  
		  reply.setReview_num(review_num);
		  
		  int result = 0; 
		  result = memberService.update_Reply(reply);
		  
		  if(result != 0) {
			  System.out.println("success");
		  }
		  
			ModelAndView mav = new ModelAndView("redirect:/company/com_reviewPage.do");
		  return mav; 
	  }
	
	@Override
	  @RequestMapping(value = "/member/delete.do", method = RequestMethod.GET)
	  public String getDelete(@RequestParam("review_num") int review_num) throws Exception {
	    
	   memberService.delete(review_num);  

	   return "redirect:/company/com_reviewPage.do";
	  }
	
	//����
	// �Խù� ��� + ����¡ �߰�
		@RequestMapping(value = "/job/job_listSudoPage.do", method = RequestMethod.GET)
		public ModelAndView job_listSudoPage(@RequestParam("num") int num, HttpServletRequest request, HttpServletResponse response ) throws Exception {
			
			String viewName = (String)request.getAttribute("viewName");
			System.out.println(viewName);
			//List job_list1 = memberService.job_list();
			
			 // �Խù� �� ����
			 int count = memberService.listCount();
			 System.out.println("�Խù��Ѱ���:" + count);
			  
			 // �� �������� ����� �Խù� ����
			 int postNum = 10;
				  
			 // �ϴ� ����¡ ��ȣ ([ �Խù� �� ���� �� �� �������� ����� ���� ]�� �ø�)
			 int pageNum = (int)Math.ceil((double)count/postNum);
			 System.out.println("����¡��ȣ:" + pageNum);
			  
			 // ����� �Խù� -> ����
			 int startPost = ((num - 1) * postNum) + 1;
			 System.out.println("����� �Խù�:" + startPost);
			 
			 //�Խù���
			 int endPost = num * postNum;
			 System.out.println("����ȣ:" + endPost);
			 
			 //startpost�� endpost�� ���⿡�� ������ �����ؼ� �Ѱ��ִ°� �´�. ���߿� ����. �˰� ����.	
			 //���������� ����ϴ� Ŭ������ ����¡ ���� ����ϴ°� ���� Ʈ����. ���߿� ��������. ���� ���ؾȵǴϱ� õõ�� ����.
			 List list = null; 
			 list = memberService.listSudoPage(startPost, endPost);
			 
			 System.out.println();
			 ModelAndView mav = new ModelAndView();
			 mav.setViewName(viewName);
			 mav.addObject("job_listSudo", list);
			 mav.addObject("totalPage", pageNum);
			 System.out.println();
			 
			 
			 return mav;
		}
		
		
	
	/*@RequestMapping(value ="/job/job_listSudoPage.do", method = RequestMethod.GET)
	private ModelAndView job_listSudoPage(HttpServletRequest request, HttpServletResponse response) {
		List job_listSudo1 = memberService.job_listSudo();
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("job_listSudo",job_listSudo1);
		return mav;
	}*/
	
	   /* ���� �˻� ��Ʈ�ѷ� */
	   @RequestMapping(value = "/job/job_comment.do", method = RequestMethod.GET)
	   private ModelAndView job_comment(@RequestParam("searchPage") String searchPage, HttpServletRequest request,
	         HttpServletResponse response) {
	      System.out.println("SeachPage : " + searchPage); /* �̰� �׳� �ִ°� Ȯ�ο� */
	      
	      /* ������ ����Ʈ�� ��Ʈ�� ��Ʈ������ �����ö� */
	      List<Map<String,String>> member_comment = memberService.member_comment(searchPage);
	      
	      String viewName = (String) request.getAttribute("viewName");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.addObject("member_comment", member_comment);
	      mav.addObject("searchPage", searchPage);
	      mav.setViewName(viewName);
	      return mav;
	   }
	   
	   /*�ƶ� �߰�*/
	   @RequestMapping(value ="/company/com_gonggo.do", method = RequestMethod.GET)
		private ModelAndView com_gonggo(@RequestParam("com_apply_ID") int com_apply_ID,HttpServletRequest request, HttpServletResponse response) {
			String viewName = (String)request.getAttribute("viewName");
			companyVO = memberService.com_gonggo(com_apply_ID);
			ModelAndView mav = new ModelAndView();
			mav.addObject("com_apply_ID", com_apply_ID);
			mav.addObject("selectArticle", companyVO);
			mav.setViewName(viewName);
			return mav;
		}
		
		@RequestMapping(value ="/company/com_gonggo_apply.do", method = RequestMethod.GET)
		@ResponseBody

		private String com_gonggo_apply(@RequestParam("com_apply_ID") int com_apply_ID,HttpServletRequest request, HttpServletResponse response) {
			String viewName = (String)request.getAttribute("viewName");

			HttpSession session = request.getSession();
		    session.setAttribute("member", memberVO);
		    
			matchingVO.setCom_apply_id(com_apply_ID);
			System.out.println("member_id: " + memberVO.getMember_id()); 
			
			System.out.println("comapplyid: " + matchingVO.getCom_apply_id());
			
			//�ش� ������ ������������ �������� �Լ�. ������ ���̵�� �˻�
			int per_apply_id = memberService.selectPerApplyID(memberVO.getMember_id());
			System.out.println("�̰� ��µǴ°� �³���?");
			
			//������ ������ �����ͼ�setter�� �ֱ� 
			matchingVO.setPer_apply_id(per_apply_id);
			
			memberService.insertMatching(matchingVO);
			
			return "success";
		}
		
		/*��� ȸ������ ��Ʈ�ѷ� */
		   
		   	@Override
			@RequestMapping(value="/insertPerAll.do" ,method = RequestMethod.POST)
			public ModelAndView insertPerAll(@ModelAttribute("member") MemberVO member, @ModelAttribute("per_apply") Per_applyVO per_apply,
					                  HttpServletRequest request, HttpServletResponse response) throws Exception {
				request.setCharacterEncoding("UTF-8");
				int result1 = 0;
				int result2 = 0;
				
				String a = member.getMember_id();
				
				
				
				result2 = memberService.insert_per_member(member);
				result1 = memberService.insert_per_apply(per_apply);
				ModelAndView mav = new ModelAndView("redirect:/main.do");
				return mav;
				}
		   
		   /*��� ȸ������ -> �̷¼� �ۼ����� �Ѿ�� ��Ʈ�ѷ� */
		   @RequestMapping(value ="/job/job_search.do", method = RequestMethod.POST)
			private ModelAndView job_search2(HttpServletRequest request, HttpServletResponse response) {
				String viewName = (String)request.getAttribute("viewName");
				request.getParameter("member_name");
				request.getParameter("member_id");
				request.getParameter("member_password");
				request.getParameter("member_email");
				request.getParameter("member_phone");
				
				ModelAndView mav = new ModelAndView();
				mav.setViewName(viewName);
				return mav;
			}
		   
		   /*��� ���̵� �ߺ�üũ ��Ʈ�ѷ� */
		   // ���̵� �ߺ� üũ
		   
		   @ResponseBody
		   @RequestMapping(value="/idChk.do", method = RequestMethod.POST)
		   public String idChk(MemberVO member) throws Exception {
		   	int result = memberService.idChk(member); // ������ ���� ����� -> id������ 1, ������ 0���� ��µ� 
		   	System.out.println(result);
		    String resultStr = Integer.toString(result); //ajax�� ���� �����̸� ��Ʈ�� Ÿ������ ��!��! �ٲپ� �Ѵ�! 
	        return resultStr; 
		   }
	
		   /* ���� �߰� */ 
		   @RequestMapping(value ="/myPage.do", method = RequestMethod.GET)
		   public ModelAndView myPage(HttpServletRequest request, HttpServletResponse response) {
		       HttpSession session = request.getSession();
		       String viewName = (String)request.getAttribute("viewName");
		       ModelAndView mav = new ModelAndView();
		       int member_type = memberVO.getType();
		       System.out.println(member_type);
		       if(member_type ==0) {
		          mav.setViewName("redirect:/person/member_myPage.do");
		             System.out.println("���� ����������");
		       }else {
		          mav.setViewName("redirect:/company/com_myPage.do");
		             System.out.println("��� ����������");
		       }
		      return mav;
		   }
		   
		   /* 퀵서비스 컨트럴로임플 */
		   @RequestMapping(value ="/job/job_listquickPage.do", method = RequestMethod.GET)
		   private ModelAndView job_listquickPage(HttpServletRequest request, HttpServletResponse response) {
		      List job_quicklist1 = memberService.job_quicklist();
		      String viewName = (String)request.getAttribute("viewName");
		      ModelAndView mav = new ModelAndView();
		      mav.setViewName(viewName);
		      mav.addObject("job_quicklist", job_quicklist1);
		      System.out.println("controller");
		      return mav;
		   } 

}
