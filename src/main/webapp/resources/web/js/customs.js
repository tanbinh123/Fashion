$(document).ready(function(){
	//pagging
	$("body").on("click",".page-item",function(){
		$(".page-item").removeClass("active");
		$(this).addClass("active");
		var num=$(this).text();
		var start=(num-1)*9;
		$.ajax({
			url:"/Fashion/api/pagging",
			type:"GET",
			data:{
				start:start,
				
			},
			success: function(value){
				var body=$(".shop-items").find("div");
				body.empty();
				body.append(value);
				
			}	
	})
	})
	///count up or down item cart
	$(".ti-plus").click(function(){
		numItem=$(".val").text();
		numItem++;
		$(".val").text(numItem);
	})
	$(".ti-minus").click(function(){
		numItem=$(".val").text();
		numItem--;
		if(numItem<1){
			numItem=1;
		}
		$(".val").text(numItem);
	})
	GanTongTienGioHang();
	// add to cart
	$("body").on("click",".on2",function(e){
		e.preventDefault();
		var formdata=$("#formSanPham").serializeArray();
		json={};
		
		$.each(formdata,function(i,field){
			json[field.name]=field.value;
		})
		
		//name product
		name=$("#nameproduct").text();
		idname=$("#nameproduct").attr("data-idproduct");
		//
		price=$("#priceproduct").text().substring(2);
		// color
		idcolor= $("input[name='rd']:checked").val();
		color= $("input[name='rd']:checked").data('name');
		// size
		idsize=$("input[name='rd']:checked").data('idsize')
		size=$("input[name='rd']:checked").data('size');
		//số lượng
		numItem=$(".val").text();
		//detail
		iddetail=$("input[name='rd']:checked").data('iddetail');
		//img
		img=$(".cart-page-banner-bg").data('img');
		//insert JSON
		json["idcolor"]=idcolor;
		json["color"]=color;
		json["idsize"]=idsize;
		json["size"]=size;
		json["numItem"]=numItem;
		json["idname"]=idname;
		json["name"]=name;
		json["price"]=price;
		json["iddetail"]=iddetail;
		json["img"]=img;
		
		
		
		
		$.ajax({
			url:"/Fashion/api/addToCart",
			type:"GET",
			data:{
				datajson:JSON.stringify(json)
			},
			success: function(value){
				
			
				//location.reload();
			}	
	}).done(function() {
		$.ajax({
			url:"/Fashion/api/numItem",
			type:"GET",
			success: function(value){
			
				$(".cart-count").html("<span>"+value.length+"</span>");
				$(".numItem").html("<span>"+value.length+" Items"+"</span>");
				location.reload();
				GanTongTienGioHang();
				
				/*var total=0;
				$.each( value, function( key, value1 ) {
					
					 total+=parseInt(value1.giatien)*value1.soluong;
				});
				 $("#totalx").html("<span>"+"$"+total+"</span>");*/
			
			}
				
	})
	})
	

	})
	
	function GanTongTienGioHang(){
		var tongtiensp=0;
		$(".giatien").each(function() {
			var soluong = $(this).closest("tr").find(".soluong-giohang").val();
			
			var giatien=$(this).text();
			var tongtien=parseFloat(giatien)*soluong;
			tongtiensp+=tongtien;
			$("#tongtien").html(tongtiensp+" VND");
			$("#totalx").html(tongtiensp);
			
		})
	}
	$(".soluong-giohang").change(function () {
		
		var soluong=$(this).val();
		var giatien=$(this).closest("tr").find(".giatien").attr("data-value");
		GanTongTienGioHang();
	
		
		
//		var tongtien=soluong*parseInt(giatien);
//		
//		$(this).closest("tr").find(".giatien").html(tongtien+"");
		
		
		
		var mamau=$(this).closest("tr").find(".mau").attr("data-mamau");
		var masize=$(this).closest("tr").find(".size").attr("data-size");
		var masp=$(this).closest("tr").find(".tensp").attr("data-masp");
		$.ajax({
			url:"/mini-shop/api/CapNhatGioHang",
			type:"GET",
			data:{
				masp:masp,
				masize:masize,
				mamau:mamau,
				soluong:soluong,
				
			},
			success: function(value){
				
			}	
	})
	})

	/*finalTotal();

	function finalTotal(){
		
		var tongtiensp=0;
		$(".pricex").each(function() {
			var soluong=parseFloat($(this).text());
			var giatien=parseFloat($(".pricex").text());
			tongtiensp+=soluong*giatien;
			//alert(tongtien);
			$("#totalx").html(tongtiensp+" VND");
		})
	
	}*/
});