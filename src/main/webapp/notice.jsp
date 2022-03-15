<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.springbook.biz.notice.NoticeVO" %>
<%@ page import="com.springbook.biz.notice.impl.NoticeDAO" %> 
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>    
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


   <!-- Start header section -->
   <%@ include file="common/header.jsp" %>
 
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
   <img src="img/fashion-header-bg.jpg" alt="fashion img">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Blog Archive</h2>
        <ol class="breadcrumb">
          <li><a href="index.html">Home</a></li>         
          <li class="active">Notice Archive</li>
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
                    <h3>공지사항</h3>
                    <ul class="aa-catg-nav">
                      <li><a href="notice.jsp">공지사항</a></li>
                    </ul>
                  </div>
                </aside>
              </div>
              <div class="col-md-9">
                <div class="aa-blog-content">
                  <div class="row">
                    <div class="tab-content">
                      <!-- Start men product category -->
                      <div class="tab-pane fade in active" id="notice">
                        <h3 style="color: #611122da; border-bottom: 1px solid #611122da; margin-top: 5px; padding-bottom: 10px;">공지사항</h3>
                        <table border="1" cellpadding="0" cellspacing="0" width="90%" >
                          <tr>
                              <th style="text-align: center; color: #fff; background-color: #611122da;" width="30"><spring:message code="" />번호</th>
                              <th style="text-align: center; color: #fff; background-color: #611122da;" width="250"><spring:message code="" />제목</th>
                              <th style="text-align: center; color: #fff; background-color: #611122da;" width="70"><spring:message code="" />작성자</th>
                              <th style="text-align: center; color: #fff; background-color: #611122da;" width="100"><spring:message code="" />작성일</th>
                              <th style="text-align: center; color: #fff; background-color: #611122da;" width="50"><spring:message code="" />조회수</th>
                          </tr>
                          
                          <c:forEach items="${noticeList }" var="notice">
	                          <tr style="text-align:center">
	                              <td>${notice.NNUM }</td>
	                              <td><a href="getNotice.do?NNUM=${notice.NNUM }">${notice.NTITLE }</a></td>
	                              <td>${notice.NID }</td>
	                              <td>${notice.NDATE }</td>
	                              <td>${notice.NCNT }</td>
	                          </tr>
						  </c:forEach>
                          
                      </table>
                      <button class="aa-browse-btn" style="float: right; margin-top: 25px; margin-right: 88px; "><a href="insertnotice.jsp" style="color: #fff">글쓰기</a></button>
                          <!-- search menu -->

                          <form aciton="getNoticeList.do" method="post">
                            <div class="aa-blog-archive-pagination" style="width: 300px; margin-top: 35px; margin-left: 260px">
                              <nav>
                                <table>
                                  <tr>
                                    <td>
                                      <select name="searchCondition">
                                       	<c:forEach items="${conditionMap }" var="option">
                                          <option value="${option.value }">${option.key }
                                        </c:forEach>
                                      </select>
                                      <input name="searchKeyword" type="text" />
                                      <input type="submit" value="검색" />
                                    </td>
                                  </tr>
                                </table>
                              </nav>
                            </div>
                          </form>
                               
                      </div>
                    </div>
                  </div>
                </div>
                <!-- Blog Pagination -->
                <div class="aa-blog-archive-pagination" style="width: 300px; margin-left: 245px">
                  <nav>
                    <ul class="pagination">
                      <li>
                        <a aria-label="Previous" href="#">
                          <span aria-hidden="true">«</span>
                        </a>
                      </li>
                      <li class="active"><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">5</a></li>
                      <li>
                        <a aria-label="Next" href="#">
                          <span aria-hidden="true">»</span>
                        </a>
                      </li>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Blog Archive -->


  <!-- Subscribe section -->
  <!-- <section id="aa-subscribe">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-subscribe-area">
            <h3>Subscribe our newsletter </h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex, velit!</p>
            <form action="" class="aa-subscribe-form">
              <input type="email" name="" id="" placeholder="Enter your Email">
              <input type="submit" value="Subscribe">
            </form>
          </div>
        </div>
      </div>
    </div>
  </section> -->
  <!-- / Subscribe section -->

  <!-- footer -->  
 <%@ include file="common/footer.jsp" %>
  <!-- / footer -->
  
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