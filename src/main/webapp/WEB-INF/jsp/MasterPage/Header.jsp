
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="<c:url value="/resources/style/assets/css/bullma_css.css"/>">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <style>
        .navbar{
        font-size:large;
          position: fixed;
          top:0;
          width: 100%;
          z-index: 999;
          padding: 0;
        }
        .account:hover .nav-account{
        display: block;
        }
        .nav-account{
        	display: none;
        }

.navbar-brand {
padding: 0;
}

        a{
        text-decoration: none !important;
        }
          .navbar-item.is-mega {
              position: static;
            }
            .navbar-item.is-mega .is-mega-menu-title {
              margin-bottom: 0;
              padding: 0.375rem 1rem;
            }
            .filterDiv {
              float: left;
              background-color: #2196F3;
              color: #ffffff;
              width: 100px;
              line-height: 100px;
              text-align: center;
              margin: 2px;
              display: none;
            }
            
            .show {
              display: block;
            }
            
            .container {
              margin-top: 20px;
              overflow: hidden;
            }
            
            /* Style the buttons */
            .btn {
              border: none;
              outline: none;
              padding: 12px 16px;
              background-color: #f1f1f1;
              cursor: pointer;
            }
            #myBtnContainer{
              display: flex;
              flex-direction: column;
              flex-wrap: wrap;
              max-height: 100px;
              width: auto;
              background-color: #ee4d2d;
            }
            .btn:hover {
              background-color: #ddd;
            }
            
            .btn.active {
              background-color: #666;
              color: white;
            }
            .is-hidden-desktop-only:hover{
                opacity: 0.5;
            }
            .nav>.nav-item>.nav-link{
                padding: 12px 16px;
            }
			.close{
				display: none;	
			}
      </style>
        <!-- navigation-header -->

<nav class="navbar " style="background-color: #ee4d2d; ">
        <div class="navbar-brand"  >
          <a class="navbar-item" href="http://localhost:8080/springWebShop/Trangchu" style="color: #FFFF; font-size: 18px">
            Trang chủ
          </a>
      
          <div class="navbar-burger burger" data-target="navMenubd-example">
            <span></span>
            <span></span>
            <span></span>
          </div>
        </div>
      
        <div id="navMenubd-example" class="navbar-menu">
          <div class="navbar-start">
            <div class="navbar-item has-dropdown is-hoverable is-mega">
              <a class="navbar-link flex" style="color: #FFFF;" href="ProductMenu">
                Sản Phẩm
              </a>
              <div id="blogDropdown" class="navbar-dropdown " data-style="width: 18rem;">
                <div class="container is-fluid">
                  <div class="columns">
                    <div class="column">
                    <c:forEach var="category" items="${categoryList}" varStatus="loop">
                      <a class="navbar-item" href="http://localhost:8080/springWebShop/Trangchu/ProductMenu?categoryID=${category.getId}">
                        <div class="navbar-content">
                          <p>${category.nameCategory}</p>
                        </div>
                        <c:if test="${loop.index==4}">
                        </div><div class="column">
                        </c:if>
                      </a>
                    </c:forEach>
                      </div>
                    
                  </div>
                </div>
      
                <hr class="navbar-divider">
                <div class="navbar-item">
                  <div class="navbar-content">
                    <div class="level is-mobile">
                      <div class="level-left">
                        <div class="level-item">
                          <strong>Stay up to date!</strong>
                        </div>
                      </div>
                      <div class="level-right">
                        <div class="level-item">
                          <a class="button bd-is-rss is-small" href="#">
                            <span class="icon is-small">
                              <i class="fa fa-rss"></i>
                            </span>
                            <span>Subscribe</span>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="navbar-item has-dropdown is-hoverable">
              <div class="navbar-link" style="color: #FFFF;">
                Hỗ Trợ
              </div>
              <div id="moreDropdown" class="navbar-dropdown ">
                <a class="navbar-item " href="http://bulma.io/extensions/">
                  <div class="level is-mobile">
                    <div class="level-left">
                      <div class="level-item">
                        <p>
                          <strong>HOTLINE <i class="fa fa-volume-control-phone" aria-hidden="true"></i></strong>
                          
                          <p style="padding-left: 20px; font-size: large;"> 0111244899</p>
                        </p>
                      </div>
                    </div>
                    <div class="level-right">
                      <div class="level-item">
                        <span class="icon has-text-info">
                          
                        </span>
                      </div>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <div class="navbar-item has-dropdown is-hoverable">
              <a class="navbar-link  is-active" href="#" style="color: #FFFF ;">
                Chức Năng
              </a>
              <div class="navbar-dropdown ">
                <a class="navbar-item " href="#">
                  Overview
                </a>
                <a class="navbar-item " href="#">
                  Modifiers
                </a>
                <a class="navbar-item " href="#">
                  Columns
                </a>
                <a class="navbar-item " href="#">
                  Layout
                </a>
                <a class="navbar-item " href="#">
                  Form
                </a>
                <a class="navbar-item " href="#">
                  Elements
                </a>
      
                <a class="navbar-item is-active" href="#">
                  Components
                </a>
      
                <hr class="navbar-divider">
                <div class="navbar-item">
                  <div>
                    <p class="is-size-6-desktop">
                      <strong class="has-text-info">0.5.1</strong>
                    </p>
      
                    <small>
                      <a class="bd-view-all-versions" href="#">View all versions</a>
                    </small>
      
                  </div>
                </div>
              </div>
            </div>
            <a class="navbar-item" href="<c:url value="/User/Cart"/>"  style="color: #FFFF ;">
            <sec:authorize access="hasRole('CLIENT')">
              <span style="height: 18px;background-color: darkorange; width: 18px; border-radius: 50%;position: absolute; left: 0;top: 10px; font-size: small;
              font-size: small;text-align: center;">${client.sizeCart}</span>
              </sec:authorize>
              Giỏ Hàng<i class="fa fa-shopping-cart" aria-hidden="true" style="font-size: 18px;"></i>
            </a>
          </div>
          
          <div class="navbar-end">
            <a class="navbar-item is-hidden-desktop-only" href="#" target="_blank" style="background-color: #ee4d2d!important;">
                <span style= "height: 12px; background-color: darkorange; width: 12px;border-radius: 50%;
                position: absolute; left: 12px; top: 10px; font-size: small;
                font-size: small;text-align: center; "></span>
                
                <span class="icon" style="color: #FFFF; border-radius: 50%; border: 2px solid; padding: 12px; ">
                <i class="fa fa-bell" aria-hidden="true"></i>
              </span>
            </a>
            <div class="navbar-item">
              <div class="field is-grouped">
                <p class="control">
                
                    <sec:authorize access="hasRole('CLIENT')">
                    <a style="color: #ee4d2d!important;" class="bd-tw-button button" target="_blank" href="<c:url value="/Trangchu/Payment"/>">
                    <span>${client.money}</span>
                    <span class="icon">
                    	<i class="fa fa-money" aria-hidden="true"></i>
                    </span>
                    </a>
                    
                    </sec:authorize>
                
                    <sec:authorize access="!hasRole('CLIENT')">
                    <a style="color: #ee4d2d!important;" class="bd-tw-button button" data-social-network="Twitter" data-social-action="tweet" data-social-target="" target="_blank">
                    <i class="fa fa-twitter"></i>
                     <span class="icon">
                    	<i class="fa fa-twitter"></i>
                    </span>
                    <span>Tweet</span>
                     </a>
                    </sec:authorize>

                 
      
                </p>
                <sec:authorize access="isAuthenticated()">
                 <p class="control ">
                  <a class="button is-primary account" href="<c:url value="/logout"/>">
					
                    <span style="color: #ee4d2d;">Đăng Xuất <i class="fa fa-sign-out" aria-hidden="true" style="font-size: 18px; display:contents"></i></span>
                  </a>
                </p>
                </sec:authorize>

                <p class="control ">
                <sec:authorize access="hasRole('CLIENT')">
                	<a class="button is-primary account" href="<c:url value="/Account"/>">
                	<span style="color: #ee4d2d;">${client.fullName}<i class="fa fa-user" aria-hidden="true"  style="font-size: 18px; display:contents"></i></span>
                	</a>
                	
                </sec:authorize>
                <sec:authorize access="hasRole('SHOP')">
                	<a class="button is-primary account" href="<c:url value="/OwnerShop"/>">
                	<span style="color: #ee4d2d;">${shop.fullName}<i class="fa fa-user" aria-hidden="true"  style="font-size: 18px; display:contents"></i></span>
                	</a>
                	
                </sec:authorize>
                <sec:authorize access="hasRole('ADMIN')">
                	<a class="button is-primary account" href="<c:url value="/Admin"/>">
                	<span style="color: #ee4d2d;">ADMIN<i class="fa fa-user" aria-hidden="true"  style="font-size: 18px; display:contents"></i></span>
                	</a>
                	
                </sec:authorize>
                <sec:authorize access="!isAuthenticated()">
                	<a class="button is-primary account" href="<c:url value="/Trangchu/SignUpIn"/>">
                	<span style="color: #ee4d2d;">Tài Khoản<i class="fa fa-user" aria-hidden="true"  style="font-size: 18px; display:contents"></i></span>
                	</a>
                </sec:authorize>
                </p>
              </div>
            </div>
          </div>
        </div>
      </nav>
