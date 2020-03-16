package com.manhnguyen.entity;

import java.util.Set;

public class JSONSanPham {
	private int masanpham;
	private DanhMucSanPham danhMucSanPham;
	private String tensanpham;
	private float giatien;
	private String mota;
	private String hinhsanpham;
	private String gianhcho;
	Set<ChiTietSanPham> chiTietSanPhams;
	Set<KhuyenMai>danhsachKhuyenMais;
	public int getMasanpham() {
		return masanpham;
	}
	public void setMasanpham(int masanpham) {
		this.masanpham = masanpham;
	}
	public DanhMucSanPham getDanhMucSanPham() {
		return danhMucSanPham;
	}
	public void setDanhMucSanPham(DanhMucSanPham danhMucSanPham) {
		this.danhMucSanPham = danhMucSanPham;
	}
	public String getTensanpham() {
		return tensanpham;
	}
	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}
	public float getGiatien() {
		return giatien;
	}
	public void setGiatien(float giatien) {
		this.giatien = giatien;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public String getHinhsanpham() {
		return hinhsanpham;
	}
	public void setHinhsanpham(String hinhsanpham) {
		this.hinhsanpham = hinhsanpham;
	}
	public String getGianhcho() {
		return gianhcho;
	}
	public void setGianhcho(String gianhcho) {
		this.gianhcho = gianhcho;
	}
	public Set<ChiTietSanPham> getChiTietSanPhams() {
		return chiTietSanPhams;
	}
	public void setChiTietSanPhams(Set<ChiTietSanPham> chiTietSanPhams) {
		this.chiTietSanPhams = chiTietSanPhams;
	}
	public Set<KhuyenMai> getDanhsachKhuyenMais() {
		return danhsachKhuyenMais;
	}
	public void setDanhsachKhuyenMais(Set<KhuyenMai> danhsachKhuyenMais) {
		this.danhsachKhuyenMais = danhsachKhuyenMais;
	}
	

}
