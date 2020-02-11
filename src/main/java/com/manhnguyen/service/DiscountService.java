package com.manhnguyen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manhnguyen.dao.DiscountDAO;
import com.manhnguyen.daoimpl.DiscountImpl;
import com.manhnguyen.entity.KhuyenMai;

@Service
public class DiscountService implements DiscountImpl {

	@Autowired
	DiscountDAO discountDAO;
	public KhuyenMai Discount() {
		// TODO Auto-generated method stub
		return discountDAO.Discount();
	}

}
