package com.mySpring.myapp.member.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("per_applyVO")
public class Per_applyVO {
	private int per_apply_id;
	private String member_id;
	private int per_apply_age;
	private String per_apply_region1;
	private String per_apply_region2;
	private String per_apply_region3;
	private String per_apply_day;
	private int user_apply_gender;
	private String user_apply_category;
	private String license_name;
	private String per_own_category;
	private int per_own_career;
	private String per_apply_image;
	private String per_apply_intro;
	private String member_name;
	private String member_email;
	
	

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public Per_applyVO() {
		
	}

	public Per_applyVO(int per_apply_id, String member_id, int per_apply_age, String per_apply_region1, String per_apply_region2, String per_apply_region3, String per_apply_day, int user_apply_gender
			, String user_apply_category, String license_name, String per_own_category, int per_own_career, String per_apply_image, String per_apply_intro, String member_name) {
		this.per_apply_id = per_apply_id;
		this.member_id = member_id;
		this.per_apply_age = per_apply_age;
		this.per_apply_region1 = per_apply_region1;
		this.per_apply_region2 = per_apply_region2;
		this.per_apply_region3 = per_apply_region3;
		this.per_apply_day = per_apply_day;
		this.user_apply_gender = user_apply_gender;
		this.user_apply_category = user_apply_category;
		this.license_name = license_name;
		this.per_own_category = per_own_category;
		this.per_own_career = per_own_career;
		this.per_apply_image = per_apply_image;
		this.per_apply_intro = per_apply_intro;
		this.member_name = member_name;
		
	
	}

	public int getPer_apply_id() {
		return per_apply_id;
	}

	public void setPer_apply_id(int per_apply_id) {
		this.per_apply_id = per_apply_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}



	public int getPer_apply_age() {
		return per_apply_age;
	}

	public void setPer_apply_age(int per_apply_age) {
		this.per_apply_age = per_apply_age;
	}

	public String getPer_apply_region1() {
		return per_apply_region1;
	}

	public void setPer_apply_region1(String per_apply_region1) {
		this.per_apply_region1 = per_apply_region1;
	}

	public String getPer_apply_region2() {
		return per_apply_region2;
	}

	public void setPer_apply_region2(String per_apply_region2) {
		this.per_apply_region2 = per_apply_region2;
	}

	public String getPer_apply_region3() {
		return per_apply_region3;
	}

	public void setPer_apply_region3(String per_apply_region3) {
		this.per_apply_region3 = per_apply_region3;
	}

	public String getPer_apply_day() {
		return per_apply_day;
	}

	public void setPer_apply_day(String per_apply_day) {
		this.per_apply_day = per_apply_day;
	}

	public int getUser_apply_gender() {
		return user_apply_gender;
	}

	public void setUser_apply_gender(int user_apply_gender) {
		this.user_apply_gender = user_apply_gender;
	}

	public String getUser_apply_category() {
		return user_apply_category;
	}

	public void setUser_apply_category(String user_apply_category) {
		this.user_apply_category = user_apply_category;
	}

	public String getLicense_name() {
		return license_name;
	}

	public void setLicense_name(String license_name) {
		this.license_name = license_name;
	}

	public String getPer_own_category() {
		return per_own_category;
	}

	public void setPer_own_category(String per_own_category) {
		this.per_own_category = per_own_category;
	}

	public int getPer_own_career() {
		return per_own_career;
	}

	public void setPer_own_career(int per_own_career) {
		this.per_own_career = per_own_career;
	}

	public String getPer_apply_image() {
		return per_apply_image;
	}

	public void setPer_apply_image(String per_apply_image) {
		this.per_apply_image = per_apply_image;
	}

	public String getPer_apply_intro() {
		return per_apply_intro;
	}

	public void setPer_apply_intro(String per_apply_intro) {
		this.per_apply_intro = per_apply_intro;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	
}