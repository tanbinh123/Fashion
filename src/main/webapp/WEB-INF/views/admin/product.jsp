<!DOCTYPE html>
<%@ include file="/WEB-INF/common/taglib.jsp" %>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Admin  - Product</title>

  <!-- Custom fonts for this template -->
  <link href='<c:url value="/resources/admin/vendor/fontawesome-free/css/all.min.css"/>' rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href='<c:url value="/resources/admin/css/sb-admin-2.min.css"/>' rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href='<c:url value="/resources/admin/vendor/datatables/dataTables.bootstrap4.min.css"/>' rel="stylesheet">
  <link href='<c:url value="/resources/admin/css/styles.css"/>' rel="stylesheet">
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <%@include file="/WEB-INF/common/admin/siderbar.jsp" %>

      
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
          <%@ include file="/WEB-INF/common/admin/header.jsp" %>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Tables</h1>

          <!-- DataTales Example -->
         
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">List Product</h6>
               <a class="btn btn-success btn-add">Add product</a>
               <a class="btn btn-light btn-icon-split btn-back">
                    <span class="icon text-gray-600">
                      <i class="fas fa-arrow-right"></i>
                    </span>
                    <span class="text">Back</span>
                  </a>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>ID</th> 
                      <th>Name</th>
                      <th>Price</th>
                      <th>Describe</th>
                      <th>For</th>
                      <th>Image</th>
                      <th>Change</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>ID</th>
                      <th>Name</th>
                      <th>Price</th>
                      <th>Describe</th>
                      <th>For</th>
                      <th>Image</th>
                      <th>Change</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  <c:forEach var="item" items="${list}">
                  
                   <tr>
                   	  <td>${item.getMasanpham() }</td>
                      <td> <a href='<c:url value="/admin/${item.getMasanpham()}"/>'>${item.getTensanpham() } </a></td>
                      <td>${item.getGiatien() }</td>
                      <td>${item.getMota() }</td>
                      <td>${item.getGianhcho() }</td>
                      <td>${item.getHinhsanpham()}</td>
                      <td><span class="btn btn-danger btn-delete" data-id=${item.getMasanpham() }>Delete</span>
                      	 <span class="btn btn-info btn-update"data-id=${item.getMasanpham() } >Update</span>
                      </td>
                       
                    </tr>
                
                  </c:forEach>
                   
                   
                  </tbody>
                </table>
              </div>
           	  <div class="addproduct">
           			<div>
           				<form >
							  <div class="form-group">
							    <label for="exampleFormControlInput1">Name Product</label>
							    <input type="text" class="form-control" id="nameproduct" data-id=0>
							  </div>
							   <div class="form-group">
							    <label for="exampleFormControlInput1">Price</label>
							    <input type="text" class="form-control" id="price">
							  </div>
							  <div class="form-group">
							    <label for="myselection">Category</label>
							    <select class="form-control" id="myselection">
							    <c:forEach var="item" items="${listcategory }">
							      <option data-id=${item.getMadanhmuc() }>${item.getTendanhmuc()}</option>
							    </c:forEach>					   
							    </select>
							  </div>
							  <div class="form-group">
							    <label for="exampleFormControlFile1">Image product</label>
							    <input type="file" class="form-control-file" id="filename">
							  </div>
							  <div class="form-group">
							    <label for="forcustomer">For</label>
							    <select class="form-control" id="forcustomer">
							      <option>Man</option>
							      <option>Woman</option>
							    </select>
							  </div>
							  <div class="form-group">
							    <label for="discriber">Discribe</label>
							    <textarea class="form-control" id="discriber" rows="3"></textarea>
							  </div>
							 
							 <div id="containerchitietsanpham">
								<div  class="chitietsanpham">
								<span>Detail</span></br>
								 <label for="">Color</label></br>
								 <select  name="mausanpham"class="form-control" id="mausanpham">
								   	<c:forEach var="value" items="${listcolor }">
												<option value="${value.getMamau() }">${value.getTenmau()}</option></br>
									</c:forEach>
								  </select>
								   <label for="sizesanpham">Size</label></br>
								   <select name="sizesanpham"class="form-control" id="sizesanpham">
								   	<c:forEach var="value" items="${sizecategory }">
												<option value="${value.getMasize() }">${value.getSize()}</option></br>
									</c:forEach>
								  </select>
								  <label for="soluong">Quatity</label></br>
								  <input min="1" value="1" type="number"name="soluong"id="soluong" class="form-control"/></br>
								   <span class="add-detail btn">+ Add detail</span>
							  </div>
							  
					
							
							</div>
							<div class="chitietsanpham" id="chitietsanpham">
								<span>Detail</span></br>
								 <label for="">Color</label></br>
								 <select  name="mausanpham"class="form-control" id="mausanpham">
								   	<c:forEach var="value" items="${listcolor }">
												<option value="${value.getMamau() }">${value.getTenmau()}</option></br>
									</c:forEach>
								  </select>
								   <label for="">Size</label></br>
								   <select name="sizesanpham"class="form-control" id="sizesanpham">
								   	<c:forEach var="value" items="${sizecategory}">
												<option value="${value.getMasize() }">${value.getSize()}</option></br>
									</c:forEach>
								  </select>
								  <label for="soluong">Quatity</label></br>
								  <input min="1" value="1" type="number"name="soluong"id="soluong" class="form-control"/></br>
							  <span class="add-detail btn">+ Add detail</span>
							  </div>
							 
				                  <a href="#" class="btn btn-success btn-icon-split">
				                    <span class="icon text-white-50">
				                      <i class="fas fa-check"></i>
				                    </span>
				                    <span class="text add-product btn-add-1">Add product</span>
				                     <span class="text update-product">Update product</span>
				                  </a>
							</form>
							
           			
           			</div>
           	 </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <%@ include file="/WEB-INF/common/admin/footer.jsp" %>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
 <%@ include file="/WEB-INF/common/admin/logout.jsp" %>

  <!-- Bootstrap core JavaScript-->
  <script src='<c:url value="/resources/admin/vendor/jquery/jquery.min.js"/>'></script>
  <script src='<c:url value="/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"/>'></script>

  <!-- Core plugin JavaScript-->
  <script src='<c:url value="/resources/admin/vendor/jquery-easing/jquery.easing.min.js"/>'></script>

  <!-- Custom scripts for all pages-->
  <script src='<c:url value="/resources/admin/js/sb-admin-2.min.js"/>'></script>

  <!-- Page level plugins -->
  <script src='<c:url value="/resources/admin/vendor/datatables/jquery.dataTables.min.js"/>'></script>
  <script src='<c:url value="/resources/admin/vendor/datatables/dataTables.bootstrap4.min.js"/>'></script>

  <!-- Page level custom scripts -->
  <script src='<c:url value="/resources/admin/js/demo/datatables-demo.js"/>'></script>
  <script src='<c:url value="/resources/admin/js/customs.js"/>'></script>
</body>

</html>
