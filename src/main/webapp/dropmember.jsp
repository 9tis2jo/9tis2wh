<%@ page  language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>회원 정보</title>
    
    <!-- Font awesome -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">   
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">    
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="css/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="css/theme-color/Mcustom.css" rel="stylesheet">
    <!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
    <!-- Top Slider CSS -->
    <link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->
    <link href="css/style.css" rel="stylesheet">    

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  <body>     
 <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->

  <!-- HEADER -->
  <%@ include file="common/header.jsp" %>

 <!-- dropmember section -->
 <section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area" style="width: 120%;">         
            <div class="row">
              <div class="col-md-6" style="float: none; margin:0 auto;">
                <div class="aa-myaccount-login">
                <h4>회원 탈퇴</h4>
                 <form action="" class="aa-login-form">
                  <div class = "" style="font-size: 25px;">
                    회원 탈퇴 전 유의사항을 확인해주세요</div>
                    <br>
                    <br>
                    <br>
                    <p style="font-size: 20px; border-bottom: 1px solid #ccc ;">유의사항</p>
                    <br>
                    <p style="font-size: 15px; color: #888;">- 아이디를 탈퇴하시면 서비스 부정 이용 방지를 위하여 일정 기간 동안 회원 재가입이 불가합니다.</p>
                    <p style="font-size: 15px; color: #888;">- 탈퇴시, 본 페이지에서 사용하시던 포인트 및 쿠폰등은 복원할 수 없습니다.</p>
                    <p style="font-size: 15px; color: #888;">- 본 페이지에서 이용중인 서비스가 있을 경우 탈퇴가 불가합니다.</p>
                    <p style="font-size: 15px; color: #888;">- 탈퇴 즉시 개인정보가 삭제되면, 어떠한 방법으로도 복원할 수 없습니다.(전자상거래 서비스 등의 거래내역은 전자상거래등에서의 소비자 보호에 관한 범률에 의거하여 보호됩니다.)</p>
                    <br>
                    <br>
                    <br>
                    <label class="rememberme" for="rememberme" style="float: right; margin-top: -20px;"><input type="checkbox" id="rememberme"> 위 유의사항을 모두 확인하였고 회원탈퇴에 동의합니다. </label>
                    <br>
                    <button type="submit" class="aa-dropMember-btn" style="background-color: #6a747d; color: #f2f3f3; border: none; float: right;">회원 탈퇴</button> 
                 
                  </form>
                </div>
              </div>
 </section>
 <!-- / dropmember section -->

  <!-- FOOTER -->
  <%@ include file="common/footer.jsp" %> 

  <!-- Login Modal -->  
  <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">                      
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4>Login or Register</h4>
          <form class="aa-login-form" action="">
            <label for="">Username or Email address<span>*</span></label>
            <input type="text" placeholder="Username or email">
            <label for="">Password<span>*</span></label>
            <input type="password" placeholder="Password">
            <button class="aa-browse-btn" type="submit">Login</button>
            <label for="rememberme" class="rememberme"><input type="checkbox" id="rememberme"> Remember me </label>
            <p class="aa-lost-password"><a href="#">Lost your password?</a></p>
            <div class="aa-register-now">
              Don't have an account?<a href="account.jsp">Register now!</a>
            </div>
          </form>
        </div>                        
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>
   
  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.js"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="js/jquery.smartmenus.js"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>  
  <!-- To Slider JS -->
  <script src="js/sequence.js"></script>
  <script src="js/sequence-theme.modern-slide-in.js"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="js/jquery.simpleGallery.js"></script>
  <script type="text/javascript" src="js/jquery.simpleLens.js"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="js/slick.js"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="js/nouislider.js"></script>
  <!-- Custom js -->
  <script src="js/custom.js"></script> 
  </body>
</html>