<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>设备报修</title>
<link rel="icon" href="favicon.ico" type="image/ico">
<link
	href="${pageContext.request.contextPath}/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/dist/css/materialdesignicons.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/dist/css/style.min.css"
	rel="stylesheet">
</head>

<body data-theme="translucent" data-logobg="color_8" data-headerbg="color_8" data-sidebarbg="color_3">
	<div class="lyear-layout-web">
		<div class="lyear-layout-container">
			<!-- 使用引入语句 ，将导航也页面引入进来 -->
			<jsp:include page="/page/nav.jsp"></jsp:include>
			<!-- 使用引入语句 ，引入左边的导航 -->
			<jsp:include page="/page/left.jsp"></jsp:include>


			<!--页面主要内容-->
			<main class="lyear-layout-content">
			<div class="card-header">
				<h4>设备报修</h4>
			</div>
			<div class="card-body">

				<!-- 添加区域的一个表单 -->

				<form action="${pageContext.request.contextPath}/submit" enctype="multipart/form-data"
					method="post">

					<div class="row col-sm-offset-2">
						<div class="form-group col-sm-5 col-sm-offset-2">
							<label for="example-nf-email">设备名称</label> <select
								name="equipment_name_id" class="form-control"
								id="FormControlSelect">
								<option>请选择设备名称</option>
								<c:forEach items="${list1}" var="equip">
									<option value="${equip.id}">${equip.equipment_name}</option>
								</c:forEach>
							</select>
						</div>
					</div>

					<div class="row col-sm-offset-2">
						<div class="form-group col-sm-5 col-sm-offset-2">
							<label for="example-nf-password">设备位置</label> <select
								name="equipment_building_id" class="form-control"
								id="FormControlSelect">

								<option>请选择设备位置</option>

								<c:forEach items="${list}" var="build">

									<option value="${build.id}">${build.buildingName}</option>

								</c:forEach>
							</select>
						</div>
					</div>

					<div class="row col-sm-offset-2">
						<div class="form-group col-sm-5 col-sm-offset-2">
							<label for="example-nf-password">问题描述</label>
							<textarea rows="5" cols="" name="equipment_content"
								class="form-control form-control-lg" id="colFormLabelLg"></textarea>
						</div>
					</div>

					<div class="row col-sm-offset-2">
						<div class="form-group col-sm-5 col-sm-offset-2">
							<label for="example-nf-password">故障图片</label> <input type="file"
								name="equipment_img" id="colFormLabelLg"
								class="form-control form-control-lg">
						</div>
					</div>

					<div class="row col-sm-offset-2">
						<div class="form-group col-sm-5 col-sm-offset-2">
							<label for="example-nf-password">报修人名</label>
							<input type="hidden" name="equipment_user" value="${user.userName }" >
							
							 <input type="text"
								class="form-control form-control-lg disabled" disabled
								id="colFormLabelLg" value="${user.userName }" 
								>
						</div>
					</div>

					<div class="row col-sm-offset-5 row">
						<div class="form-group">
							<button type="submit" class="btn btn-success">提交</button>
						</div>
					</div>
					<script>
				 
				  </script>
				</form>
			</div>

			</main>
			<!--End 页面主要内容-->
		</div>
	</div>

	<script type="text/javascript" src="${pageContext.request.contextPath}/dist/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/dist/js/perfect-scrollbar.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/dist/js/main.min.js"></script>
</body>
</html>