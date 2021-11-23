package com.mySpring.myapp.member.vo;

import org.springframework.stereotype.Component;
import java.sql.Date;

@Component("myMatchingVO")
public class MyMatchingVO {
	
	private int matching_id;
	private int per_apply_ID;
	private String member_name;
	private String user_apply_category;
	private String per_apply_region3;
	

	public int getMatching_id() {
		return matching_id;
	}
	public void setMatching_id(int matching_id) {
		this.matching_id = matching_id;
	}
	public int getPer_apply_ID() {
		return per_apply_ID;
	}
	public void setPer_apply_ID(int per_apply_ID) {
		this.per_apply_ID = per_apply_ID;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getUser_apply_category() {
		return user_apply_category;
	}
	public void setUser_apply_category(String user_apply_category) {
		this.user_apply_category = user_apply_category;
	}
	public String getPer_apply_region3() {
		return per_apply_region3;
	}
	public void setPer_apply_region3(String per_apply_region3) {
		this.per_apply_region3 = per_apply_region3;
	}
	
	

}