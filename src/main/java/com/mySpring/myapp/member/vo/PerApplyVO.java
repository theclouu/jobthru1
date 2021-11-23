package com.mySpring.myapp.member.vo;

import org.springframework.stereotype.Component;
import java.sql.Date;

@Component("perApplyVO")
public class PerApplyVO {
	
	private String com_apply_image;
	private int com_apply_ID;
	private String member_name;
	private String com_apply_intro;
	private String com_apply_day;
	private String com_apply_region2;
	private String com_apply_region3;
	public String getCom_apply_image() {
		return com_apply_image;
	}
	public void setCom_apply_image(String com_apply_image) {
		this.com_apply_image = com_apply_image;
	}
	public int getCom_apply_ID() {
		return com_apply_ID;
	}
	public void setCom_apply_ID(int com_apply_ID) {
		this.com_apply_ID = com_apply_ID;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getCom_apply_intro() {
		return com_apply_intro;
	}
	public void setCom_apply_intro(String com_apply_intro) {
		this.com_apply_intro = com_apply_intro;
	}
	public String getCom_apply_day() {
		return com_apply_day;
	}
	public void setCom_apply_day(String com_apply_day) {
		this.com_apply_day = com_apply_day;
	}
	public String getCom_apply_region2() {
		return com_apply_region2;
	}
	public void setCom_apply_region2(String com_apply_region2) {
		this.com_apply_region2 = com_apply_region2;
	}
	public String getCom_apply_region3() {
		return com_apply_region3;
	}
	public void setCom_apply_region3(String com_apply_region3) {
		this.com_apply_region3 = com_apply_region3;
	}
	
	
	

}