<%@page import="com.mycompany.springwebshop.entity.ShopEntity"%>
<%@page import="com.mycompany.springwebshop.entity.ProductEntity"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	List<ProductEntity> productList;
	List<ShopEntity> shopList= (List<ShopEntity>) request.getAttribute("shopList");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.3/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.css"
	rel="stylesheet" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick-theme.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="resources/style/assets/css/stylePageHome.css">

<script type="text/javascript">
        $(document).on('ready', function () {
            $(".Products-hot").slick({
              infinite: true,
              slidesToShow: 6,
              slidesToScroll: 3
          });
        })
  </script>
<style>
.slick-prev:before {
	color: #ee4d2d;
	font-size: 30px;
}

.slick-next:before {
	color: #ee4d2d;
	font-size: 30px;
}

.close {
	display: none;
}
</style>
</head>
<body>
	<%@ include file="MasterPage/Header.jsp"%>
	<div id="main-home">
		<div class="sw" style="width: auto;">
			<form>
				<input type="search" class="search" placeholder="Search..." />
				<button class="go">
					<svg enable-background="new 0 0 512 512" version="1.1"
						viewBox="0 0 512 512" xml:space="preserve"
						xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink">
						<path
							d="M497.913,497.913c-18.782,18.782-49.225,18.782-68.008,0l-84.862-84.863c-34.889,22.382-76.13,35.717-120.659,35.717  C100.469,448.767,0,348.312,0,224.383S100.469,0,224.384,0c123.931,0,224.384,100.452,224.384,224.383  c0,44.514-13.352,85.771-35.718,120.676l84.863,84.863C516.695,448.704,516.695,479.131,497.913,497.913z M224.384,64.109  c-88.511,0-160.274,71.747-160.274,160.273c0,88.526,71.764,160.274,160.274,160.274c88.525,0,160.273-71.748,160.273-160.274  C384.657,135.856,312.909,64.109,224.384,64.109z" /></svg>
				</button>
				<a href="#" class="logo" title="Tuulkit"> <img
					src="resources/style/assets/images/logoShop/LogoWebO.png" alt="">
				</a>
			</form>
		</div>

		<div class="slider">
			<div class="slideshow-container">

				<div class="mySlides fade">
					<img
						src="https://cf.shopee.vn/file/1927455215e171ecbe00553ab73d9cc6_xhdpi"
						style="width: 100%">
				</div>

				<div class="mySlides fade">
					<img
						src="https://cf.shopee.vn/file/2cc53e9353fd62fc8812047a18993fed_xxhdpi"
						style="width: 100%">
				</div>

				<div class="mySlides fade">
					<img
						src="https://cf.shopee.vn/file/540b60a7b4a328a1f12274e1904e1ec5_xxhdpi"
						style="width: 100%">
				</div>

				<a class="prev" onclick="plusSlides(-1)">❮</a> <a class="next"
					onclick="plusSlides(1)">❯</a>
				<div class="dots">
					<span class="dot" onclick="currentSlide(1)"></span> <span
						class="dot" onclick="currentSlide(2)"></span> <span class="dot"
						onclick="currentSlide(3)"></span>
				</div>
			</div>
		</div>
		<div style="background-color: #FFFF;">
			<div style="padding: 10px; text-align: center; height: 48px;">
				<h1 style="color: #ee4d2d; font-size: 18px; font-weight: 700;">Sản
					Phẩm Được Mua Nhiều Nhất</h1>
			</div>
			<div style="width: 100%; height: 1px; background-color: #ee4d2d;"></div>
			<div class="Products-hot">
				<div class="Product-hot">
					<a href="">
						<div>
							<span class="span-hot"></span> <span class="spans"><p
									style="color: #FFFF; font-size: 14px; text-align: center;">Đã
									bán 11,1K</p></span> <img
								src="https://cf.shopee.vn/file/fabe5d101de9ff01342f89a2f056aa12"
								alt="">
						</div>
						<div>Apple Smart Keyboard Folio F...</div>
					</a>
				</div>
				<div class="Product-hot">
					<a href="">
						<div>
							<span class="span-hot"></span> <span class="spans"><p
									style="color: #FFFF; font-size: 14px; text-align: center;">Đã
									bán 11,1K</p></span> <img
								src="https://cf.shopee.vn/file/fabe5d101de9ff01342f89a2f056aa12"
								alt="">
						</div>
						<div>Apple Smart Keyboard Folio F...</div>
					</a>
				</div>
				<div class="Product-hot">
					<a href="">
						<div>
							<span class="span-hot"></span> <span class="spans"><p
									style="color: #FFFF; font-size: 14px; text-align: center;">Đã
									bán 11,1K</p></span> <img
								src="https://cf.shopee.vn/file/fabe5d101de9ff01342f89a2f056aa12"
								alt="">
						</div>
						<div>Apple Smart Keyboard Folio F...</div>
					</a>
				</div>
				<div class="Product-hot">
					<a href="">
						<div>
							<span class="span-hot"></span> <span class="spans"><p
									style="color: #FFFF; font-size: 14px; text-align: center;">Đã
									bán 11,1K</p></span> <img
								src="https://cf.shopee.vn/file/fabe5d101de9ff01342f89a2f056aa12"
								alt="">
						</div>
						<div>Apple Smart Keyboard Folio F...</div>
					</a>
				</div>
				<div class="Product-hot">
					<a href="">
						<div>
							<span class="span-hot"></span> <span class="spans"><p
									style="color: #FFFF; font-size: 14px; text-align: center;">Đã
									bán 11,1K</p></span> <img
								src="https://cf.shopee.vn/file/fabe5d101de9ff01342f89a2f056aa12"
								alt="">
						</div>
						<div>Apple Smart Keyboard Folio F...</div>
					</a>
				</div>
				<div class="Product-hot">
					<a href="">
						<div>
							<span class="span-hot"></span> <span class="spans"><p
									style="color: #FFFF; font-size: 14px; text-align: center;">Đã
									bán 11,1K</p></span> <img
								src="https://cf.shopee.vn/file/fabe5d101de9ff01342f89a2f056aa12"
								alt="">
						</div>
						<div>Apple Smart Keyboard Folio F...</div>
					</a>
				</div>
				<div class="Product-hot">
					<a href="">
						<div>
							<span class="span-hot"></span> <span class="spans"><p
									style="color: #FFFF; font-size: 14px; text-align: center;">Đã
									bán 11,1K</p></span> <img
								src="https://cf.shopee.vn/file/fabe5d101de9ff01342f89a2f056aa12"
								alt="">
						</div>
						<div>Apple Smart Keyboard Folio F...</div>
					</a>
				</div>
			</div>
		</div>

		<c:forEach var="shop" items="${shopList}" varStatus="index">
		<c:set var="productList" value="${shop.productList}"></c:set>
			<script type="text/javascript">
           $(document).on('ready', function () {
               $(".Shop${shop.id}")
				.slick(
							{
								infinite : true,
								slidesToShow :
								<c:if test="${productList.size()<5}">${productList.size()}</c:if>
								<c:if test="${productList.size()>=5}"> 3 </c:if>
				,
								slidesToScroll :2
				});
								});
			</script>
			<div style="max-width: 100%; background-color: #FFFF;">

				<div class="shop">
					<div class="header-shop">
						<div
							style="border-radius: 50%; border: 2px solid #4444; margin: 10px;">
							<img src="${shop.urlAvatar}" alt="" style="width: 80px; border-radius: 50%;">
						</div>
						<div>
							<h1 style="font-size: 30px;">${shop.nameShop}</h1>
						</div>
						<div>
							<button
								style="background-color: #FFFF; color: #ee4d2d; margin-left: 20px;">
								GHÉ THĂM <i class="fa fa-home" aria-hidden="true"></i>
							</button>
						</div>
					</div>
					<div
						style="width: 95%; height: 4px; background-color: #aaa !important;"></div>
				</div>

				<div class="Products Shop${shop.id}">
        <c:forEach var="product" items="${productList}" varStatus="index">
        
					<a class="Product" href="Product/${product.id}">
						<div>
							<span class="sale <c:if test="${product.originalPrice == product.salePrice }">close</c:if>">
							
								
							</span> <img src="${product.url}" alt="tainghe-airpod"
								style="max-width: 250px;">
						</div>
						<div class="content--product">
							<div>
								<h4 style="margin: 4px 6px;">${FormString.getFewChar(product.product)}</h4>
							</div>
							<div class="update--status">
								<div>
									<div class="_2OiIy8 _3UxTxH"
										style="font-size: 12px; margin-top: 8px;">
										Đã bán ${product.numsold}
										
									<div class="price" style="font-size: 16px;">
										<span class="_2SnSlL">${product.salePrice}</span><span
											class="_1KHyQl">₫</span>
									</div>
								</div>
								<div>
									<%
//                                	if(accesser!=null && accesser.equals("user") && client!=null)
//                                		out.print(
//                                			"<form method='post'>"
//                                				+"<input style='display: none' name='clientID' value='"+client.getId()+"'>"
//                                            	+"<input style='display: none' name='productID' value='"+product.getId()+"'>"
//                                            	+"<button class='btn btn--buyticket js--btn--buyticket'>Buy Now<i class='fa fa-cart-plus' aria-hidden='true' style='margin-left: 5px;'></i></button>"
//                                            +"</form>");
//                                	else out.print("<button class='btn btn--buyticket js--btn--buyticket'>Buy Now<i class='fa fa-cart-plus' aria-hidden='true' style='margin-left: 5px;'></i></button>");
                                %>

								</div>
							</div>
						</div>
						</div>
					</a>
			</c:forEach>
				</div>
			
			</div>
		</c:forEach>
	</div>
	

	<%@ include file="MasterPage/Footer.jsp"%>
	<script type="text/javascript"
		src="resources/style/assets/js/js-pageHome.js"></script>
</body>
</html>