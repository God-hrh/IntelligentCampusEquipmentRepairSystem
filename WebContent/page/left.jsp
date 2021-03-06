<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <link href="${pageContext.request.contextPath }/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/dist/css/materialdesignicons.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/dist/css/style.min.css" rel="stylesheet">
       <!--左侧导航-->
    <aside class="lyear-layout-sidebar">
      <!-- logo -->
       <link rel="icon" href="https://im.qq.com/favicon.ico">
      <div id="logo" class="sidebar-header">
        <a href="index.html"><img src="${pageContext.request.contextPath }/dist/images/logo-sidebar.png" title="LightYear" alt="LightYear" style="height: 32px;"></a>
      </div>
      <!-- <div id="logo" class="sidebar-header" >
      <div class="logo" style="width: 240px;
	height: 64px;">
	<div style="text-align: center;line-height: 60px;">
			<span class="h3" style="font-family: STKaiti ;">智慧校园</span><span style="font-family:FZShuTi; font-size:18px;"> 设备报修系统</span> 
	</div>
      </div>
      	
      </div> -->
      <div class="lyear-layout-sidebar-scroll"> 
        
        <nav class="sidebar-main">
          <ul class="nav nav-drawer">
            <li class="nav-item"> <a href="${pageContext.request.contextPath}/page/index.jsp"><i class="mdi mdi-home"></i> 后台首页</a> </li>
            <c:forEach items="${user.permissionList}" var="permission">
            <li class="nav-item">
              <a href="${pageContext.request.contextPath}${permission.url}"><i class="mdi ${permission.percode }"></i><span>${permission.name}</span></a>
            </li>
            
        </c:forEach>
          </ul>
        </nav>
      </div>
      
    </aside>
    <!--End 左侧导航-->