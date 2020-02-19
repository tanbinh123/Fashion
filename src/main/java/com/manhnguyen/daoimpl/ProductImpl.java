package com.manhnguyen.daoimpl;

import java.util.List;

import com.manhnguyen.entity.SanPham;

public interface ProductImpl {
	public List<SanPham> getListProduct();
	public List<SanPham> getListProductShoppage(int id,int start);
	public List<SanPham> getList_Category(int id);
	public SanPham getDetail(int id);

}
