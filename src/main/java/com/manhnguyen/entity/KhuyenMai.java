package com.manhnguyen.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@Entity(name="KHUYENMAI")
public class KhuyenMai {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int makhuyenmai;
	private String tenkhuyenmai;
	private String thoigianbatdau;
	private String thoigianketthuc;
	private String mua;
	public Set<SanPham> getSanPhams() {
		return sanPhams;
	}
	public void setSanPhams(Set<SanPham> sanPhams) {
		this.sanPhams = sanPhams;
	}
	private  String mota;
	private String hinhkhuyenmai;
	private int giagiam;
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name="CHITIETKHUYENMAI",
	joinColumns = {@JoinColumn(name="makhuyenmai",referencedColumnName = "makhuyenmai")},
	inverseJoinColumns = {@JoinColumn(name="masanpham",referencedColumnName = "masanpham")} )
	Set<SanPham>sanPhams;
	public int getMakhuyenmai() {
		return makhuyenmai;
	}
	public void setMakhuyenmai(int makhuyenmai) {
		this.makhuyenmai = makhuyenmai;
	}
	public String getTenkhuyenmai() {
		return tenkhuyenmai;
	}
	public void setTenkhuyenmai(String tenkhuyenmai) {
		this.tenkhuyenmai = tenkhuyenmai;
	}
	public String getThoigianbatdau() {
		return thoigianbatdau;
	}
	public void setThoigianbatdau(String thoigianbatdau) {
		this.thoigianbatdau = thoigianbatdau;
	}
	public String getThoigianketthuc() {
		return thoigianketthuc;
	}
	public void setThoigianketthuc(String thoigianketthuc) {
		this.thoigianketthuc = thoigianketthuc;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public String getHinhkhuyenmai() {
		return hinhkhuyenmai;
	}
	public void setHinhkhuyenmai(String hinhkhuyenmai) {
		this.hinhkhuyenmai = hinhkhuyenmai;
	}
	public int getGiagiam() {
		return giagiam;
	}
	public void setGiagiam(int giagiam) {
		this.giagiam = giagiam;
	}
	public String getMua() {
		return mua;
	}
	public void setMua(String mua) {
		this.mua = mua;
	}
	

}
