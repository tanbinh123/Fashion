package com.manhnguyen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manhnguyen.dao.ColorDAO;
import com.manhnguyen.daoimpl.ColorImpl;
import com.manhnguyen.entity.MauSanPham;

@Service
public class ColorService implements ColorImpl {

	@Autowired
	ColorDAO colorDAO;
	public List<MauSanPham> colorList() {
		// TODO Auto-generated method stub
		return colorDAO.colorList();
	}

}
