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
					 window.location="/Fashion/admin/";
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
		alert("click");
		data=$(this).attr("data-id");
		alert(data);
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

})