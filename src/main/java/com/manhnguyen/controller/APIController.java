package com.manhnguyen.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.manhnguyen.entity.ChiTietSanPham;
import com.manhnguyen.entity.GioHang;
import com.manhnguyen.entity.SanPham;
import com.manhnguyen.service.ProductService;

@Controller
@RequestMapping(value = "api/")
@SessionAttributes({"carts","dangnhap"})
public class ApiController {
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
					  "<div class='row justify-content-center'>" +
					  "<a href='#'class='cart-button floating-icon-1 btn btn-secondary'>Add to cart</a>"
					  + "</div>"+ 
					"</div>" + 
					"</div>";
		}
		return html;
		
	}

	
	@GetMapping("addToCart")
	@ResponseBody
	public void addToCart(@RequestParam String datajson,HttpSession httpSession) throws IOException {
		ObjectMapper oMapper=new ObjectMapper();
		JsonNode jsonNode=oMapper.readTree(datajson);
		//session not exist add item in carts and create session carts
		if(null==httpSession.getAttribute("carts")) {
			GioHang cart=new GioHang();
			cart.setMamau(jsonNode.get("idcolor").asInt());
			cart.setTenmau(jsonNode.get("color").asText());
			cart.setSoluong(jsonNode.get("numItem").asInt());
			cart.setMasize(jsonNode.get("idsize").asInt());
			cart.setTensize(jsonNode.get("size").asText());
			
			cart.setMachitiet(jsonNode.get("iddetail").asInt());
			cart.setMasp(jsonNode.get("idname").asInt());
			cart.setTensp(jsonNode.get("name").asText());
			cart.setGiatien(jsonNode.get("price").asText());
			cart.setImg(jsonNode.get("img").asText());
			
			List<GioHang>list=new ArrayList<GioHang>();
			list.add(cart);
			httpSession.setAttribute("carts",list);
			System.out.println("khoi tao cart");
	
		}else {
			List<GioHang>list=(List<GioHang>) httpSession.getAttribute("carts");
			int idproduct=jsonNode.get("idname").asInt();
			int idcolor=jsonNode.get("idcolor").asInt();
			int idsize=jsonNode.get("idsize").asInt();
			int index=checkItemExist(idproduct, idcolor, idsize, list);
			if(index==-1) {
				GioHang cart=new GioHang();
				cart.setMamau(jsonNode.get("idcolor").asInt());
				cart.setTenmau(jsonNode.get("color").asText());
				cart.setSoluong(jsonNode.get("numItem").asInt());
				cart.setMasize(jsonNode.get("idsize").asInt());
				cart.setTensize(jsonNode.get("size").asText());
				
				cart.setMachitiet(jsonNode.get("iddetail").asInt());
				cart.setMasp(jsonNode.get("idname").asInt());
				cart.setTensp(jsonNode.get("name").asText());
				cart.setGiatien(jsonNode.get("price").asText());
				cart.setImg(jsonNode.get("img").asText());
				list.add(cart);
				System.out.println("Them san pham vao");
			}else {
				int newItem=list.get(index).getSoluong()+1;
				list.get(index).setSoluong(newItem);
				System.out.println("soluong la"+list.get(index).getSoluong());
			}
			
		}
	
		
	}
	
	
	//check item exist in carts
	public int checkItemExist(int idproduct,int idcolor,int idsize,List<GioHang> lists) {
		for (int i = 0; i < lists.size(); i++) {
			if(lists.get(i).getMasp()==idproduct&&lists.get(i).getMamau()==idcolor&&lists.get(i).getMasize()==idsize) {
				return i;
			}
			
		}
		return -1;
		
	}
	/*
	 * //get numItem
	 * 
	 * @GetMapping("numItem")
	 * 
	 * @ResponseBody public String getNumItemCarts(HttpSession httpSession) {
	 * if(null!=httpSession.getAttribute("carts")) {
	 * List<GioHang>list=(List<GioHang>) httpSession.getAttribute("carts"); return
	 * ""+list.size(); } return ""; }
	 */


}
