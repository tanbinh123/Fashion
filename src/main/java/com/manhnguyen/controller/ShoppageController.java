package com.manhnguyen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
		List<SanPham> listproduct=productService.getListProductShoppage(2,0);
		map.addAttribute("listproduct",listproduct);
		// all item 
		List<SanPham> listboss=productService.getListProductShoppage(-1,0);
		map.addAttribute("listboss",listboss);
		// sum page load product
		double num =Math.ceil((double)listboss.size()/9);
		map.addAttribute("num",num);
		
		
		return"web/shop-page";
		
	}
	@GetMapping("{id}/{tendanhmuc}")
	public String getProductCategory(ModelMap map,@PathVariable int id,@PathVariable String tendanhmuc) {
		List<DanhMucSanPham> list=categoryService.CategoryList();
		map.addAttribute("listcategory", list);
		// get list size product
		List<SizeSanPham>listsize=sizeService.getSizeProduct();
		map.addAttribute("listsize",listsize);
		// get list color product
		List<MauSanPham> listcolor=colorService.colorList();
		map.addAttribute("listcolor",listcolor);
		map.addAttribute("categoryname",tendanhmuc);
		List<SanPham>list_category=productService.getList_Category(id);
		map.addAttribute("listproduct",list_category);
		List<SanPham> listboss=productService.getList_Category(id);
		map.addAttribute("listboss",listboss);
		// sum page load product
		double num =Math.ceil((double)listboss.size()/9);
		map.addAttribute("num",num);

		return "web/shop-page";
	}
	@GetMapping("detail/{idproduct}")
	public String getProductDetail(ModelMap map,@PathVariable int idproduct) {
		
		SanPham product=productService.getDetail(idproduct);
		map.addAttribute("product",product);
		return"web/cart-page";
	}
	@GetMapping("search")
	public String Search(ModelMap map,@RequestParam String search) {
		List<SanPham>list=productService.search(search);
		map.addAttribute("listproduct",list);
		// get list category 
		List<DanhMucSanPham> list1=categoryService.CategoryList();
				map.addAttribute("listcategory", list1);
				// get list size product
		List<SizeSanPham>listsize=sizeService.getSizeProduct();
				map.addAttribute("listsize",listsize);
				// get list color product
		List<MauSanPham> listcolor=colorService.colorList();
				map.addAttribute("listcolor",listcolor);
		map.addAttribute("listboss",list);
		double num =Math.ceil((double)list.size()/9);
		map.addAttribute("num",num);
		return "web/shop-page";
	}
	

}
