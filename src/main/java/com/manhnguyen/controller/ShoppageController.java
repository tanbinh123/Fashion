package com.manhnguyen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.manhnguyen.entity.DanhMucSanPham;
import com.manhnguyen.entity.MauSanPham;
import com.manhnguyen.entity.SanPham;
import com.manhnguyen.entity.SizeSanPham;
import com.manhnguyen.service.CategoryService;
import com.manhnguyen.service.ColorService;
import com.manhnguyen.service.ProductService;
import com.manhnguyen.service.SizeService;

@Controller
@RequestMapping(value = "shoppage/")
public class ShoppageController {
	@Autowired
	CategoryService categoryService;
	@Autowired
	SizeService sizeService;
	@Autowired
	ColorService colorService;
	@Autowired
	ProductService productService;
	
	@GetMapping
	public String defautShoppage(ModelMap map) {
		// get list category 
		List<DanhMucSanPham> list=categoryService.CategoryList();
		map.addAttribute("listcategory", list);
		// get list size product
		List<SizeSanPham>listsize=sizeService.getSizeProduct();
		map.addAttribute("listsize",listsize);
		// get list color product
		List<MauSanPham> listcolor=colorService.colorList();
		map.addAttribute("listcolor",listcolor);
		// get list product
		List<SanPham> listproduct=productService.getListProductShoppage(2,1);
		map.addAttribute("listproduct",listproduct);
		// all item 
		List<SanPham> listboss=productService.getListProductShoppage(-1,-1);
		// sum page load product
		double num =Math.ceil((double)listboss.size()/5);
		map.addAttribute("num",num);
		
		
		return"web/shop-page";
		
	}
	

}
