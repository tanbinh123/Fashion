package com.manhnguyen.daoimpl;

import java.util.List;

import com.manhnguyen.entity.ChiTietHoaDon;
import com.manhnguyen.entity.ChiTietHoaDonId;

public interface BillDetail {
	public boolean addBillDetail(ChiTietHoaDon cthd);
	public Double totalBill(int index);
	public List<ChiTietHoaDon> getBillDetail(int index);
	

}
