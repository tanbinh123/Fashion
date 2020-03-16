package com.manhnguyen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.manhnguyen.entity.SanPham;
import com.manhnguyen.service.BillDetailService;
import com.manhnguyen.service.BillService;
import com.manhnguyen.service.CategoryService;
import com.manhnguyen.service.ColorService;
import com.manhnguyen.service.ContactService;
import com.manhnguyen.service.ProductService;
import com.manhnguyen.service.SizeService;

@Controller
@RequestMapping(value = {"admin/product/"})
@SessionAttributes("dangnhap")
public class AdminProduct {
	@Autowired
	ProductService product;
	@Autowired
	BillService bill;
	@Autowired
	BillDetailService billdt;
	@Autowired
	ContactService contact;
	@Autowired
	CategoryService cateService;
	@Autowired
	ColorService color;
	@Autowired
	SizeService size;
	@GetMapping
	public String defautl(ModelMap map) {
		List<SanPham>list=product.getListProductShoppage(3, 0);
		map.addAttribute("list",list);
		map.addAttribute("numbill", bill.getListCheckOut().size());
		//list ordered of customer
		map.addAttribute("listOrder",bill.getListCheckOut());
				//contact
		map.addAttribute("numContact",contact.getMessage().size());
				//list message
		map.addAttribute("listMessage", contact.getMessage());
		//list cate
		map.addAttribute("listcategory", cateService.CategoryList());
		map.addAttribute("listcolor",color.colorList());
		map.addAttribute("sizecategory", size.getSizeProduct());
		return "admin/product";
	}

}
