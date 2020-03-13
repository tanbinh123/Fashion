package com.manhnguyen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manhnguyen.dao.BillDAO;
import com.manhnguyen.dao.BillDetailDAO;
import com.manhnguyen.daoimpl.BillDetail;
import com.manhnguyen.entity.ChiTietHoaDon;
import com.manhnguyen.entity.ChiTietHoaDonId;
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
	public List<ChiTietHoaDon> getBillDetail(int index) {
		// TODO Auto-generated method stub
		return billDetailDAO.getBillDetail(index);
	}
	

}
