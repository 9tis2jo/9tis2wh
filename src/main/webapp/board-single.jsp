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
  <header id="aa-header">
   <!-- start header top  -->
   <div class="aa-header-top">
     <div class="container">
       <div class="row">
         <div class="col-md-12">
           <div class="aa-header-top-area">
             <!-- start header top left -->
             <div class="aa-header-top-left">
  

              
             </div>
             <!-- / header top left -->
             <div class="aa-header-top-right">
               <ul class="aa-head-top-nav-right">
                 <li><a href="myinfo.html">내 계정</a></li>
                 <li class="hidden-xs"><a href="wishlist.html">위시 리스트</a></li>
                 <li class="hidden-xs"><a href="jjim.html">찜목록</a></li>
                 
                 <li class="hidden-xs"><a href="login.html">로그인</a></li>
               </ul>
             </div>
           </div>
         </div>
       </div>
     </div>
   </div>
   <!-- / header top  -->

   <!-- start header bottom  -->
   <div class="aa-header-bottom">
     <div class="container">
       <div class="row">
         <div class="col-md-12">
           <div class="aa-header-bottom-area">
             <!-- logo  -->
             <div class="aa-logo">
               <!-- Text based logo -->
               <a href="index.html">
                   <img src="img/ufologo3.png" >
               </a>
               <!-- img based logo -->
               <!-- <a href="index.html"><img src="img/logo.jpg" alt="logo img"></a> -->
             </div>
             <!-- / logo  -->
              <!-- cart box -->
             <div class="aa-cartbox">
               <a class="aa-cart-link" href="#">
                 <span class="fa fa-shopping-basket"></span>
                 <span class="aa-cart-title">찜 목록</span>
                 
               </a>
               <div class="aa-cartbox-summary">
                 <ul>
                   <li>
                     <a class="aa-cartbox-img" href="#"><img src="img/woman-small-2.jpg" alt="img"></a>
                     <div class="aa-cartbox-info">
                       <h4><a href="#">Product Name</a></h4>
                       <p>1 x $250</p>
                     </div>
                     <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>
                   </li>
                   <li>
                     <a class="aa-cartbox-img" href="#"><img src="img/woman-small-1.jpg" alt="img"></a>
                     <div class="aa-cartbox-info">
                       <h4><a href="#">Product Name</a></h4>
                       <p>1 x $250</p>
                     </div>
                     <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>
                   </li>                    
                   <li>
                     <span class="aa-cartbox-total-title">
                       Total
                     </span>
                     <span class="aa-cartbox-total-price">
                       $500
                     </span>
                   </li>
                 </ul>
                 <a class="aa-cartbox-checkout aa-primary-btn" href="checkout.html">Checkout</a>
               </div>
             </div>
             <!-- / cart box -->
             <!-- search box -->
             <div class="aa-search-box">
               <form action="">
                 <input type="text" name="" id="" placeholder="Search here ex. 'man' ">
                 <button type="submit"><span class="fa fa-search"></span></button>
               </form>
             </div>
             <!-- / search box -->             
           </div>
         </div>
       </div>
     </div>
   </div>
   <!-- / header bottom  -->
 </header>
 <!-- / header section -->
 <!-- menu -->
 <section id="menu">
   <div class="container">
     <div class="menu-area">
       <!-- Navbar -->
       <div class="navbar navbar-default" role="navigation">
         <div class="navbar-header">
           <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
             <span class="sr-only">Toggle navigation</span>
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
           </button>          
         </div>
         <div class="navbar-collapse collapse">
           <!-- Left nav -->
           <ul class="nav navbar-nav">
             <li><a href="index.html">Home</a></li>
             <li><a href="#">Buy <span></span></a>
              
             </li>
             <li><a href="product-registration.html">Sell <span ></span></a>
               
             </li>
             <li><a href="board.html">BBS<span></span></a>
               
             </li>
             <li><a href="board-q.html">Notice</a></li>
            
             </li>
            
             <li><a href="contact.html">Contact</a></li>
            
                 
             </li>
           </ul>
         </div><!--/.nav-collapse -->
       </div>
     </div> 
     </div>
   </div>
 </section>
 <!-- / menu -->  
 
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
   <img src="img/fashion/fashion-header-bg-8.jpg" alt="fashion img">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>게시판 내용</h2>
        <ol class="breadcrumb">
          <li><a href="index.html">Home</a></li>         
          <li class="active">게시판 예시</li>
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
              <div class="col-md-9">
                <!-- Blog details -->
                <div class="aa-blog-content aa-blog-details">
                  <article class="aa-blog-content-single">
                  <form action="updateBoard.do" method="post">
                  	<input type="hidden" name = "bNUM" value="${board.BNUM}">                      
                    <h2><a href="#">${board.BTITLE }</a></h2>
                     <div class="aa-article-bottom">
                      <div class="aa-post-author">
                        글쓴이 <a href="#">${board.BID }</a>
                      </div>
                      <div class="aa-post-date">
                        ${board.BDATE }
                      </div>
                    </div>
                    <figure class="aa-blog-img">
                      <a href="#"><img src="img/fashion/3.jpg" alt="fashion img"></a>
                    </figure>
                    <p>${board.BCON }</p>
<!--                     
                    <h1>Heading 1</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias nihil nobis libero magni fuga ratione ipsam ipsa laboriosam quod, reprehenderit, error iusto, delectus eius. Iste.</p>
                    <h2>Heading 2</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias nihil nobis libero magni fuga ratione ipsam ipsa laboriosam quod, reprehenderit, error iusto, delectus eius. Iste.</p>
                    <h3>Heading 3</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est asperiores voluptatem officia, nulla, nihil tempore illum esse sunt in quos!</p>
                    <h4>Heading 4</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus odit nostrum magnam, quas quos id!</p> -->
				</form>	
                    <div class="blog-single-bottom">
                      <div class="row">
                        <div class="col-md-8 col-sm-6 col-xs-12">
                          <div class="blog-single-tag">
                            <button class="aa-browse-btn"><a href="getBoardList.do">목록으로</a></button>
                            <button class="aa-browse-btn"><a href="updateboard.jsp">수정하기</a></button>
                            <button class="aa-browse-btn"><a href="deleteBoard.do?bNUM=${board.BNUM }">삭제하기</a></button>
                          </div>
                        </div>
<!-- 
                        <div class="col-md-4 col-sm-6 col-xs-12">
                          <div class="blog-single-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                          </div>
                        </div> -->

                      </div>
                    </div>
                   
                  </article>
                  <!-- blog navigation -->
                  <div class="aa-blog-navigation">
                    <a class="aa-blog-prev" href="#"><span class="fa fa-arrow-left"></span>이전 글</a>
                    <a class="aa-blog-next" href="#">다음 글<span class="fa fa-arrow-right"></span></a>
                  </div>
                  <!-- Blog Comment threats -->
                  <div class="aa-blog-comment-threat">
                    <h3>Comments (1)</h3>
                    <div class="comments">
                      <ul class="commentlist">
                        <!-- <li>
                          <div class="media">
                            <div class="media-left">    
                                <img class="media-object news-img" src="img/testimonial-img-3.jpg" alt="img">      
                            </div>
                            <div class="media-body">
                             <h4 class="author-name">Charlie Balley</h4>
                             <span class="comments-date"> March 26th 2016</span>
                             <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                             <a href="#" class="reply-btn">Reply</a>
                            </div>
                          </div>
                        </li>
                        <li>
                          <div class="media">
                            <div class="media-left">    
                                <img class="media-object news-img" src="img/testimonial-img-2.jpg" alt="img">      
                            </div>
                            <div class="media-body">
                             <h4 class="author-name">Charlie Balley</h4>
                             <span class="comments-date"> March 26th 2016</span>
                             <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                             <a href="#" class="reply-btn">Reply</a>
                            </div>
                          </div>
                        </li> -->
                        <ul class="children">
                          <li class="author-comments">
                            <div class="media">
                              <div class="media-left">    
                                  <img class="media-object news-img" src="img/testimonial-img-3.jpg" alt="img">      
                              </div>
                              <div class="media-body">
                               <h4 class="author-name">운영자</h4>
                               <span class="comments-date"> 2022-03-03</span>
                               <span class="author-tag">글쓴이</span>
                               <p>공지사항이자 자유게시판용 템플릿</p>
                               <a href="#" class="reply-btn">답글</a>
                              </div>
                            </div>
                          </li>
                          <!-- <ul class="children">
                            <li>
                              <div class="media">
                                <div class="media-left">    
                                    <img class="media-object news-img" src="img/testimonial-img-2.jpg" alt="img">      
                                </div>
                                <div class="media-body">
                                 <h4 class="author-name">Charlie Balley</h4>
                                 <span class="comments-date"> March 26th 2016</span>
                                 <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                                 <a href="#" class="reply-btn">Reply</a>
                                </div>
                              </div>
                            </li>
                          </ul> -->
                        </ul>
                        <!-- <li>
                          <div class="media">
                            <div class="media-left">    
                                <img class="media-object news-img" src="img/testimonial-img-2.jpg" alt="img">      
                            </div>
                            <div class="media-body">
                             <h4 class="author-name">Charlie Balley</h4>
                             <span class="comments-date"> March 26th 2016</span>
                             <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                             <a href="#" class="reply-btn">Reply</a>
                            </div>
                          </div>
                        </li> -->
                      </ul>
                    </div>
                    <div class="aa-blog-archive-pagination">
                      <nav>
                        <ul class="pagination">
                          <li>
                            <a href="#" aria-label="Previous">
                              <span aria-hidden="true">«</span>
                            </a>
                          </li>
                          <li><a href="#">1</a></li>
                          <li><a href="#">2</a></li>
                          <li><a href="#">3</a></li>
                          <li><a href="#">4</a></li>
                          <li><a href="#">5</a></li>
                          <li>
                            <a href="#" aria-label="Next">
                              <span aria-hidden="true">»</span>
                            </a>
                          </li>
                        </ul>
                      </nav>
                    </div>
                  </div>



                  <!-- blog comments form -->
                  <div id="respond">
                    <h3 class="reply-title">댓글 남기기</h3>
                    <form id="commentform">
                      <p class="comment-notes">
                        빨간 * 부분은 필수로 입력 <span class="required">*</span>
                      </p>
                      <p class="comment-form-author">
                        <label for="author">이름 <span class="required">*</span></label>
                        <input type="text" name="author" value="" size="30" required="required">
                      </p>
                      <p class="comment-form-email">
                        <label for="email">이메일 </label>
                        <input type="email" name="email" value="" aria-required="true" required="required">
                      </p>
                      <p class="comment-form-url">
                        <label for="url">비밀 번호<span class="required">*</span></label>
                        <input type="url" name="url" value="">
                      </p>
                      <p class="comment-form-comment">
                        <label for="comment">댓글 내용</label>
                        <textarea name="comment" cols="45" rows="8" aria-required="true" required="required"></textarea>
                      </p>
                      <!-- <p class="form-allowed-tags">
                        You may use these <abbr title="HyperText Markup Language">HTML</abbr> tags and attributes:  <code>&lt;a href="" title=""&gt; &lt;abbr title=""&gt; &lt;acronym title=""&gt; &lt;b&gt; &lt;blockquote cite=""&gt; &lt;cite&gt; &lt;code&gt; &lt;del datetime=""&gt; &lt;em&gt; &lt;i&gt; &lt;q cite=""&gt; &lt;s&gt; &lt;strike&gt; &lt;strong&gt; </code>
                      </p> -->
                      <p class="form-submit">
                        <input type="submit" name="submit" class="aa-browse-btn" value="댓글 등록">
                      </p>        
                    </form>
                  </div>
                </div>
              </div>

              <!-- blog sidebar -->
              <div class="col-md-3">
                <aside class="aa-blog-sidebar">
                  <div class="aa-sidebar-widget">
                    <h3>카테고리</h3>
                    <ul class="aa-catg-nav">
                      <li><a href="#">의류</a></li>
                      <li><a href="">주방</a></li>
                      <li><a href="">모바일</a></li>
                      <li><a href="">패션 잡화</a></li>
                      <li><a href="">뷰티</a></li>
                      <li><a href="">식품</a></li>
                      <li><a href="">기타</a></li>
                    </ul>
                  </div>
                  <!-- <div class="aa-sidebar-widget">
                    <h3>Tags</h3>
                    <div class="tag-cloud">
                      <a href="#">Fashion</a>
                      <a href="#">Ecommerce</a>
                      <a href="#">Shop</a>
                      <a href="#">Hand Bag</a>
                      <a href="#">Laptop</a>
                      <a href="#">Head Phone</a>
                      <a href="#">Pen Drive</a>
                    </div>
                  </div> -->
                  <div class="aa-sidebar-widget">
                    <h3>최근 글</h3>
                    <div class="aa-recently-views">
                      <ul>
                        <li>
                          <!-- <a class="aa-cartbox-img" href="#"><img src="img/woman-small-2.jpg" alt="img"></a> -->
                          <div class="aa-cartbox-info">
                            <h4><a href="#">2월 공지입니다</a></h4>
                            <p>2022-02-03</p>
                          </div>                    
                        </li>
                        <li>
                          <!-- <a class="aa-cartbox-img" href="#"><img src="img/woman-small-1.jpg" alt="img"></a> -->
                          <div class="aa-cartbox-info">
                            <h4><a href="#">1월 공지 입니다</a></h4>
                            <p>2022-01-03</p>
                          </div>                    
                        </li>
                         <li>
                          <!-- <a class="aa-cartbox-img" href="#"><img src="img/woman-small-2.jpg" alt="img"></a> -->
                          <div class="aa-cartbox-info">
                            <h4><a href="#">12월 공지 입니다</a></h4>
                            <p>2021-12-03</p>
                          </div>                    
                        </li>                                      
                      </ul>
                    </div>                            
                  </div>
                </aside>
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
  <footer id="aa-footer">
    <!-- footer bottom -->
    <div class="aa-footer-top">
     <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-top-area">
            <div class="row">
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <h3>Main Menu</h3>
                  <ul class="aa-footer-nav">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Our Services</a></li>
                    <li><a href="#">Our Products</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Knowledge Base</h3>
                    <ul class="aa-footer-nav">
                      <li><a href="#">Delivery</a></li>
                      <li><a href="#">Returns</a></li>
                      <li><a href="#">Services</a></li>
                      <li><a href="#">Discount</a></li>
                      <li><a href="#">Special Offer</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Useful Links</h3>
                    <ul class="aa-footer-nav">
                      <li><a href="#">Site Map</a></li>
                      <li><a href="#">Search</a></li>
                      <li><a href="#">Advanced Search</a></li>
                      <li><a href="#">Suppliers</a></li>
                      <li><a href="#">FAQ</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Contact Us</h3>
                    <address>
                      <p> 25 Astor Pl, NY 10003, USA</p>
                      <p><span class="fa fa-phone"></span>+1 212-982-4589</p>
                      <p><span class="fa fa-envelope"></span>dailyshop@gmail.com</p>
                    </address>
                    <div class="aa-footer-social">
                      <a href="#"><span class="fa fa-facebook"></span></a>
                      <a href="#"><span class="fa fa-twitter"></span></a>
                      <a href="#"><span class="fa fa-google-plus"></span></a>
                      <a href="#"><span class="fa fa-youtube"></span></a>
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
    <!-- footer-bottom -->
    <div class="aa-footer-bottom">
      <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-bottom-area">
            <p>Designed by <a href="http://www.markups.io/">MarkUps.io</a></p>
            <div class="aa-footer-payment">
              <span class="fa fa-cc-mastercard"></span>
              <span class="fa fa-cc-visa"></span>
              <span class="fa fa-paypal"></span>
              <span class="fa fa-cc-discover"></span>
            </div>
          </div>
        </div>
      </div>
      </div>
    </div>
  </footer>
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