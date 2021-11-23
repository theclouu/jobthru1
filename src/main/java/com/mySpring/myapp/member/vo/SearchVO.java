package com.mySpring.myapp.member.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

/* 유정 검색 서치vo */

@Component("searchVO")
public class SearchVO {
	private String com_apply_category;
	private String com_comment;


	public SearchVO() {
		
	}

	public String getCom_apply_category() {
		return com_apply_category;
	}

	public void setCom_apply_category(String com_apply_category) {
		this.com_apply_category = com_apply_category;
	}

	public String getCom_comment() {
		return com_comment;
	}

	public void setCom_comment(String com_comment) {
		this.com_comment = com_comment;
	}

}
	
	