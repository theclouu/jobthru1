package com.mySpring.myapp.member.vo;

import org.springframework.stereotype.Component;
import java.sql.Date;

@Component("matchingVO")
public class MatchingVO {
	
	private int com_apply_id;
	private int per_apply_id;
	
	public int getCom_apply_id() {
		return com_apply_id;
	}
	public void setCom_apply_id(int com_apply_id) {
		this.com_apply_id = com_apply_id;
	}
	public int getPer_apply_id() {
		return per_apply_id;
	}
	public void setPer_apply_id(int per_apply_id) {
		this.per_apply_id = per_apply_id;
	}
	
	

}