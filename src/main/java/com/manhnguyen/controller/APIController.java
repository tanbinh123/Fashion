package com.manhnguyen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manhnguyen.entity.ChiTietSanPham;
import com.manhnguyen.entity.SanPham;
import com.manhnguyen.service.ProductService;

@Controller
@RequestMapping(value = "api/")
public class APIController {
	@Autowired
	ProductService productService;
	
	@GetMapping("pagging")
	@ResponseBody
	public String pagging(@RequestParam int start) {
		List<SanPham>list=productService.getListProductShoppage(2, start);
		String html="";
		for (SanPham sanPham : list) {
			html+=	"<div class='col-lg-4 col-md-6'>" + 
					"<div class='single-cart-item'>" + 
					"<div class='single-cart-image'>"+
					"<img class='image-item-01 item-active' src='/Fashion/resources/web/img/shop-page/" +sanPham.getHinhsanpham()+"'>"+
					"</div>"+
					" <span class='love-icon'><i class='fa fa-heart'></i></span>"+
					"<div class='single-cart-content'>" + 
					"<div class='cart-content-left'>" + 
					"<ul class='cart-rating'>" + 
					"<li><i class='fa fa-star'></i></li>" + 
					"<li><i class='fa fa-star'></i></li>" + 
					"<li><i class='fa fa-star'></i></li>" + 
					"<li><i class='fa fa-star'></i></li>" + 
					"<li class='diff-color'><i class='fa fa-star'></i></li>" + 
					"</ul>"+
					"<h5>"+sanPham.getTensanpham()+"</h5>"+
					"<ul class='cart-size'>";
					for (ChiTietSanPham ctsp : sanPham.getChiTietSanPhams()) {
						html+="<li class='size' data-size='"+ctsp.getSizeSanPham().getMasize()+"'><span>"+ctsp.getSizeSanPham().getSize() +"</span></li>";
					}
					html+="</ul>"+
					"</div>"+
					"<div class='cart-content-right'>" + 
					"<span class='current-price'>$"+sanPham.getGiatien()+"</span>" + 
					"</div>"+
					"</div>"+
					/*
					 * "<div class='row justify-content-center'>" +
					 * "<a href='#'class='cart-button floating-icon-1 btn btn-secondary'>Add to cart</a>"
					 * + "</div>"+
					 */
					"</div>" + 
					"</div>";
		}
		return html;
		
	}


}
