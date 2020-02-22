package com.manhnguyen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = {"admin/"})
public class AdminHomeController {
	
	@GetMapping
	public String deFault() {
		return "admin/index";
	}

}
