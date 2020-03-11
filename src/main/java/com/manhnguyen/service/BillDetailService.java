package com.manhnguyen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manhnguyen.dao.BillDAO;
import com.manhnguyen.dao.BillDetailDAO;
import com.manhnguyen.daoimpl.BillDetail;
import com.manhnguyen.entity.ChiTietHoaDon;
@Service
public class BillDetailService implements BillDetail {

	@Autowired
	BillDetailDAO billDetailDAO;
	public boolean addBillDetail(ChiTietHoaDon cthd) {
		// TODO Auto-generated method stub
		return billDetailDAO.addBillDetail(cthd);
	}
	public Double totalBill(int index) {
		// TODO Auto-generated method stub
		return billDetailDAO.totalBill(index);
	}
	

}
