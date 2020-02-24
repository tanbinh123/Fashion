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
	$("body").on("click",".template-btn2",function(e){
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
		price=$("#priceproduct").text();
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
		
		console.log(json);
		$.ajax({
			url:"/Fashion/api/addToCart",
			type:"GET",
			data:{
				datajson:JSON.stringify(json)
			},
			success: function(value){
				
				console.log(value);
			}	
	})
		
		
		
	})

	
});