package com.manhnguyen.entity;

public class GioHang {
	int masp;
	int masize;
	int mamau;
	int soluong;
	int machitiet;

	String tensp;
	String giatien;
	String tenmau;
	String tensize;
	String img;
	
	public int getMasp() {
		return masp;
	}
	public void setMasp(int masp) {
		this.masp = masp;
	}
	public int getMasize() {
		return masize;
	}
	public void setMasize(int masize) {
		this.masize = masize;
	}
	public String getTensp() {
		return tensp;
	}
	public void setTensp(String tensp) {
		this.tensp = tensp;
	}

	public String getGiatien() {
		return giatien;
	}
	public void setGiatien(String giatien) {
		this.giatien = giatien;
	}
	public String getTenmau() {
		return tenmau;
	}
	public void setTenmau(String tenmau) {
		this.tenmau = tenmau;
	}
	public String getTensize() {
		return tensize;
	}
	public int getMachitiet() {
		return machitiet;
	}
	public void setMachitiet(int machitiet) {
		this.machitiet = machitiet;
	}
	public void setTensize(String tensize) {
		this.tensize = tensize;
	}
	public int getMamau() {
		return mamau;
	}
	public void setMamau(int mamau) {
		this.mamau = mamau;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public int sum() {
		int tongtien=Integer.parseInt(getGiatien());
		return tongtien*getSoluong();
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	

}
