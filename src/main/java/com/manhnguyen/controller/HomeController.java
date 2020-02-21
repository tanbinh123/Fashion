package com.manhnguyen.controller;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.manhnguyen.entity.ChucVu;
import com.manhnguyen.entity.Contact;
import com.manhnguyen.entity.DanhMucSanPham;
import com.manhnguyen.entity.KhuyenMai;
import com.manhnguyen.entity.NhanVien;
import com.manhnguyen.entity.SanPham;
import com.manhnguyen.service.CategoryService;
import com.manhnguyen.service.ContactService;
import com.manhnguyen.service.DiscountService;
import com.manhnguyen.service.EmployeeService;
import com.manhnguyen.service.ProductService;

@Controller
@RequestMapping(value = {"/","home/"})
@SessionAttributes("dangnhap")
public class HomeController {
	@Autowired
	EmployeeService qlns;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	DiscountService discountService;
	@Autowired
	ContactService contactService;
	
	@GetMapping
	public String DefaultHome(ModelMap map,HttpSession httpSession) {
		if(httpSession.getAttribute("dangnhap")!=null)
		{
			String email=(String) httpSession.getAttribute("dangnhap");
			map.addAttribute("dangnhap",email);
		}
		//load product to fontend
		List<SanPham>list=productService.getListProduct();
		map.addAttribute("list", list);
		//load category
		List<DanhMucSanPham>listCategory=categoryService.CategoryList();
		map.addAttribute("listcategory", listCategory);
		//load discount
		KhuyenMai discount=discountService.Discount();
		map.addAttribute("discount",discount);
	
	
		return"web/home";
	}
	@GetMapping("Contact/")
	public String conTact(ModelMap map) {
		
		return "web/contact-us-page";
		
	}
	@PostMapping("sendContact/")
	public String sendContact(@RequestParam String fullname,@RequestParam String email,@RequestParam String reason,@RequestParam String message) {
		if(reason!="" && message!="") {
			Contact contact=new Contact();
			contact.setFullname(fullname);
			contact.setEmail(email);
			contact.setMessage(message);
			contact.setReason(reason);
			contactService.saveContact(contact);
		}
		return "redirect:/";
	}
	@GetMapping("Logout/")
	public String Logout(ModelMap map,HttpSession session,SessionStatus sessionStatus) {
		session.removeAttribute("dangnhap");
		String kt=(String) session.getAttribute("dangnhap");
		System.out.println("ss con lai "+kt);
		sessionStatus.setComplete();
        return "redirect:/";
		
	}
	
	@PostMapping("Singin/")
	public String Singin(@RequestParam String user,@RequestParam String pass,@RequestParam String email,@RequestParam String repass,@RequestParam(required=false) boolean check) {
		NhanVien nv= new NhanVien();
		ChucVu cv=new ChucVu();
		cv.setTenchucvu("KHACHHANG");
		cv.setMachucvu(1);
		if(pass.equals(repass)&& check==true) {
		nv.setChucvu(cv);
		nv.setEmail(email);
		nv.setTendangnhap(user);
		nv.setMatkhau(pass);
		boolean kt =qlns.insertCustomer(nv);
		if(kt!=true) {
			return "web/404";
		}
		}else {
			return "web/404";
		}
	
		return "redirect:/";
	}
	@PostMapping("Login/")
	public String Login(@RequestParam String username,@RequestParam String password,ModelMap map) {
		boolean kiemtra=qlns.checkLogin(username, password);
		if(kiemtra==true) {
			map.addAttribute("dangnhap", username);
			System.out.println("thanh cong");
			return "redirect:/";
			
		}
		
		return "web/404";
	}

}
