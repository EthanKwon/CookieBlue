<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link rel="shortcut icon" href="../img/favicon1.ico" type="image/x-icon" >
  <link rel="icon" href="../img/favicon1.ico" type="image/x-icon" >
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Register</title>

  <!-- Custom fonts for this template-->
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../css/sb-admin-2.min.css" rel="stylesheet">

  <link href="../css/bluecompany.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-6 d-none d-lg-block blue-register"></div>
          <div class="col-lg-6">
            <div class="p-5">
              <div class="text-center">
                <h2 class="h5 text-gray-900 mb-4 boldfont">BlueCampany의 고객이 되신것을 환영합니다.</h2>
                <div class="text-gray-600 boldfont">아래의 정보를 채워주세요</div><br>      
              </div>

              <!-- form의 class명 'view-radio-group' 변경 시, blue_company.js도 수정필요 : 라디오 버튼 보이기/숨기기 기능이 class명으로 연동되어 있음. -->
              <form action="UserProc?action=register" class="user view-radio-group" method="POST" id="checkPass">
                <div class="form-group">
                  <input type="text" class="form-control form-control-user boldfont" name="name" placeholder="이름을 입력해주세요.">
                </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="password" class="form-control form-control-user boldfont" name="InputPassword" placeholder="비밀번호를 입력해주세요.">
                  </div>
                  <div class="col-sm-6">
                    <input type="password" class="form-control form-control-user boldfont" name="RepeatPassword" placeholder="다시 한 번 입력해 주세요.">
                  </div>
                </div>

                <div class="form-group row " style="line-height: 2">
                  <div class="col-sm-3 mb-3 mb-sm-0 boldfont" style="display : inline-block; max-width: max-content">
                    <span style="padding:0 0 0 17px">회원유형&nbsp;:</span>
                  </div>

                <!-- id 변경 시, blue_company.js변경 필요 : 숨기기 보이기 기능이 id값으로 연동되어 있음 -->
                <div class="col-sm-3 custom-control custom-radio small d-none boldfont" style="max-width: max-content">
                    <input type="radio" class="custom-control-input" name="userType" id="d_hidden" value=4 checked>
                    <label class="custom-control-label" for="d_hidden">hidden&nbsp;</label>
                  </div>
                  <div class="col-sm-3 custom-control custom-radio small d-inline-block boldfont" style="max-width: max-content">
                    <input type="radio" class="custom-control-input" name="userType" id="transport" value=1>
                    <label class="custom-control-label" for="transport">운송업체&nbsp;</label>
                  </div>
                  <div class="col-sm-3 custom-control custom-radio small d-inline-block boldfont" style="max-width: max-content">
                    <input type="radio" class="custom-control-input" name="userType" id="shopping" value=2>
                    <label class="custom-control-label" for="shopping">쇼핑몰&nbsp;</label>
                  </div>
                  <div class="col-sm-3 custom-control custom-radio small d-inline-block boldfont" style="max-width: max-content">
                    <input type="radio" class="custom-control-input" name="userType" id="seller" value=3>
                    <label class="custom-control-label" for="seller">공급사&nbsp;</label>
                  </div>
                </div>

                <div class="form-group row view-radio-group-object" style="line-height: 2">
                  <div class="col-sm-3 mb-3 mb-sm-0 small boldfont" style="display : inline-block; max-width: max-content">
                    <span style="padding:0 0 0 17px">지역&nbsp;:</span>
                  </div>
                  <div class="col-sm-3 custom-control custom-radio small d-inline-block boldfont" style="max-width: max-content">
                    <input type="radio" class="custom-control-input" name="areaId" id="kyeonggi" value=1>
                    <label class="custom-control-label" for="kyeonggi">경기&nbsp;</label>
                  </div>
                  <div class="col-sm-3 custom-control custom-radio small d-inline-block boldfont" style="max-width: max-content">
                    <input type="radio" class="custom-control-input" name="areaId" id="jungbu" value=2>
                    <label class="custom-control-label" for="jungbu">중부&nbsp;</label>
                  </div>
                  <div class="col-sm-3 custom-control custom-radio small d-inline-block boldfont" style="max-width: max-content">
                    <input type="radio" class="custom-control-input" name="areaId" id="yeongnam" value=3>
                    <label class="custom-control-label" for="yeongnam">영남&nbsp;</label>
                  </div>
                  <div class="col-sm-3 custom-control custom-radio small d-inline-block boldfont" style="max-width: max-content">
                    <input type="radio" class="custom-control-input" name="areaId" id="seobu" value=4>
                    <label class="custom-control-label" for="seobu">서부&nbsp;</label>
                  </div>
                </div>
				<input class="btn btn-primary btn-user btn-block boldfont" type="submit" value="회원가입">
              </form>
              <hr>
              <div class="text-center">
                <a class="boldfont" href="login.jsp">이미 BlueCampany의 회원이신가요?</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../js/sb-admin-2.min.js"></script>
  
  <!-- register버튼, input file버튼 제어 -->
  <script src="../js/bluecompany.js"></script>

</body>
</html>
<%@ include file="common/_messageModal.jspf" %>
