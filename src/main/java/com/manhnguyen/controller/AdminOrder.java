package com.manhnguyen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.manhnguyen.entity.ChiTietHoaDon;
import com.manhnguyen.service.BillDetailService;
import com.manhnguyen.service.BillService;
import com.manhnguyen.service.ContactService;

@Controller
@RequestMapping(value = {"admin/orders/"})
@SessionAttributes("dangnhap")

public class AdminOrder {
	@Autowired
	BillService bill;
	@Autowired
	BillDetailService billdt;
	@Autowired
	ContactService contact;
	@GetMapping("order/{id}")
	public String getOrder(@PathVariable int id,ModelMap map) {
		List<ChiTietHoaDon>list=billdt.getBillDetail(id);
		float sum=0;
		for (ChiTietHoaDon chiTietHoaDon : list) {
			sum+=Float.parseFloat(chiTietHoaDon.getGiatien())*chiTietHoaDon.getSoluong();
		}
		map.addAttribute("numbill", bill.getListCheckOut().size());
		//list ordered of customer
		map.addAttribute("listOrder",bill.getListCheckOut());
				//contact
		map.addAttribute("numContact",contact.getMessage().size());
				//list message
		map.addAttribute("listMessage", contact.getMessage());
		map.addAttribute("productdetail", list);
		map.addAttribute("sumOrder", sum);
		return "admin/blank";
	}

}
