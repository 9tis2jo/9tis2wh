<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | Blog Archive</title>
    
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
    <link id="switcher" href="css/theme-color/default-theme.css" rel="stylesheet">
    <!-- Top Slider CSS -->
    <link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->
    <link href="css/style.css" rel="stylesheet">    

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
  </head>

  <body>
  <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->


  <!-- Start header section -->
 	 <%@ include file="common/header.jsp" %>
 
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
   <img src="img/fashion/fashion-header-bg-8.jpg" alt="fashion img">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Blog Archive</h2>
        <ol class="breadcrumb">
          <li><a href="index.html">Home</a></li>         
          <li class="active">Blog Archive</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->

  <!-- Blog Archive -->
  <section id="aa-blog-archive">

    <div class="container">

      <div class="row">
        <div class="col-md-12">
          <div class="aa-blog-archive-area">
            <div class="row">
 				 <div class="col-md-3">
                <aside class="aa-blog-sidebar">
                  <div class="aa-sidebar-widget">
                    <h3>BBS</h3>
                    <ul class="aa-catg-nav">
                      <li><a href="notice.jsp">공지사항</a></li>
                      <li><a href="board.jsp">자유게시판</a></li>
                      <li><a href="notify.jsp">신고게시판</a></li>
                    </ul>
                  </div>
                </aside>
              </div>
              <div class="col-md-9" >
                <div class="aa-blog-content">
                  <div class="row">
                    <div class="tab-content">
                      <!-- Start men product category -->
                      <div class="tab-pane fade in active" id="notice">
                        <h4 style= "border-bottom:1px solid #ccc; padding-bottom: 10px"  >게시판 글쓰기</h4>
                        <form action="updateBoard.do" method="post">
                          <table cellpadding="0" cellspacing="0" width="90%" >
                          	<input type="hidden" name = "bNUM" value="${board.BNUM}">
                           	<select name="" id="" 
	                            style="
	                            display: inline-block;
	                            padding: 6px 12px;
	                            margin-bottom: 0;
	                            font-size: 14px;
	                            font-weight: normal;
	                            line-height: 1.42857143;
	                            text-align: center;
	                            white-space: nowrap;
	                            vertical-align: middle;
	                            touch-action: manipulation;
	                            cursor: pointer;
	                            user-select: none;
	                            background-image: none;
	                            border: 1px solid transparent;
	                            border-radius: 4px;">
                              <option value="board" >자유게시판</option>
                              <option value="notify" >신고게시판</option>
                              <option value="qanda" >Q&A</option>
                            </select>
                            <tr style="text-align:center">
                              <td align="left" style="border: 1px solid #ebecef;"><textarea name="title" placeholder="제목을 입력해주세요" style="height: 30px; display: block; width: 100%; resize: none;">${board.BTITLE }</textarea></td> 
                            </tr>
                           
                            <tr style="text-align:center">
                              <td align="left"><input type="file" name="uploadFile"/></td>
                            </tr>

                            <tr style="text-align:center">
                              <td align="left"><textarea name="content" cols="40" rows="10" placeholder="내용을 입력해주세요" style="height: 300px; width: 100%; resize: none;">${board.BCON }</textarea></td>
                            </tr>

                            <tr style="text-align:center">
                            	<td>
                            	<button class="aa-browse-btn" style="float: none; margin-top: 5px;"><input type="submit" value="수정"/></button>
                            </td>
                            </tr>
                          </table>
                        </form>
                        <!-- <button class="aa-browse-btn" style="float: none; margin-top: 5px;"><a href="" style="color: #fff">수정</a></button>  -->   
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  

  <!-- footer -->  
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
              Don't have an account?<a href="account.html">Register now!</a>
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