package com.manhnguyen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.manhnguyen.entity.SanPham;
import com.manhnguyen.service.ProductService;

@Controller
@RequestMapping(value = {"admin/product/"})
@SessionAttributes("dangnhap")
public class AdminProduct {
	@Autowired
	ProductService product;
	@GetMapping
	public String defautl(ModelMap map) {
		List<SanPham>list=product.getListProductShoppage(3, 0);
		map.addAttribute("list",list);
		return "admin/product";
	}

}
