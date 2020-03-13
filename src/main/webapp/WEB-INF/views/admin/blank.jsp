<!DOCTYPE html>
<%@ include file="/WEB-INF/common/taglib.jsp" %>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin Order Detail</title>

  <!-- Custom fonts for this template -->
  <link href='<c:url value="/resources/admin/vendor/fontawesome-free/css/all.min.css"/>' rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href='<c:url value="/resources/admin/css/sb-admin-2.min.css"/>' rel="stylesheet">
  <link href='<c:url value="/resources/admin/css/styles.css"/>' rel="stylesheet">
  <!-- Custom styles for this page -->
  <link href='<c:url value="/resources/admin/vendor/datatables/dataTables.bootstrap4.min.css"/>' rel="stylesheet">

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
          <h1 class="h3 mb-2 text-gray-800">Number Order ${id }</h1>
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Order Detail</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Quatity</th>
                      <th>Price</th>
                     
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                     <th>ID</th>
                    <th>Quatity</th>
                     <th>Price</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  <c:forEach var="item" items="${productdetail }">
                   <tr>
                      <td>${item.getChiTietHoaDonId().getMachitietsanpham() }</td>
                      <td>${item.getSoluong()  }</td>
                      <td>${item.getGiatien() }</td>
                    </tr>
                  </c:forEach>
                  
                   
                  </tbody>
                 
                </table>
                 <h1 style="text-align: center;">Total:$${sumOrder }</h1>
                  <div class="alert alert-success hide1" role="alert">
 						<a href="#" class="alert-link" data-state=${x } ></a>
				</div>
                 <a href="#" class="btn btn-primary btn-accept " data-id=${id } data-state=${x } >Accept</a>
                
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
