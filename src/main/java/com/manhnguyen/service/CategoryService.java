package com.manhnguyen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manhnguyen.dao.CategoryDAO;
import com.manhnguyen.daoimpl.CategoryImpl;
import com.manhnguyen.entity.DanhMucSanPham;
@Service
public class CategoryService implements CategoryImpl{

	@Autowired
	CategoryDAO categoryDAO;
	public List<DanhMucSanPham> CategoryList() {
		// TODO Auto-generated method stub
		return categoryDAO.CategoryList();
	}

}
