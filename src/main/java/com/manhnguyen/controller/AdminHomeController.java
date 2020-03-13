package com.manhnguyen.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.databind.JsonNode;
import com.manhnguyen.entity.Charts;
import com.manhnguyen.entity.ChiTietHoaDon;
import com.manhnguyen.entity.ChiTietHoaDonId;
import com.manhnguyen.service.BillDetailService;
import com.manhnguyen.service.BillService;
import com.manhnguyen.service.ContactService;

import javassist.expr.NewArray;

@Controller
@RequestMapping(value = {"admin/"})
@SessionAttributes("dangnhap")
public class AdminHomeController {
	@Autowired
	BillService bill;
	@Autowired
	BillDetailService billdt;
	@Autowired
	ContactService contact;
	@GetMapping
	public String deFault(HttpSession httpSession,ModelMap map) {
		if(httpSession.getAttribute("dangnhap")!=null)
		{
			String email=(String) httpSession.getAttribute("dangnhap");
			map.addAttribute("dangnhap",email);
		}
		List<Charts>list=bill.list();
		map.addAttribute("tile",list);
		// get cost sum of month 
		map.addAttribute("totalmonth", billdt.totalBill(1));
		//get cost sum of year
		map.addAttribute("totalyear", billdt.totalBill(0));
		//bill check out
		map.addAttribute("numbill", bill.getListCheckOut().size());
		//list ordered of customer
		map.addAttribute("listOrder",bill.getListCheckOut());
		//contact
		map.addAttribute("numContact",contact.getMessage().size());
		//list message
		map.addAttribute("listMessage", contact.getMessage());
		return "admin/home";
	}
	@GetMapping("SinginAdmin/")
	public String SingInAdmin() {
		return "admin/register";
	}
	@GetMapping("LoginAdmin/")
	public String LoginAdmin() {
		return "admin/login";
	}
	@GetMapping("forgotpassword/")
	public String forGotPass() {
		return "admin/forgot-password";
	}
	@GetMapping("tableproduct/")
	public String tableProduct(ModelMap map) {
		
		  //bill check out 
		  map.addAttribute("numbill", bill.getListCheckOut().size());
		  //list ordered of customer
		  map.addAttribute("listOrder",bill.getListCheckOut()); //contact
		  map.addAttribute("numContact",contact.getMessage().size()); //list message
		  map.addAttribute("listMessage", contact.getMessage());
		 
		return "admin/tables";
	}
	@GetMapping("charts/")
	public String charts(ModelMap map) {
		List<Charts>list=bill.list();
		map.addAttribute("tile",list);
		//bill check out
		map.addAttribute("numbill", bill.getListCheckOut().size());
				//list ordered of customer
		map.addAttribute("listOrder",bill.getListCheckOut());
				//contact
		map.addAttribute("numContact",contact.getMessage().size());
				//list message
		map.addAttribute("listMessage", contact.getMessage());
		return "admin/charts";
		
	}
}
