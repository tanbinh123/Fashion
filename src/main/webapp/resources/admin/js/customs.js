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

})