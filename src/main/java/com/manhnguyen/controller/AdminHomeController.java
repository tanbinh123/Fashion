package com.manhnguyen.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping(value = {"admin/"})
@SessionAttributes("dangnhap")
public class AdminHomeController {
	
	@GetMapping
	public String deFault(HttpSession httpSession,ModelMap map) {
		if(httpSession.getAttribute("dangnhap")!=null)
		{
			String email=(String) httpSession.getAttribute("dangnhap");
			map.addAttribute("dangnhap",email);
		}
		return "admin/register";
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

}
