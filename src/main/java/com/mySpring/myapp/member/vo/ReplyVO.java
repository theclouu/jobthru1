package com.mySpring.myapp.member.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("replyVO")
public class ReplyVO {
	private String review_num;
	private String member_id;
	private String rew_gubun;
	private String rew_rating;
	private String rew_content;
	private Date rew_date;
	private String name;

	public ReplyVO() {
		
	}
	
	public String getReview_num() {
		return review_num;
	}
	public void setReview_num(String review_num) {
		this.review_num = review_num;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getRew_gubun() {
		return rew_gubun;
	}
	public void setRew_gubun(String rew_gubun) {
		this.rew_gubun = rew_gubun;
	}
	public String getRew_rating() {
		return rew_rating;
	}
	public void setRew_rating(String rew_rating) {
		this.rew_rating = rew_rating;
	}
	public String getRew_content() {
		return rew_content;
	}
	public void setRew_content(String rew_content) {
		this.rew_content = rew_content;
	}
	public Date getRew_date() {
		return rew_date;
	}
	public void setRew_date(Date rew_date) {
		this.rew_date = rew_date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
