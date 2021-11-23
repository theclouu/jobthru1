package com.mySpring.myapp.member.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("memberVO")
public class MemberVO {
   private String member_id;
   private String member_password;
   private String member_profileImage;
   private String member_name;
   private String member_email;
   private String member_phone;
   private int type;
   private String com_apply_intro;
   private int com_apply_ID;
   private String com_apply_category;
   private int com_apply_career;
   private int com_apply_gender;
   private int com_apply_age;
   private int com_apply_age2;
   private int com_apply_number;
   private String com_apply_day;
   private String com_apply_region1;
   private String com_apply_region2;
   private String com_apply_region3;
   private int com_apply_pay_day;
   private Date com_apply_deadline;
   private String com_apply_paper;
   private String com_apply_image;
   private String com_apply_license_name;
   private Date registration_date;
   //Ãß°¡
   private String user_apply_category;

   public String getUser_apply_category() {
      return user_apply_category;
   }

   public void setUser_apply_category(String user_apply_category) {
      this.user_apply_category = user_apply_category;
   }

   public MemberVO() {
      
   }

   public MemberVO(String member_id, String member_password, String member_name, String member_email, String member_profileImage, 
         int type, String user_apply_category) {
      this.member_id = member_id;
      this.member_password = member_password;
      this.member_name = member_name;
      this.member_email = member_email;
      this.member_profileImage =member_profileImage;
      this.type= type;
      this.user_apply_category= user_apply_category;
   }

   public String getMember_profileImage() {
      return member_profileImage;
   }

   public void setMember_profileImage(String member_profileImage) {
      this.member_profileImage = member_profileImage;
   }

   public String getCom_apply_intro() {
      return com_apply_intro;
   }

   public void setCom_apply_intro(String com_apply_intro) {
      this.com_apply_intro = com_apply_intro;
   }

   public String getMember_id() {
      return member_id;
   }

   public void setMember_id(String member_id) {
      this.member_id = member_id;
   }

   public String getMember_password() {
      return member_password;
   }

   public void setMember_password(String member_password) {
      this.member_password = member_password;
   }

   public String getMember_name() {
      return member_name;
   }

   public void setMember_name(String member_name) {
      this.member_name = member_name;
   }

   public String getMember_email() {
      return member_email;
   }

   public void setMember_email(String member_email) {
      this.member_email = member_email;
   }

   public int getType() {
      return type;
   }

   public void setType(int type) {
      this.type = type;
   }

   public int getCom_apply_ID() {
      return com_apply_ID;
   }

   public void setCom_apply_ID(int com_apply_ID) {
      this.com_apply_ID = com_apply_ID;
   }

   public String getCom_apply_category() {
      return com_apply_category;
   }

   public void setCom_apply_category(String com_apply_category) {
      this.com_apply_category = com_apply_category;
   }

   public int getCom_apply_career() {
      return com_apply_career;
   }

   public void setCom_apply_career(int com_apply_career) {
      this.com_apply_career = com_apply_career;
   }

   public int getCom_apply_gender() {
      return com_apply_gender;
   }

   public void setCom_apply_gender(int com_apply_gender) {
      this.com_apply_gender = com_apply_gender;
   }

   public int getCom_apply_age() {
      return com_apply_age;
   }

   public void setCom_apply_age(int com_apply_age) {
      this.com_apply_age = com_apply_age;
   }

   public int getCom_apply_age2() {
      return com_apply_age2;
   }

   public void setCom_apply_age2(int com_apply_age2) {
      this.com_apply_age2 = com_apply_age2;
   }

   public int getCom_apply_number() {
      return com_apply_number;
   }

   public void setCom_apply_number(int com_apply_number) {
      this.com_apply_number = com_apply_number;
   }

   public String getCom_apply_day() {
      return com_apply_day;
   }

   public void setCom_apply_day(String com_apply_day) {
      this.com_apply_day = com_apply_day;
   }

   public String getCom_apply_region1() {
      return com_apply_region1;
   }

   public void setCom_apply_region1(String com_apply_region1) {
      this.com_apply_region1 = com_apply_region1;
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

   public int getCom_apply_pay_day() {
      return com_apply_pay_day;
   }

   public void setCom_apply_pay_day(int com_apply_pay_day) {
      this.com_apply_pay_day = com_apply_pay_day;
   }

   public Date getCom_apply_deadline() {
      return com_apply_deadline;
   }

   public void setCom_apply_deadline(Date com_apply_deadline) {
      this.com_apply_deadline = com_apply_deadline;
   }

   public String getCom_apply_paper() {
      return com_apply_paper;
   }

   public void setCom_apply_paper(String com_apply_paper) {
      this.com_apply_paper = com_apply_paper;
   }

   public String getCom_apply_image() {
      return com_apply_image;
   }

   public void setCom_apply_image(String com_apply_image) {
      this.com_apply_image = com_apply_image;
   }

   public String getCom_apply_license_name() {
      return com_apply_license_name;
   }

   public void setCom_apply_license_name(String com_apply_license_name) {
      this.com_apply_license_name = com_apply_license_name;
   }

   public Date getRegistration_date() {
      return registration_date;
   }

   public void setRegistration_date(Date registration_date) {
      this.registration_date = registration_date;
   }

	public String getMember_phone() {
		return member_phone;
	}
	
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}




}