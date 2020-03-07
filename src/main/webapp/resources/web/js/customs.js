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
	//
	TotalCart();
	Total();
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
			
				// reload data
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
	
	//update numItem --
	$(".ti-minus").on("click",function(){
		var num=$(".pricew1").text();
		num--;
		if(num<1){
			num=1;
		}
		$(".pricew1").text(num);
		//alert(num);
	})
	//update numItem++
		$(".ti-plus").on("click",function(){
		var num=$(".pricew1").text();
		num++;
		$(".pricew1").text(num);
		
	})
	//delivery
	$('ul').on('click','li.searchterm',function(){
			$("li").removeClass("active");
			$(this).addClass("active");
			$(this).parents().find(".cost").text($(this).text());
			//$(this).parents().find(".cost1").text("$ "+$(this).attr("data-deli"));
			

		})
	//Customer Information
		//load infor customer to bill
	$("#infor").on("change",function(){
		var name = $(this).find('input[name="name"]').val();
		var code=$(this).find('input[name="code"]').val();
		var house=$(this).find('input[name="house"]').val();
		var street=$(this).find('input[name="street"]').val();
		var apartment=$(this).find('input[name="apart"]').val();
		var city=$(this).find('input[name="city"]').val();
		var country=$(this).find('input[name="country"]').val();
		var phone=$(this).find('input[name="phone"]').val();
		var address=house+","+street+","+apartment+","+city+","+country;
		$(this).parents().find(".cname").text(name);
		$(this).parents().find(".ccode").text(code);
		$(this).parents().find(".caddress").text(address);
		$(this).parents().find(".cphone").text(phone);
		//console.log(name+address+phone);
	})
	//load data insert bill
	$(".off1").on("click",function(){
		var pa=$(this).parents().find("#infor");
		var name = pa.find('input[name="name"]').val();
		var code=pa.find('input[name="code"]').val();
		var house=pa.find('input[name="house"]').val();
		var street=pa.find('input[name="street"]').val();
		var apartment=pa.find('input[name="apart"]').val();
		var city=pa.find('input[name="city"]').val();
		var country=pa.find('input[name="country"]').val();
		var phone=pa.find('input[name="phone"]').val();
		var address=house+","+street+","+apartment+","+city+","+country;
		json={};
		json["name"]=name;
		json["address"]=address;
		json["phone"]=phone;
		json["delivery"]="money";
		json["cost"]=$(this).parents().find(".searchterm.active").attr("data-deli");
		console.log(json);
		$.ajax({
			url:"/Fashion/api/addBill",
			type:"GET",
			data:{
				datajson:JSON.stringify(json)
			},
			success: function(value){
				
			}	
	})
		
		
	})


        
      
	

});