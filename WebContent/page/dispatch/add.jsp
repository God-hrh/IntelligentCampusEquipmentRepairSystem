<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" name="viewport">
  <title>设备报修</title>

  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/modules/ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/modules/fontawesome/web-fonts-with-css/css/fontawesome-all.min.css">

  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/demo.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/style.css">
  
  
  

  
</head>

<body>
  <div id="app">
    <div class="main-wrapper">
      <div class="navbar-bg"></div>
     
  
     
     
           <!-- 使用引入语句 ，将导航也页面引入进来 -->
      <jsp:include page="/page/nav.jsp"></jsp:include>
       <!-- 使用引入语句 ，引入左边的导航 -->
      <jsp:include page="/page/left.jsp"></jsp:include>
    

     
    
    
     
    
      
       
      <div class="main-content">
        <section class="section">
          <h1 class="section-header">
            设备报修
          </h1>
          
          <div class="section-body">
            
              
              
              <div >
                
                    
                    <!-- 添加区域的一个表单 -->
                    
              <form action="/store/repairAdd" method="post"  enctype="multipart/form-data">

				  <div class="form-group row">
				  
				   <div class="col-md-2"></div>
				    <label  for="buildingId" class="col-md-2  col-form-label-lg">设备位置</label>
				    <div class="col-md-4">
				      <select   name="buildingId"  class="form-control form-control-lg" id="buildingId">
				          <c:forEach items="${blist}" var="building">
				            <option value="${building.id}">${building.buildingName}</option>
				          </c:forEach>
				      </select>
				    </div>
				  </div>
				  
				  
				    <div class="form-group row">
				  
				   <div class="col-md-2"></div>
				    <label  for="equipmentId" class="col-md-2  col-form-label-lg">设备名称</label>
				    <div class="col-md-4">
				     
				      <select name="equipmentId"  class="form-control form-control-lg" id="equipmentId" >
				        <c:forEach items="${elist}" var="equipment">
				        <option value="${equipment.id}">${equipment.equipment_name}</option>
				        </c:forEach>
				      </select>
				    </div>
				  </div>
				  
				  
				    <div class="form-group row">
				  
				   <div class="col-md-2"></div>
				    <label  for="content" class="col-md-2  col-form-label-lg">问题描述</label>
				    <div class="col-md-4">
				      
				      <textarea rows="5" cols=""  name="content"  class="form-control form-control-lg" id="content" >
				      
				      </textarea>
				    </div>
				  </div>
				  
				  
				  
				    <div class="form-group row">
				  
				   <div class="col-md-2"></div>
				    <label  for="colFormLabelLg" class="col-md-2  col-form-label-lg">故障图片</label>
				    <div class="col-md-4">
				      <input type="file"  name="fileName"  class="form-control form-control-lg" id="colFormLabelLg" >
				    </div>
				  </div>
				    <div class="form-group row">
				  
				   <div class="col-md-2"></div>
				    <label  for="colFormLabelLg" class="col-md-2  col-form-label-lg">报修人</label>
				    <div class="col-md-4">
				      <input type="text"  name="buildingName"  class="form-control form-control-lg disabled" disabled id="colFormLabelLg" value="${user.userName}">
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
        </section>
      </div>
      </footer>
    </div>
  </div>










<script src="${pageContext.request.contextPath}/dist/js/sa-functions.js"></script>
  <script src="${pageContext.request.contextPath}/dist/js/scripts.js"></script>
  <script src="${pageContext.request.contextPath}/dist/js/custom.js"></script>
  <script src="${pageContext.request.contextPath}/dist/js/demo.js"></script>

  
  
</body>
</html>