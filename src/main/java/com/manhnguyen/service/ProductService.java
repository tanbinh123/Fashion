package com.manhnguyen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manhnguyen.dao.ProductDAO;
import com.manhnguyen.daoimpl.ProductImpl;
import com.manhnguyen.entity.SanPham;
@Service
public class ProductService implements ProductImpl{

	@Autowired
	ProductDAO productDAO;
	public List<SanPham> getListProduct() {
		// TODO Auto-generated method stub
		return productDAO.getListProduct();
	}
	public List<SanPham> getListProductShoppage(int id,int start) {
		// TODO Auto-generated method stub
		return productDAO.getListProductShoppage(id,start);
	}

}
