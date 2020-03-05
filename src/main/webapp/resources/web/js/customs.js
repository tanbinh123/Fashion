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
			}
				
	})
	})
	

	})
	

	//Tính tổng tiền cho cart
	Total();
	function Total(){
		var total=0;
			//price =$(".price").attr("data-value");
			$(".pricew1").each(function(){
				var price=$(this).attr("data-value");
				var num=$(this).text();
				var sumTotal=parseFloat(price)*num;
				total+=sumTotal;
				$(".final").html("$"+total);
				$("#totalx").html("$"+total);
			})
	
		
	}
	//Tính tổng tiền cho cart file header
	TotalCart()
	function TotalCart(){
		var total=0;
			
			$(".pricew").each(function(){
				var price=$(this).attr("data-value");
				var num=$(this).text();
				var sumTotal=parseFloat(price)*num;
				total+=sumTotal;
				$("#totalx").html("$"+total);
			})
	
		
	}
	
	//Delete Item Cart
	$(".trash-icon").on("click",function(){	
		var sefl=$(this);
		var idproduct=$(this).parent().parent().find(".idpro").attr("data-masp");
		var idcolor=$(this).parent().parent().find(".idcolor").attr("data-mamau");
		var idsize=$(this).parent().parent().find(".idsize").attr("data-size");
		json={};
		json["idproduct"]=idproduct;
		json["idcolor"]=idcolor;
		json["idsize"]=idsize;
		console.log(json);

		$.ajax({
			url:"/Fashion/api/deleteItem",
			type:"GET",
			data:{
				datajson:JSON.stringify(json)
			},
			success: function(value){
				sefl.parent().parent().parent().remove();
				TotalCart();
				Total();
			
				//location.reload();
			}	
	}).done(function() {
		$.ajax({
			url:"/Fashion/api/numItem",
			type:"GET",
			success: function(value){
			
				$(".cart-count").html("<span>"+value.length+"</span>");
				$(".numItem").html("<span>"+value.length+" Items"+"</span>");
				//location.reload();
			}
				
	})
	})
		
	})
	
	


});