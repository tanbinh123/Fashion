package com.manhnguyen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manhnguyen.dao.SizeDAO;
import com.manhnguyen.daoimpl.SizeImpl;
import com.manhnguyen.entity.SizeSanPham;

@Service
public class SizeService implements SizeImpl{

	@Autowired
	SizeDAO sizeDAO;
	public List<SizeSanPham> getSizeProduct() {
		// TODO Auto-generated method stub
		return sizeDAO.getSizeProduct();
	}

}
