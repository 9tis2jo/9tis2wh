<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | Wishlist Page</title>
    
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
 <!-- Cart view section -->
<section id="cart-view">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="sub-menu-1">
          <nav class="sub-menu-1-1">
            <div class="sub-menu-1-1-1"><a href="product-registration.html">상품등록</a></div>
            <div class="sub-menu-1-1-1"><a href="product-management.html">상품관리</a></div>
            <div class="sub-menu-1-1-1"><a href="transaction-history.html" >구매/판매 내역</a></div>
          </nav>
        </div>
        <div class="sub-title-1">
          <main class="sub-title-1-1">
            <div class="sub-title-1-1-1">
              <h2>기본정보<span>*필수항목</span></h2>
              <ul class="sub-main">
                <li class="sub-main-1">
                  <div class="sub-main-1-1">상품이미지<span>*</span><small>(0/12)</small></div>
                  <div class="sub-main-1-2">
                    <ul class="sub-main-1-2-1">
                      <li class="sub-main-1-2-1-1">이미지 등록<input type="file" accept="image/jpg, image/jpeg, image/png"
                          multiple=""></li>
                    </ul>
                    <div class="sc-kOCNXg ksQfBV">
	                    <b>* 상품 이미지는 640x640에 최적화 되어 있습니다.</b>
	                    <br>- 이미지는 상품등록 시 정사각형으로 짤려서등록됩니다.
	                    <br>- 이미지를 클릭 할 경우 원본이미지를 확인할 수 있습니다.
	                    <br>- 이미지를 클릭 후 이동하여 등록순서를 변경할 수 있습니다.
	                    <br>- 큰 이미지일경우 이미지가 깨지는 경우가 발생할 수 있습니다.
	                    <br>최대 지원 사이즈인 640 X 640 으로 리사이즈 해서 올려주세요.(개당 이미지 최대 10M)
                    </div>
                    <!-- <div class="sc-jwKygS fuybda">
                      <div class="sc-eQGPmX hBBOjs"><button type="button" class="sc-dAOnuy gCcDDI"><img
                            src=""
                            width="34" height="32" alt="닫기 버튼 아이콘"></button>
                        <div class="sc-cSYcjD fVHGdp">
                          <div class="sc-gjAXCV foQbbV">상품이미지</div>
                          <div class="sc-dOkuiw cuchOe"></div>
                          <div class="sc-hZeNU bmfKXo"></div>
                        </div>
                      </div>
                    </div> -->
                  </div>
                </li>
                <li class="sub-main-1">
                  <div class="sub-main-1-1">제목<span>*</span></div>
                  <div class="sub-main-1-3">
                    <div class="sub-main-1-3-1">
                      <div class="sub-main-1-3-1-1"><input type="text" placeholder="상품 제목을 입력해주세요."
                          class="sc-jTNJqp jcrNYi" value=""></div>
                      <div class="sub-main-1-3-1-2">0/40</div>
                    </div>
                  </div>
                </li>
                <li class="sub-main-1">
                  <div class="sub-main-1-1">카테고리<span>*</span></div>
                  <div class="sub-main-1-4">
                    <div class="sub-main-1-4-1">
                      <div class="sub-main-1-4-1-1">
                        <ul class="sub-main-1-4-1-1-1">
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">여성의류</button></li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">남성의류</button></li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">신발</button></li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">가방</button></li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">시계/쥬얼리</button>
                          </li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">패션 액세서리</button>
                          </li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">디지털/가전</button>
                          </li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">스포츠/레저</button>
                          </li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">차량/오토바이</button>
                          </li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">스타굿즈</button></li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">키덜트</button></li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">예술/희귀/수집품</button>
                          </li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">음반/악기</button>
                          </li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">도서/티켓/문구</button>
                          </li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">뷰티/미용</button>
                          </li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">가구/인테리어</button>
                          </li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">생활/가공식품</button>
                          </li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">유아동/출산</button>
                          </li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">반려동물용품</button>
                          </li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">기타</button></li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">지역 서비스</button>
                          </li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">원룸/함께살아요</button>
                          </li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">번개나눔</button></li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">구인구직</button></li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">재능</button></li>
                          <li class="sub-main-1-4-1-1-1-1"><button type="button" class="sc-ixltIz iEPSCX">커뮤니티</button></li>
                        </ul>
                      </div>
                      <div class="sub-main-1-4-1-2">중분류 선택</div>
                      <div class="sub-main-1-4-1-3">소분류 선택</div>
                    </div>
                    <h3 class="sc-bWjmDF bUJhwz">선택한 카테고리 : <b></b></h3>
                  </div>
                </li>
                <li class="sub-main-1">
                  <div class="sub-main-1-1">거래지역<span>*</span></div>
                  <div class="sub-main-1-5">
                    <div class="sub-main-1-5-1">
                    	<button type="button" class="sub-main-1-5-1-1">내 위치</button>
                    	<button type="button" class="sub-main-1-5-1-1">최근 지역</button>
                    	<button type="button" class="sub-main-1-5-1-1">주소검색</button>
                    	<button type="button" class="sub-main-1-5-1-1">지역설정안함</button>
                    </div>
                    <input readonly="" placeholder="선호 거래 지역을 검색해주세요." class="sub-main-1-5-2" value="지역설정안함">
                  </div>
                </li>
                <li class="sub-main-1">
                  <div class="sub-main-1-1">상태<span>*</span></div>
                  <div class="sub-main1-6">
                    <div class="sub-main-1-6-1">
                    	<label for="중고상품" class="sub-main-1-6-1-1">
                    		<input id="중고상품" name="state" type="radio" value="0" checked>중고상품
                    	</label>
                    	<label for="새상품" class="sub-main-1-6-1-2">
                    		<input id="새상품" name="state" type="radio" value="0">새상품
                    	</label>
                    </div>
                  </div>
                </li>
                <li class="sub-main-1">
                  <div class="sub-main-1-1">교환<span>*</span></div>
                  <div class="sub-main-1-7">
                    <div class="sub-main-1-7-1">
	                    <label for="교환불가" class="sub-main-1-7-1-1">
	                    	<input id="교환불가" name="exchange" type="radio" value="0" checked="">교환불가
	                    </label>
	                    <label for="교환가능" class="sub-main-1-7-1-2">
	                    	<input id="교환가능" name="exchange" type="radio" value="0">교환가능
	                    </label>
                    </div>
                  </div>
                </li>
                <li class="sub-main-1">
                  <div class="sub-main-1-1">가격<span>*</span></div>
                  <div class="sub-main-1-8">
                    <div class="sub-main-1-8-1">
                    	<input type="text" placeholder="숫자만 입력해주세요." class="sub-main-1-8-1-1" value="">원
                    </div>
                    <div class="sub-main-1-8-2">
                      <div class="sub-main-1-8-2-1">
                      	<label for="freesShipping" class="sub-main-1-8-2-1-1">
                      		<input id="freesShipping" type="checkbox">배송비 포함
                      	</label>
                      </div>
                    </div>
                  </div>
                </li>
                <li class="sub-main-1">
                  <div class="sub-main-1-1">설명<span>*</span></div>
                  <div class="sub-main-1-9">
                  	<textarea placeholder="상품 설명을 입력해주세요. (10글자 이상)" rows="6" class="sub-main-1-9-1"></textarea>
                  </div>
                </li>
                <li class="sub-main-1">
                  <div class="sub-main-1-1">연관태그</div>
                  <div class="sub-main-1-10">
                    <div class="sub-main-1-10-1">
                      <div class="sub-main-1-10-1-1">
                        <div class="sub-main-1-10-1-1">
                        	<input type="text" placeholder="연관태그를 입력해주세요. (최대 5개)" value="">
                        </div>
                      </div>
                    </div>
                    <ul class="sub-main-1-10-2">
                      <li>
                        <p>태그는 띄어쓰기로 구분되며 최대 9자까지 입력할 수 있습니다. </p>
                      </li>
                      <li>
                        <p>태그는 검색의 부가정보로 사용 되지만, 검색 결과 노출을 보장하지는 않습니다.</p>
                      </li>
                      <li>
                        <p>검색 광고는 태그정보를 기준으로 노출됩니다.</p>
                      </li>
                      <li>
                        <p>상품과 직접 관련이 없는 다른 상품명, 브랜드, 스팸성 키워드 등을 입력하면 노출이 중단되거나 상품이 삭제될 수 있습니다.</p>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="sub-main-1">
                  <div class="sub-main-1-1">수량</div>
                  <div class="sub-main-1-11">
                    <div class="sub-main-1-11-1">
                    	<input type="text" class="sub-main-1-11-1-1" value="1">개
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </main>
          <footer class="enter-1">
            <div class="enter1-1"><button type="button" class="enter1-1-1">등록하기</button></div>
          </footer>
        </div>
      </div>
    </div>
  </div>
</section>
       
 <!-- / Cart view section -->

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