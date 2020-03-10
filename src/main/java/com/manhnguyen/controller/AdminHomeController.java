package com.manhnguyen.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.databind.JsonNode;
import com.manhnguyen.entity.Charts;
import com.manhnguyen.service.BillService;

import javassist.expr.NewArray;

@Controller
@RequestMapping(value = {"admin/"})
@SessionAttributes("dangnhap")
public class AdminHomeController {
	@Autowired
	BillService bill;
	@GetMapping
	public String deFault(HttpSession httpSession,ModelMap map) {
		if(httpSession.getAttribute("dangnhap")!=null)
		{
			String email=(String) httpSession.getAttribute("dangnhap");
			map.addAttribute("dangnhap",email);
		}
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
	public String tableProduct() {
		return "admin/tables";
	}
	@GetMapping("charts/")
	public String charts(ModelMap map) {
		
		
		List<Charts>list=bill.list();
		/*
		 * for (int i = 1; i <=5; i++) { Charts charts=new Charts(); charts.setMonth(i);
		 * charts.setPrice(10000+500*i); chaList.add(charts);
		 * 
		 * }
		 */
		
		
	
		
		
		map.addAttribute("tile",list);
		return "admin/charts";
		
	}

}
