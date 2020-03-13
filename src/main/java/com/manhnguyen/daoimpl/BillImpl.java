package com.manhnguyen.daoimpl;

import java.util.List;

import com.manhnguyen.entity.Charts;
import com.manhnguyen.entity.HoaDon;

public interface BillImpl {
	public int addBillCustomer(HoaDon hd);
	public List<Charts> list();
	public List<HoaDon>getListCheckOut();
	public int AcceptOrder(int hd);
	

}
