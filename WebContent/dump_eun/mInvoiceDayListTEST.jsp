<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>일별 송장내역</title>

  <!-- Custom fonts for this template-->
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="../vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
  
  <!-- datepicker, monthpiker style -->
  <link href="../css/jquery-ui.min.css" rel="stylesheet">
  <link href="../css/bluecompany.css" rel="stylesheet">
</head>
<body id="page-top">
  <!-- Page Wrapper -->
  <div id="wrapper">
    <%@ include file="_navigator.jspf" %>
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
      <!-- Main Content -->
      <div id="content">
        <%@ include file="../common/_top.jspf" %>
        <!-- Begin Page Content -->
        <div class="container-fluid">
          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-2 text-gray-800">일별 송장내역</h1>
            <form action="InvoiceProc?action=mallSearchList" class="form-horizontal d-sm-inline-block" method="post">
			  <div class="form-group" style="margin-bottom:0">
			    <label class="control-label" style="margin-bottom:0">날짜:&nbsp;
			      <input type="text" name="date" id="datepicker1" style="border:1px sloid; border-radius:.2rem;">&nbsp;&nbsp;
			      <input class="btn btn-primary btn-sm shadow-sm" type="submit" value="검색">
			    </label>
			  </div>
	        </form>
          </div>
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3 d-sm-flex align-items-center justify-content-between">
              <h6 class="m-0 font-weight-bold text-primary d-sm-inline-block" style="line-height:2">${selectDate}</h6>
              <form name="fileUpload" action=InvoiceProc?action=readCSV method=post>
                <div class="filebox d-inline-block">
				  <input type="text" class="displayFileName" name="fileName" disabled>
				  <label for="ex_file">
				    <i class="fas fa-folder-open fa-sm text-white-50"></i> 파일찾기
				  </label>
				  <input type="file" id="ex_file">
				</div>
	            <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="submit">
	              <i class="fas fa-upload fa-sm text-white-50"></i> 송장 등록
	            </button>
              </form>
           <!-- 
              <a href="InvoiceProc?action=readCSV&fileName" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
	            <input type="text" id="checkName" name="fileName">
	            <input type="file" name="upFile" id="upFile">
                <i class="fas fa-download fa-sm text-white-50"></i> 송장 등록
                
              </a>
               -->
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <colgroup>
					<col style="width:10%">
					<col style="width:15%">
					<col style="width:40%">
					<col style="width:15%">
					<col style="width:10%">
				  </colgroup>
                  <thead>
                    <tr>
                      <th>송장번호</th>
                      <th>이름</th>
                      <th>주소</th>
                      <th>연락처</th>
                      <th>날짜</th>
                      <th>상태</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:set var="invoiceList" value="${requestScope.invoiceLists}"/>
					<c:forEach var="invoice" items="${invoiceList}">
	                 <tr>
                      <td><a href="InvoiceProc?action=detailList&iCode=${invoice.iCode}">${invoice.iCode}</a></td>
                      <td>${invoice.iName}</td>
                      <td>${invoice.iAddress}</td>
                      <td>${invoice.iTel}</td>
                      <td>${invoice.iDate}</td>
                      <td>${invoice.iState}</td>
                   	</tr>
                 	</c:forEach>
                 </tbody>
               </table>
             </div>
           </div>
         </div>
          <!-- 위까지 그래프  -->
        </div>
        <!-- /.container-fluid -->
      </div>
      <!-- End of Main Content -->
      <%@ include file="../common/_bottom.jspf" %>
    </div>
    <!-- End of Content Wrapper -->
  </div>
  <!-- End of Page Wrapper -->

  <!-- Bootstrap core JavaScript-->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="../vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="../vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="../js/demo/datatables-demo.js"></script>
  
  <!-- 날짜검색기능 -->
  <script src="../js/jquery-ui.min.js"></script>
  <script src="../js/blue_company.js"></script>
  
  <script>
$(document).ready(function(){
  $('input[type="file"]').change(function(e){
    var fileName = e.target.files[0].name;
////	document.write(fileName);
  $('.displayFileName').attr('value',fileName); // a에서 받아온 속성 값을 src라는 속성에 넣을 경우
  })
});
</script>
	
</body>
</html>