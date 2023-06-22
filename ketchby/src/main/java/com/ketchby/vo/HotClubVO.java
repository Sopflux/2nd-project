package com.ketchby.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class HotClubVO {
	private int cb_no;
	private String cb_title;
	private int cb_people;
	private int ap_cnt;
	private String cb_img;
	private String bca_name;
	private String sca_name;
	private String cb_cls_date;
	public int getCb_no() {
		return cb_no;
	}
	public void setCb_no(int cb_no) {
		this.cb_no = cb_no;
	}
	public String getCb_title() {
		return cb_title;
	}
	public void setCb_title(String cb_title) {
		this.cb_title = cb_title;
	}
	public int getCb_people() {
		return cb_people;
	}
	public void setCb_people(int cb_people) {
		this.cb_people = cb_people;
	}
	public int getAp_cnt() {
		return ap_cnt;
	}
	public void setAp_cnt(int ap_cnt) {
		this.ap_cnt = ap_cnt;
	}
	public String getBca_name() {
		return bca_name;
	}
	public void setBca_name(String bca_name) {
		this.bca_name = bca_name;
	}
	public String getSca_name() {
		return sca_name;
	}
	public void setSca_name(String sca_name) {
		this.sca_name = sca_name;
	}
	public String getCb_cls_date() {
		return cb_cls_date;
	}
	public void setCb_cls_date(String cb_cls_date) {
		this.cb_cls_date = cb_cls_date;
	}
	public String getCb_img() {
		return cb_img;
	}
	public void setCb_img(String cb_img) {
		this.cb_img = cb_img;
	}
	
	
	
}
