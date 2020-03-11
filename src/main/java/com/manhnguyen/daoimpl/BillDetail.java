package com.manhnguyen.daoimpl;

import com.manhnguyen.entity.ChiTietHoaDon;

public interface BillDetail {
	public boolean addBillDetail(ChiTietHoaDon cthd);
	public Double totalBill(int index);
	

}
