package com.mySpring.myapp.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mySpring.myapp.member.vo.ComEunVO;
import com.mySpring.myapp.member.vo.MemberVO;
import com.mySpring.myapp.member.vo.Per_applyVO;
import com.mySpring.myapp.member.vo.ReplyVO;


public interface MemberController {
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView addMember(@ModelAttribute("info") MemberVO memberVO,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView removeMember(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView login(@ModelAttribute("member") MemberVO member,
                              RedirectAttributes rAttr,
                              HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView loginaction(@ModelAttribute("member") MemberVO member,
            RedirectAttributes rAttr,
            HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView add_jjim(ComEunVO comeun, HttpServletRequest request, HttpServletResponse response) throws Exception;
	

	
	
	
	/* 준관 4개 추가 */
	public ModelAndView add_com_reply(ReplyVO reply, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView update_Review(ReplyVO reply, @RequestParam("review_num") String review_num, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView update_Reply(ReplyVO reply, @RequestParam("review_num") String review_num, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public String getDelete(int review_num) throws Exception;
	
	/*대겸 회원가입 부분 */
	public ModelAndView insertPerAll(MemberVO member, Per_applyVO per_apply, 
			HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	

}