package com.manhnguyen.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="CHUCVU")
public class ChucVu {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int machucvu;
	private String tenchucvu;
	public int getMachucvu() {
		return machucvu;
	}
	public void setMachucvu(int machucvu) {
		this.machucvu = machucvu;
	}
	public String getTenchucvu() {
		return tenchucvu;
	}
	public void setTenchucvu(String tenchucvu) {
		this.tenchucvu = tenchucvu;
	}
	

}
