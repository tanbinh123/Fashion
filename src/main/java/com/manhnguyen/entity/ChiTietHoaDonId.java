package com.manhnguyen.entity;

import java.io.Serializable;

import javax.persistence.Embeddable;
@Embeddable
public class ChiTietHoaDonId implements Serializable {


	private int mahoadon;
	private int machitietsanpham;
	public int getMahoadon() {
		return mahoadon;
	}
	public void setMahoadon(int mahoadon) {
		this.mahoadon = mahoadon;
	}
	public int getMachitietsanpham() {
		return machitietsanpham;
	}
	public void setMachitietsanpham(int machitietsanpham) {
		this.machitietsanpham = machitietsanpham;
	}
	
}
