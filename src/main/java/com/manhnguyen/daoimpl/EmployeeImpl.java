package com.manhnguyen.daoimpl;

import com.manhnguyen.entity.NhanVien;

public interface EmployeeImpl {
	public boolean checkLogin(String username,String password);
	public boolean insertCustomer(NhanVien nv);

}
