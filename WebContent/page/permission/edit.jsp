<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" name="viewport">
  <title>用户信息修改</title>

  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/modules/ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/modules/fontawesome/web-fonts-with-css/css/fontawesome-all.min.css">

  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/demo.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/style.css">
  
  
  

  
</head>

<body data-theme="translucent" data-logobg="color_8" data-headerbg="color_8" data-sidebarbg="color_3" >
  <div id="app">
    <div class="main-wrapper">
      <div class="navbar-bg"></div>
     
    
     
     
           <!-- 使用引入语句 ，将导航也页面引入进来 -->
      <jsp:include page="/page/nav.jsp"></jsp:include>
       <!-- 使用引入语句 ，引入左边的导航 -->
      <jsp:include page="/page/left.jsp"></jsp:include>
    
     
      <main class="lyear-layout-content">
      
      <div class="container-fluid">
        
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-header"><h4>权限编辑</h4></div>
              <div class="card-body">
              
                <a href="${pageContext.request.contextPath}/perIndex" class="btn btn-default">返回</a>
     
   
                    
                    <!-- 添加区域的一个表单 -->
                    
              <form action="/store/PerUpdateServlet" method="post">

  <div class="form-group row">
  <div class="col-sm-2"></div>
    <label for="colFormLabelLg" class="col-sm-2  col-form-label col-form-label-lg">权限名称</label>
    <div class="col-sm-4">
      <input type="hidden"   value="${p.id }" name="id"  >
      <input type="text"   value="${p.name }" name="permission_name"  class="form-control form-control-lg" id="colFormLabelLg" >
    </div>
  </div>

<div class="form-group row">
  <div class="col-sm-2"></div>
    <label for="colFormLabelLg" class="col-sm-2  col-form-label col-form-label-lg">权限类型</label>
    <div class="col-sm-4">
     <input type="text"   value="${p.type }" name="permission_type"  class="form-control form-control-lg" id="colFormLabelLg" >
    </div>
  </div>
  
  <div class="form-group row">
  <div class="col-sm-2"></div>
    <label for="colFormLabelLg" class="col-sm-2  col-form-label col-form-label-lg">菜单地址</label>
    <div class="col-sm-4">
      <input type="text"   value="${p.url }" name="permission_url"  class="form-control form-control-lg" id="colFormLabelLg" >
    </div>
  </div>
  
   <div class="form-group row">
  <div class="col-sm-2"></div>
    <label for="colFormLabelLg" class="col-sm-2  col-form-label col-form-label-lg">菜单排序</label>
    <div class="col-sm-4">
      <input type="text"   value="${p.sortstring }" name="permission_sort"  class="form-control form-control-lg" id="colFormLabelLg" >
    </div>
  </div>
 




      <div class="form-group row">
				   <div class="col-md-4"></div>
				   <div class="col-md-8">
				   <button type="submit" class="btn btn-success">确定</button>     
                  </div>
				  </div>           
         </form>       
           
         </div>
               
              </div>
            </div>
          </div>
        </div>
        
     
      
    </main>
    </div>
  </div>











  <script src="${pageContext.request.contextPath}/dist/modules/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/dist/modules/popper.js"></script>
  <script src="${pageContext.request.contextPath}/dist/modules/tooltip.js"></script>
  <script src="${pageContext.request.contextPath}/dist/modules/bootstrap/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/dist/modules/nicescroll/jquery.nicescroll.min.js"></script>
  <script src="${pageContext.request.contextPath}/dist/modules/scroll-up-bar/dist/scroll-up-bar.min.js"></script>
  <script src="${pageContext.request.contextPath}/dist/js/sa-functions.js"></script>
  <script src="${pageContext.request.contextPath}/dist/js/scripts.js"></script>
  <script src="${pageContext.request.contextPath}/dist/js/custom.js"></script>
  <script src="${pageContext.request.contextPath}/dist/js/demo.js"></script>

  
  
</body>
</html>