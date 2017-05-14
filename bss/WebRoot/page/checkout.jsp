<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>账单</title>
		<meta name="keywords" content="shoes store, check out, free template, ecommerce, online shop, website templates, CSS, HTML" />
		<meta name="description" content="Shoes Store, Check Out, free ecommerce template provided " />
		<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

		<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/ddsmoothmenu.js">
		</script>

		<script type="text/javascript">
			ddsmoothmenu.init({
				mainmenuid: "top_nav", //menu DIV id
				orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
				classname: 'ddsmoothmenu', //class added to menu's outer DIV
				//customtheme: ["#1c5a80", "#18374a"],
				contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
			})
		</script>

	</head>

	<body>

		<div id="templatemo_body_wrapper">
			<div id="templatemo_wrapper">

							<div id="templatemo_header">
					<div id="site_title">
						<h1><a href="#">理多不一定对，好书不一定贵</a></h1></div>
					<div id="header_right">
						<p>
						<c:if test="${!empty user}">欢迎，${sessionScope.user.name}</c:if>
						<c:if test="${empty user}">
							<a href="login.jsp">请先登录</a>
						</c:if>

						| <a href="user.jsp">我的账号</a> | <a href="#">我的收藏</a> | <a
							href="${pageContext.request.contextPath}/lookcart?userId=${sessionScope.user.id}">我的购物车</a> | <a href="#">账单</a>
					</p>
					</div>
					<div class="cleaner"></div>
				</div>
				<!-- 头部结束 -->

				<div id="templatemo_menubar">
					<div id="top_nav" class="ddsmoothmenu">
						<ul>
							<li>
								<a href="index.jsp" class="selected">首页</a>
							</li>
							<li>
								<a href="products.jsp">图书分类</a>
								<ul>
									<li>
										<a href="#">儿童读物</a>
									</li>
									<li>
										<a href="">自然科学</a>
									</li>
									<li>
										<a href="#">人文社科</a>
									</li>
									<li>
										<a href="#">教育</a>
									</li>
									<li>
										<a href="#">小说</a>
									</li>
									
								</ul>
							</li>
							<li>
								<a href="about.jsp">关于我们</a>
								<ul>
									<li>
										<a href="#">公司简介</a>
									</li>
									<li>
										<a href="#">团队介绍</a>
									</li>
									
								</ul>
							</li>
							<li>
								<a href="faqs.jsp">帮助中心</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/lookOrder?userId=${sessionScope.user.id}">订单</a>
							</li>
							<li>
								<a href="contact.jsp">联系我们</a>
							</li>
						</ul>
						<br style="clear: left" />
					</div>
					<div id="templatemo_search">
						<form action="${pageContext.request.contextPath}/query" method="get">
						<input type="text" value=" " name="likeName" id="keyword"
							title="keyword" onfocus="clearText(this)"
							onblur="clearText(this)" class="txt_field" /> <input
							type="submit" name="Search" value=" " alt="Search"
							id="searchbutton" title="Search" class="sub_btn" />
					</form>
					</div>
				</div>
				
				<div id="templatemo_main">
					<div id="sidebar" class="float_l">
						<div class="sidebar_box"><span class="bottom"></span>
							<h3>类别</h3>
							<div class="content">
								<ul class="sidebar_list">
									<li class="first">
										<a href="#">教育</a>
									</li>
									<li>
										<a href="#">生活</a>
									</li>
									<li>
										<a href="#">电子书</a>
									</li>
									<li>
										<a href="#">青春文学</a>
									</li>
									<li>
										<a href="#">经管类</a>
									</li>
									<li>
										<a href="#">科普类</a>
									</li>
									<li>
										<a href="#">励志</a>
									</li>
									<li>
										<a href="#">漫画</a>
									</li>
									<li>
										<a href="#">计算机类</a>
									</li>
									<li>
										<a href="#">期刊</a>
									</li>
									<li>
										<a href="#">英文原著</a>
									</li>
									<li>
										<a href="#">港澳台图书</a>
									</li>
									<li>
										<a href="#">中小学教材</a>
									</li>
									<li>
										<a href="#">文艺</a>
									</li>
									<li class="last">
										<a href="#">影像</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="sidebar_box"><span class="bottom"></span>
							<h3>畅销榜 </h3>
							<div class="content">
								<div class="bs_box">
									<a href="#"><img src="images/bangdan2.jpg" alt="image" /></a>
									<h4><a href="#">岛上书店</a></h4>
									<h5>现象级全球畅销书</h5>
									<p class="price">¥24.20</p>
									<div class="cleaner"></div>
								</div>
								<div class="bs_box">
									<a href="#"><img src="images/bangdan3.jpg" alt="image" /></a>
									<h4><a href="#">好的孤独</a></h4>
									<h5>复旦名师陈果之作</h5>
									<p class="price">¥22.40</p>
									<div class="cleaner"></div>
								</div>
								<div class="bs_box">
									<a href="#"><img src="images/bangdan4.jpg" alt="image" /></a>
									<h4><a href="#">人工智能</a></h4>
									<h5>开启人工智能时代</h5>
									<p class="price">¥35.40</p>
									<div class="cleaner"></div>
								</div>
								<div class="bs_box">
									<a href="#"><img src="images/bangdan5.jpg" alt="image" /></a>
									<h4><a href="#">工匠精神</a></h4>
									<h5>向价值型员工进化</h5>
									<p class="price">¥23.00</p>
									<div class="cleaner"></div>
								</div>
							</div>
						</div>
					</div>
					<div id="content" class="float_r">
						<h2>账单明细</h2>
						<h5><strong>地址管理</strong></h5>
						<div class="content_half float_l checkout">
							收件人
							<input type="text" style="width:300px;" />
							<br />
							<br /> 省：
							<input type="text" style="width:300px;" />
							<br />
							<br /> 市:
							<input type="text" style="width:300px;" />
							<br />
							<br />区/县:
							<input type="text" style="width:300px;" />
						</div>

						<div class="content_half float_r checkout">
							街道(详细地址)：
							<input type="text" style="width:300px;" />
							<br />
							<br /> 电话号：
							<br />
							<span style="font-size:10px">请在收货期间保持电话畅通</span>
							<input type="text" style="width:300px;" />
						</div>

						<div class="cleaner h50"></div>
						
						<h4>总共金额为: <strong>${sessionScope.cart.total }</strong></h4>
						<p><input type="checkbox" /> 我接受本网站的使用条款</p>
						<table style="border:1px solid #CCCCCC;" width="100%">
							<tr>
								<td height="80px"> <img src="images/pay3.jpg" alt="paypal" /></td>
								<td width="450px" style="padding: 0px 20px;">请仔细核对账目信息，并选择一种支付方式。
								</td>
								<td width="80">
									<a href="${pageContext.request.contextPath}/pay?userId=${sessionScope.user.id}&orderId=${sessionScope.orderId}" class="more"><img src="images/templatemo_pay.png"></a>
								</td>
							</tr>
							
						</table>
					</div>
					<div class="cleaner"></div>
				</div>
				<!-- END of templatemo_main -->

				<div id="templatemo_footer">
					<p>
						<a href="#">联系我们</a> |
						<a href="#">意见建议</a> |
						<a href="#">声明</a> |
						<a href="#">简介</a> |
						<a href="#">教技</a> |
						<a href="#">湖科大</a>
					</p>
                 
					Copyright (c) 2017
					<a href="#">个人毕业设计作品</a> 
			
				</div>
				<!-- END of templatemo_footer -->

			</div>
			<!-- END of templatemo_wrapper -->
		</div>
		<!-- END of templatemo_body_wrapper -->

	</body>

</html>