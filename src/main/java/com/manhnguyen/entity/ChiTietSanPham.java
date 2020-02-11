package com.manhnguyen.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name = "CHITIETSANPHAM")
public class ChiTietSanPham implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int machitietsanpham;
	@OneToOne()
	@JoinColumn(name="masanpham")
	SanPham sanpham;
	@OneToOne()
	@JoinColumn(name="masize")
	SizeSanPham sizeSanPham;
	@OneToOne()
	@JoinColumn(name="mamau")
	MauSanPham mauSanPham;
	private int soluong;
	private String ngaynhap;
	public int getMachitietsanpham() {
		return machitietsanpham;
	}
	public void setMachitietsanpham(int machitietsanpham) {
		this.machitietsanpham = machitietsanpham;
	}
	public SanPham getSanpham() {
		return sanpham;
	}
	public void setSanpham(SanPham sanpham) {
		this.sanpham = sanpham;
	}
	public SizeSanPham getSizeSanPham() {
		return sizeSanPham;
	}
	public void setSizeSanPham(SizeSanPham sizeSanPham) {
		this.sizeSanPham = sizeSanPham;
	}
	public MauSanPham getMauSanPham() {
		return mauSanPham;
	}
	public void setMauSanPham(MauSanPham mauSanPham) {
		this.mauSanPham = mauSanPham;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public String getNgaynhap() {
		return ngaynhap;
	}
	public void setNgaynhap(String ngaynhap) {
		this.ngaynhap = ngaynhap;
	}
	
	

}
