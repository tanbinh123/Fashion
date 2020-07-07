$(document).ready(function(){
	
	//Login Admin
	$(".btn-login").on("click",function(){
		var username=$('input[type="email"]').val();
		var password=$('input[type="password"').val();
		$.ajax({
			url:"/Fashion/api/loginAdmin",
			type:"GET",
			data:{
				username:username,
				password:password,
				
			},
			success: function(value){
				if(value=="true"){
					 window.location="/Fashion/admin/home";
				}else{
					$("#checklogin").text("Đăng nhập thất bại");
				}
			}	
	})
	})
	//SiginAdmin
	$(".btn-register").on("click",function(){
		var firstName=$('input[name="exampleFirstName"]').val();
		var lastName=$('input[name="exampleLastName"]').val();
		var email=$('input[name="exampleInputEmail"]').val();
		var password=$('input[name="exampleInputPassword"]').val();
		var repassword=$('input[name="exampleRepeatPassword"]').val();
		json={};
		json["name"]=firstName+lastName;
		json["email"]=email;
		json["password"]=password;
		json["repass"]=repassword;
		console.log(json);
		$.ajax({
			url:"/Fashion/api/siginAdmin",
			type:"GET",
			data:{
				json:JSON.stringify(json)
				
			},
			success: function(value){
				if(value=="true"){
					 window.location="/Fashion/admin/LoginAdmin/";
				}
			}	
	})
	})
	
	function hiddenBtn(){
		s=$(".btn-accept").attr("data-state");
		if(s==="true"){
			$(".btn-accept").hide();
		}
	}
	hiddenBtn();
	$(".btn-accept").on("click",function(){
		id=$(this).attr("data-id");
		$.ajax({
			url:"/Fashion/api/acceptOrder",
			type:"GET",
			data:{
				id:id
				
			},
			success: function(value){
				if(value=="true"){
					$(".btn-accept").hide();
					$(".alert-success").removeClass("hide1");
					$(".alert-success").text("Accepted Success");
					$(".alert-success").css('text-align','center');
				}
			}	
	})
	})
	hidden()
	function hidden(){
		$(".addproduct").find("div").hide();
		$(".btn-back").hide();
		//$(".btn-back").css('display','none');
	}
	$(".btn-add").on("click",function(){
		$(".card-body").find(".table-responsive").find("div").hide();
		$(".card-body").find(".addproduct").find("div").show();
		$(".update-product").hide();
		$(".btn-back").show();
		
	})
	$("body").on("click",".add-detail",function(){
		$(this).remove();
		var chitietclone=$("#chitietsanpham").clone().removeAttr("id");
		$("#containerchitietsanpham").append(chitietclone);
	})
	$(".btn-back").on("click",function(){
		
		$(".card-body").find(".addproduct").find("div").hide();
		$(".card-body").find(".table-responsive").find("div").show();
		$(this).hide();
		
	})
	$("#dataTable").on("click",".btn-delete",function(event){
		event.preventDefault();
		data=$(this).attr("data-id");
		$.ajax({
			url:"/Fashion/api/deleteProduct",
			type:"GET",
			data:{
				id:data
				
			},
			success: function(value){
				location.reload();
			}	
	})
	
	})
	files=[];
	filename="";
	$("#filename").on("change",function(event){
		files=event.target.files;
		filename=event.target.files[0].name;
		forms=new FormData();
		forms.append("file",files[0]);
		$.ajax({
			url:"/Fashion/api/UploadFile",
			type:"POST",
			data:forms,
			contentType:false,
			processData:false,
			enctype:"multipart/form-data",
			success: function(value){
				
				
			}	
	})
		
	})
	
	$(".add-product").on("click",function(e){
		e.preventDefault();
		json1={};
		arraydetail=[];
		name=$('input[id="nameproduct"]').val();
		price=$('input[id="price"]').val();
		category = $("#myselection option:selected").attr("data-id"); 
		forcustomer=$("#forcustomer option:selected").text();
		discriber=$("#discriber").val()
		json1["nameproduct"]=name;
		json1["price"]=price;
		json1["category"]=category;
		json1["forcustomer"]=forcustomer;
		json1["discriber"]=discriber;
		
		$("#containerchitietsanpham > .chitietsanpham").each(function() {
			color=$(this).find("#mausanpham").val();
			size=$(this).find("#sizesanpham").val();
			num=$(this).find("#soluong").val();
			Object1={};
			Object1["color"]=color;
			Object1["size"]=size;
			Object1["quatity"]=num;
			arraydetail.push(Object1);
			
		})
		json1["detail"]=arraydetail;
		json1["img"]=filename;
		$.ajax({
			url:"/Fashion/api/addProduct",
			type:"GET",
			data:{
				json:JSON.stringify(json1)
				
			},
			success: function(value){
				location.reload();
			}	
	})
	})

	id=0;
	$("#dataTable").on("click",".btn-update",function(){
		$(".card-body").find(".table-responsive").find("div").hide();
		$(".card-body").find(".addproduct").find("div").show();
		$(".btn-add-1").hide();
		$(".btn-back").show();
		id=$(this).attr("data-id");
		$.ajax({
			url:"/Fashion/api/getProduct",
			type:"POST",
			data:{
				id:id,
				
			},
			success: function(value){
				$("#nameproduct").attr("data-id",value.masanpham);
				$("#nameproduct").val(value.tensanpham);
				$("#price").val(value.giatien);
				$("#discriber").val(value.mota);
				$("#forcustomer option:selected").text(value.gianhcho);
				$("#myselection").val(value.danhMucSanPham.tendanhmuc)
				$("#containerchitietsanpham").empty();
				for(i=0;i<value.chiTietSanPhams.length;i++){
					var chitietclone=$("#chitietsanpham").clone().removeAttr("id");
					if(i<value.chiTietSanPhams.length){
						chitietclone.find(".add-detail").remove();
					}
					
					chitietclone.find("#mausanpham").val(value.chiTietSanPhams[i].mauSanPham.mamau);
					chitietclone.find("#sizesanpham").val(value.chiTietSanPhams[i].sizeSanPham.masize);
					chitietclone.find("#soluong").val(value.chiTietSanPhams[i].soluong);
					$("#containerchitietsanpham").append(chitietclone);
				}
			}	
	})
	})
	$(".update-product").on("click",function(e){
		e.preventDefault();
		json1={};
		arraydetail=[];
		id=$("#nameproduct").attr("data-id");
		name=$('input[id="nameproduct"]').val();
		price=$('input[id="price"]').val();
		category = $("#myselection option:selected").attr("data-id"); 
		forcustomer=$("#forcustomer option:selected").text();
		discriber=$("#discriber").val()
		json1["nameproduct"]=name;
		json1["price"]=price;
		json1["category"]=category;
		json1["forcustomer"]=forcustomer;
		json1["discriber"]=discriber;
		json1["id"]=id;
		$("#containerchitietsanpham > .chitietsanpham").each(function() {
			color=$(this).find("#mausanpham").val();
			size=$(this).find("#sizesanpham").val();
			num=$(this).find("#soluong").val();
			Object1={};
			Object1["color"]=color;
			Object1["size"]=size;
			Object1["quatity"]=num;
			arraydetail.push(Object1);
			
		})
		json1["detail"]=arraydetail;
		json1["img"]=filename;
		$.ajax({
			url:"/Fashion/api/updateProduct",
			type:"GET",
			data:{
				json:JSON.stringify(json1)
				
			},
			success: function(value){
				location.reload();
			}	
	})
	})

})