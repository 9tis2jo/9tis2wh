<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | Account Page</title>
    
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
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    

    <style>
      .select-bar{                            
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
        border-radius: 4px;                                             
      }
    </style>
  </head>
  <body>
  

      
 <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->

 <%@ include file="../common/header.jsp" %>

 <!-- Cart view section -->
  <section id="aa-blog-archive">

    <div class="container">

      <div class="row">
        <div class="col-md-12">
          <div class="aa-blog-archive-area">
            
            <div class="row">
  <!-- ?????? ?????? ?????? ????????? 557??????-->
              <div class="col-md-9" >
                <div class="aa-blog-content">
                  <div class="row">

                    <ul class="nav nav-tabs aa-products-tab">
                      <li class="active"><a href="#membersee" data-toggle="tab">?????? ??????</a></li>
                      <li><a href="#productsee" data-toggle="tab">?????? ??????</a></li>
                      
                    </ul>

                    <div class="tab-content">
                      <!-- Start men product category -->
                      <div class="tab-pane fade in active" id="membersee">
                        <h4 style= "border-bottom:1px solid #ccc; padding-bottom: 10px"  >?????? ??????</h4>
                        <form action="" method="" enctype="multipart/form-data">
                          
                          <form aciton="getBoardList.do" method="post">
                            <div class="aa-blog-archive-pagination">
                              <nav>
                                <table style="margin: 0 auto;">
                                  <tr>
                                    <td>
                                      <select name="searchCondition">
                                       
                                        <c:forEach items="${conditionMap }" var="option">
                                          <option value="?????????">?????????
                                          <option value="??????">??????

                                        </c:forEach>
                                      </select>
                                      <input name="searchKeyword" type="text" />
                                      <input type="submit" value="??????" />
                                    </td>
                                  </tr>
                                </table>
                              </nav>
                            </div>
                          </form> 


                          <table cellpadding="0" cellspacing="0" width="90%" >


                            <select name="" class="select-bar">
                              <option value="regi-member" >?????? ??????</option>
                              <option value="resi-member" >?????? ??????</option>
                            </select>


                            <tr>
                            <th style="text-align: center; color: #fff; background-color: #611122da;" width="100"><spring:message code="" />?????????</th>
                            <th style="text-align: center; color: #fff; background-color: #611122da;" width="100"><spring:message code="" />??????</th>
                            <th style="text-align: center; color: #fff; background-color: #611122da;" width="200"><spring:message code="" />????????????</th>
                            <th style="text-align: center; color: #fff; background-color: #611122da;" width="200"><spring:message code="" />????????????</th>
                            <th style="text-align: center; color: #fff; background-color: #611122da;" width="200"><spring:message code="" />?????????</th>
                            <th style="text-align: center; color: #fff; background-color: #611122da;" width="200"><spring:message code="" />????????????</th>
                            <th style="text-align: center; color: #fff; background-color: #611122da;" width="200"><spring:message code="" />????????????</th>
                          </tr>
                          <tr style="text-align:center">
                              <td>?????????</td>
                              <td>??????</td>
                              <td>????????????</td>
                              <td>????????????</td>
                              <td>?????????</td>
                              <td>????????????</td>
                              <td>????????????</td>
                          </tr>
                          <tr style="text-align:center">
                              <td>?????????</td>
                              <td>??????</td>
                              <td>????????????</td>
                              <td>????????????</td>
                              <td>?????????</td>
                              <td>????????????</td>
                              <td>????????????</td>
                          </tr>    
                          <tr style="text-align:center">
                              <td>?????????</td>
                              <td>??????</td>
                              <td>????????????</td>
                              <td>????????????</td>
                              <td>?????????</td>
                              <td>????????????</td>
                              <td>????????????</td>
                          </tr>
                          <tr style="text-align:center">
                              <td>?????????</td>
                              <td>??????</td>
                              <td>????????????</td>
                              <td>????????????</td>
                              <td>?????????</td>
                              <td>????????????</td>
                              <td>????????????</td>
                          </tr>                              


                        </table>
                        </form>
                      <%-- <button class="aa-browse-btn" style="float: none; margin-top: 5px;"><a href="" style="color: #fff">??????</a></button>     --%>
                    </div>


                    <div class="tab-pane fade" id="productsee" >
                        <h4 style= "border-bottom:1px solid #ccc; padding-bottom: 10px"  >?????? ??????</h4>
                        <form action="" method="" enctype="multipart/form-data">

                          <form aciton="getBoardList.do" method="post">
                            <div class="aa-blog-archive-pagination">
                              <nav>
                                <table style="margin: 0 auto;">
                                  <tr>
                                    <td>
                                      <select name="searchCondition">
                                       
                                        <c:forEach items="${conditionMap }" var="option">
                                          <option value="?????????">?????????
                                          <option value="?????????">?????????
                                          <option value="????????????">????????????
                                          <option value="????????????">????????????
                                          <option value="????????????">????????????
                                          <option value="?????????">?????????
                                          

                                        </c:forEach>
                                      </select>
                                      <input name="searchKeyword" type="text" />
                                      <input type="submit" value="??????" />
                                    </td>
                                  </tr>
                                </table>
                              </nav>
                            </div>
                          </form> 

                          <table cellpadding="0" cellspacing="0" width="90%" >


                            <select name="" class="select-bar">
                              <option value="regi-member" >?????? ??????</option>
                              <option value="resi-member" >????????? ??????</option>
                              <option value="resi-member" >?????? ??????</option>
                            </select>

                            <tr>
                            <th style="text-align: center; color: #fff; background-color: #611122da;" width="100"><spring:message code="" />?????????</th>
                            <th style="text-align: center; color: #fff; background-color: #611122da;" width="200"><spring:message code="" />?????????</th>
                            <th style="text-align: center; color: #fff; background-color: #611122da;" width="200"><spring:message code="" />????????????</th>
                            <th style="text-align: center; color: #fff; background-color: #611122da;" width="200"><spring:message code="" />????????????</th>
                            <th style="text-align: center; color: #fff; background-color: #611122da;" width="200"><spring:message code="" />?????????</th>
                            <th style="text-align: center; color: #fff; background-color: #611122da;" width="200"><spring:message code="" />?????????</th>
                            <th style="text-align: center; color: #fff; background-color: #611122da;" width="300"><spring:message code="" />????????????</th>
                            <th style="text-align: center; color: #fff; background-color: #611122da;" width="100"><spring:message code="" />?????????</th>
          
                          </tr>
                          <tr style="text-align:center">
                              <td>?????????</td>
                              <td>?????????</td>
                              <td>????????????</td>
                              <td>????????????</td>
                              <td>?????????</td>
                              <td>?????????</td>
                              <td>????????????</td>
                              <td>?????????</td>
                          </tr>
                          <tr style="text-align:center">
                              <td>?????????</td>
                              <td>?????????</td>
                              <td>????????????</td>
                              <td>????????????</td>
                              <td>?????????</td>
                              <td>?????????</td>
                              <td>????????????</td>
                              <td>?????????</td>
                          </tr>
                          <tr style="text-align:center">
                              <td>?????????</td>
                              <td>?????????</td>
                              <td>????????????</td>
                              <td>????????????</td>
                              <td>?????????</td>
                              <td>?????????</td>
                              <td>????????????</td>
                              <td>?????????</td>
                          </tr>
                          <tr style="text-align:center">
                              <td>?????????</td>
                              <td>?????????</td>
                              <td>????????????</td>
                              <td>????????????</td>
                              <td>?????????</td>
                              <td>?????????</td>
                              <td>????????????</td>
                              <td>?????????</td>
                          </tr>                              


                        </table>
                        </form>
                      <%-- <button class="aa-browse-btn" style="float: none; margin-top: 5px;"><a href="" style="color: #fff">??????</a></button>     --%>
                    </div>
                      <!-- / men product category -->
                      
                      <!-- / sports product category -->
                      <!-- start electronic product category -->

                      <!-- / electronic product category -->
                    
                  </div>
                </div>

                <div class="aa-blog-archive-pagination">
                  <nav>
                    <ul class="pagination">
                      <li>
                        <a aria-label="Previous" href="#">
                          <span aria-hidden="true">??</span>
                        </a>
                      </li>
                      <li class="active"><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">5</a></li>
                      <li>
                        <a aria-label="Next" href="#">
                          <span aria-hidden="true">??</span>
                        </a>
                      </li>
                    </ul>
                  </nav>
                </div>
  
              </div>
              <!-- ?????? ?????? ?????? ????????? -->

            </div>
           
          </div>
        </div>
      </div>
    </div>
  </section>
 <!-- / Cart view section -->

 <%@ include file="../common/footer.jsp" %>
 

  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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