package com.manhnguyen.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.manhnguyen.entity.ChiTietHoaDon;
import com.manhnguyen.entity.ChiTietHoaDonId;
import com.manhnguyen.entity.ChiTietSanPham;
import com.manhnguyen.entity.DanhMucSanPham;
import com.manhnguyen.entity.GioHang;
import com.manhnguyen.entity.HoaDon;
import com.manhnguyen.entity.JSONSanPham;
import com.manhnguyen.entity.MauSanPham;
import com.manhnguyen.entity.NhanVien;
import com.manhnguyen.entity.SanPham;
import com.manhnguyen.entity.SizeSanPham;
import com.manhnguyen.service.BillDetailService;
import com.manhnguyen.service.BillService;
import com.manhnguyen.service.EmployeeService;
import com.manhnguyen.service.ProductService;

@Controller
@RequestMapping(value = "api/")
@SessionAttributes({ "carts", "dangnhap" })
public class APIController {
	@Autowired
	ProductService productService;
	@Autowired
	BillService billService;
	@Autowired
	BillDetailService billDetailService;

	@Autowired
	EmployeeService empl;
	@GetMapping("pagging")
	@ResponseBody
	public String pagging(@RequestParam int start) {
		List<SanPham> list = productService.getListProductShoppage(2, start);
		String html = "";
		for (SanPham sanPham : list) {
			html += "<div class='col-lg-4 col-md-6'>" + "<div class='single-cart-item'>"
					+ "<div class='single-cart-image'>"
					+ "<img class='image-item-01 item-active' src='/Fashion/resources/web/img/shop-page/"
					+ sanPham.getHinhsanpham() + "'>" + "</div>"
					+ " <span class='love-icon'><i class='fa fa-heart'></i></span>"
					+ "<div class='single-cart-content'>" + "<div class='cart-content-left'>"
					+ "<ul class='cart-rating'>" + "<li><i class='fa fa-star'></i></li>"
					+ "<li><i class='fa fa-star'></i></li>" + "<li><i class='fa fa-star'></i></li>"
					+ "<li><i class='fa fa-star'></i></li>" + "<li class='diff-color'><i class='fa fa-star'></i></li>"
					+ "</ul>" + "<h5>" + sanPham.getTensanpham() + "</h5>" + "<ul class='cart-size'>";
			for (ChiTietSanPham ctsp : sanPham.getChiTietSanPhams()) {
				html += "<li class='size' data-size='" + ctsp.getSizeSanPham().getMasize() + "'><span>"
						+ ctsp.getSizeSanPham().getSize() + "</span></li>";
			}
			html += "</ul>" + "</div>" + "<div class='cart-content-right'>" + "<span class='current-price'>$"
					+ sanPham.getGiatien() + "</span>" + "</div>" + "</div>"
					+ "<div class='row justify-content-center'>"
					+ "<a href='#'class='cart-button floating-icon-1 btn btn-secondary'>Add to cart</a>" + "</div>"
					+ "</div>" + "</div>";
		}
		return html;

	}

	@GetMapping("addToCart")
	@ResponseBody
	public void addToCart(@RequestParam String datajson, HttpSession httpSession) throws IOException {
		ObjectMapper oMapper = new ObjectMapper();
		JsonNode jsonNode = oMapper.readTree(datajson);
		// session not exist add item in carts and create session carts
		if (null == httpSession.getAttribute("carts")) {
			GioHang cart = new GioHang();
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

			List<GioHang> list = new ArrayList<GioHang>();
			list.add(cart);
			httpSession.setAttribute("carts", list);
		

		} else {
			List<GioHang> list = (List<GioHang>) httpSession.getAttribute("carts");
			int idproduct = jsonNode.get("idname").asInt();
			int idcolor = jsonNode.get("idcolor").asInt();
			int idsize = jsonNode.get("idsize").asInt();
			int index = checkItemExist(idproduct, idcolor, idsize, list);
			if (index == -1) {
				GioHang cart = new GioHang();
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
				
			} else {
				int newItem = list.get(index).getSoluong() + 1;
				list.get(index).setSoluong(newItem);
			
			}

		}

	}

	// check item exist in carts
	public int checkItemExist(int idproduct, int idcolor, int idsize, List<GioHang> lists) {
		for (int i = 0; i < lists.size(); i++) {
			if (lists.get(i).getMasp() == idproduct && lists.get(i).getMamau() == idcolor
					&& lists.get(i).getMasize() == idsize) {
				return i;
			}

		}
		return -1;

	}
	
	  //get numItem
	  
	  @GetMapping("numItem")
	  @ResponseBody 
	  public List<GioHang> getNumItemCarts(HttpSession httpSession,ModelMap map) {
		  if(null!=httpSession.getAttribute("carts")) {
		  List<GioHang>list=(List<GioHang>) httpSession.getAttribute("carts"); 
		 
			
		  return list;
		  }
		 return null;
	}
	  @GetMapping("deleteItem")
	  @ResponseBody
	  public void deleteItem(@RequestParam String datajson,HttpSession httpSession) throws IOException {
		  if(httpSession!=null) {
			  ObjectMapper objectMapper=new ObjectMapper();
			  JsonNode jsonNode=objectMapper.readTree(datajson);
			  int idproduct=jsonNode.get("idproduct").asInt();
			  int idcolor=jsonNode.get("idcolor").asInt();
			  int idsize=jsonNode.get("idsize").asInt();
			  List<GioHang>list=(List<GioHang>) httpSession.getAttribute("carts");
			  int index=checkItemExist(idproduct, idcolor, idsize, list);
			  list.remove(index);
			  
		  }
		
		  
	  }

	  @GetMapping("addBill")
	  @ResponseBody
	  public void addBillCustomer(@RequestParam String datajson,HttpSession httpSession) throws IOException {
		  if(httpSession!=null) {
			  ObjectMapper mapper=new ObjectMapper();
			  JsonNode jsonNode=mapper.readTree(datajson);
			  String name=jsonNode.get("name").asText();
			  String address=jsonNode.get("address").asText();
			  String phone=jsonNode.get("phone").asText();
			  String delivery=jsonNode.get("delivery").asText();
			  HoaDon hd=new HoaDon();
			  hd.setTenkhachhang(name);
			  hd.setSodt(phone);
			  hd.setTinhtrang(false);
			  hd.setNgaylap(java.time.LocalDate.now().toString());
			  hd.setDiachigiaohang(address);
			  int id=billService.addBillCustomer(hd);
			  List<GioHang>lists=(List<GioHang>) httpSession.getAttribute("carts");
			  if(id>0) 
			  {
				  for (GioHang gioHang : lists) {
					  ChiTietHoaDonId ctChiTietHoaDonId=new ChiTietHoaDonId();
					  ctChiTietHoaDonId.setMachitietsanpham(gioHang.getMachitiet());
					  ctChiTietHoaDonId.setMahoadon(hd.getMahoadon());
					  ChiTietHoaDon billDetail=new ChiTietHoaDon();
					  billDetail.setChiTietHoaDonId(ctChiTietHoaDonId);
					  billDetail.setGiatien(gioHang.getGiatien());
					  billDetail.setSoluong(gioHang.getSoluong());
					  billDetail.setNgayhd(java.time.LocalDate.now().toString());
					  billDetailService.addBillDetail(billDetail);
				}
			  }
			 
			 
			  System.out.println(id);
		  }
	  }
	  ////////////////////////////////API Admin page
	  @GetMapping("loginAdmin")
	  @ResponseBody
	  public String Login(@RequestParam String username,@RequestParam String password,ModelMap map) {
		  boolean check=empl.checkLogin(username, password);
		  if(check==true) {
			map.addAttribute("dangnhap",username);
			  return "true";
		  }
		  return "false";
	  }
	  @GetMapping("siginAdmin")
	  @ResponseBody
	  public String Sigin(@RequestParam String json) throws IOException {
		 ObjectMapper objectMapper=new ObjectMapper();
		 JsonNode jsonNode=objectMapper.readTree(json);
		 String password=jsonNode.get("password").asText();
		 String repass=jsonNode.get("repass").asText();
		 if(password.equals(repass)) {
			 NhanVien nhanVien=new NhanVien();
			 nhanVien.setHoten(jsonNode.get("name").asText());
			 nhanVien.setTendangnhap(jsonNode.get("email").asText());
			 nhanVien.setMatkhau(password);
			 nhanVien.setEmail(jsonNode.get("email").asText());
			 empl.insertCustomer(nhanVien);
			 return "true";
			 
		 }
		return "false";
		  
	  }
	  @GetMapping("acceptOrder")
	  @ResponseBody
	  public String Accept(@RequestParam int id) {
		  int check=billService.AcceptOrder(id);
		  if(check==1) {
			  return "true";
		  }
		  return "false";
		  
		  
		  
	  }
	  @GetMapping("deleteProduct")
	  @ResponseBody
	  public void deleteProduct(@RequestParam int id) {
		  productService.deleteProduct(id);
	  }
	 
	  	@Autowired
		ServletContext context;
		@PostMapping("UploadFile")
		@ResponseBody
		public String UploadFile(MultipartHttpServletRequest request) {
			String path_save_file=context.getRealPath("/resources/web/img/shop-page/");
			Iterator<String>listNames=request.getFileNames();
			MultipartFile mpf=request.getFile(listNames.next());
			File file_save=new File(path_save_file+mpf.getOriginalFilename());
			try {
				mpf.transferTo(file_save);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println(file_save);
			return"true";
		}
		@GetMapping("addProduct")
		@ResponseBody
		public String addProduct(@RequestParam String json) throws IOException {
			ObjectMapper oMapper=new ObjectMapper();
			JsonNode jsonNode=oMapper.readTree(json);
			SanPham product=new SanPham();
			product.setTensanpham(jsonNode.get("nameproduct").asText());
			product.setGiatien(jsonNode.get("price").asInt());
			product.setGianhcho(jsonNode.get("forcustomer").asText());
			DanhMucSanPham category=new DanhMucSanPham();
			category.setMadanhmuc(jsonNode.get("category").asInt());
			product.setDanhMucSanPham(category);
			product.setHinhsanpham(jsonNode.get("img").asText());
			product.setMota(jsonNode.get("discriber").asText());
			JsonNode jsonChitiet=jsonNode.get("detail");
			Set<ChiTietSanPham>listProductDetail=new HashSet<ChiTietSanPham>();
			for (JsonNode jsonNode2 : jsonChitiet) {
				ChiTietSanPham detail=new ChiTietSanPham();
				MauSanPham color=new MauSanPham();
				color.setMamau(jsonNode2.get("color").asInt());
				detail.setMauSanPham(color);
				SizeSanPham size=new SizeSanPham();
				size.setMasize(jsonNode2.get("size").asInt());
				detail.setSizeSanPham(size);
				detail.setSoluong(jsonNode2.get("quatity").asInt());
				listProductDetail.add(detail);
				detail.setNgaynhap(java.time.LocalDate.now().toString());
				
			}
			product.setChiTietSanPhams(listProductDetail);
			productService.addProduct(product);
			
			return "";
		}
		@PostMapping(path="getProduct", produces="application/json;charset=utf-8")
		@ResponseBody
		public JSONSanPham layDSSpTheoMa(@RequestParam int id) {
			SanPham product=productService.getListProduct(id);
			JSONSanPham json=new JSONSanPham();
			json.setMasanpham(product.getMasanpham());
			json.setTensanpham(product.getTensanpham());
			json.setGiatien(product.getGiatien());
			json.setGianhcho(product.getGianhcho());
			json.setMota(product.getMota());
			DanhMucSanPham danhMucSanPham = new DanhMucSanPham();
			danhMucSanPham.setMadanhmuc(product.getDanhMucSanPham().getMadanhmuc());
			danhMucSanPham.setTendanhmuc(product.getDanhMucSanPham().getTendanhmuc());
			json.setDanhMucSanPham(danhMucSanPham);
			Set<ChiTietSanPham> chiTietSanPhams = new HashSet<ChiTietSanPham>();
			for (ChiTietSanPham value : product.getChiTietSanPhams()) {
				ChiTietSanPham chiTietSp = new ChiTietSanPham();
				
				chiTietSp.setMachitietsanpham(value.getMachitietsanpham());
				
				MauSanPham mauSanPham = new MauSanPham();
				mauSanPham.setMamau(value.getMauSanPham().getMamau());
				mauSanPham.setTenmau(value.getMauSanPham().getTenmau());
				
				chiTietSp.setMauSanPham(mauSanPham);
				
				SizeSanPham sizeSanPham = new SizeSanPham();
				sizeSanPham.setMasize(value.getSizeSanPham().getMasize());
				sizeSanPham.setSize(value.getSizeSanPham().getSize());
				
				chiTietSp.setSizeSanPham(sizeSanPham);
				chiTietSp.setSoluong(value.getSoluong());
				
				chiTietSanPhams.add(chiTietSp);
			}
			json.setChiTietSanPhams(chiTietSanPhams);
			
			return json;
		
		}
		@GetMapping("updateProduct")
		@ResponseBody
		public void UpdateProduct(@RequestParam String json) throws IOException {
			ObjectMapper oMapper=new ObjectMapper();
			JsonNode jsonNode=oMapper.readTree(json);
			SanPham product=new SanPham();
			product.setTensanpham(jsonNode.get("nameproduct").asText());
			product.setGiatien(jsonNode.get("price").asInt());
			product.setGianhcho(jsonNode.get("forcustomer").asText());
			DanhMucSanPham category=new DanhMucSanPham();
			category.setMadanhmuc(jsonNode.get("category").asInt());
			product.setDanhMucSanPham(category);
			product.setHinhsanpham(jsonNode.get("img").asText());
			product.setMota(jsonNode.get("discriber").asText());
			JsonNode jsonChitiet=jsonNode.get("detail");
			Set<ChiTietSanPham>listProductDetail=new HashSet<ChiTietSanPham>();
			for (JsonNode jsonNode2 : jsonChitiet) {
				ChiTietSanPham detail=new ChiTietSanPham();
				MauSanPham color=new MauSanPham();
				color.setMamau(jsonNode2.get("color").asInt());
				detail.setMauSanPham(color);
				SizeSanPham size=new SizeSanPham();
				size.setMasize(jsonNode2.get("size").asInt());
				detail.setSizeSanPham(size);
				detail.setSoluong(jsonNode2.get("quatity").asInt());
				listProductDetail.add(detail);
				detail.setNgaynhap(java.time.LocalDate.now().toString());
				
			}
			product.setChiTietSanPhams(listProductDetail);
			product.setMasanpham(jsonNode.get("id").asInt());
			productService.updateProduct(product);
			
		}

}
