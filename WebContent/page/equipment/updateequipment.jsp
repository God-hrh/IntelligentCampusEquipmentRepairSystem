<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>智慧校园设备保修系统</title>

<link href="${pageContext.request.contextPath}/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/dist/css/materialdesignicons.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/dist/css/style.min.css" rel="stylesheet">
</head>
  
<body data-theme="translucent" data-logobg="color_8" data-headerbg="color_8" data-sidebarbg="color_3" >
<div class="lyear-layout-web">
  <div class="lyear-layout-container">
    <!--左侧导航-->
   <jsp:include page="/page/nav.jsp"></jsp:include>
    <!--End 左侧导航-->
    
    <!--头部信息-->
   <jsp:include page="/page/left.jsp"></jsp:include>
    <!--End 头部信息-->
    
    <!--页面主要内容-->
    <main class="lyear-layout-content">
      <div class="card-header"><h4>编辑设备</h4></div>
              <div class="card-body">
                
                <form action="${pageContext.request.contextPath}/UpdateEquipmentServlet" method="get">
                  <input type="hidden" name="id" value="${e.id }">
                  <div class="row col-sm-offset-2">
                  <div class="form-group col-sm-5 col-sm-offset-2">
                    <label for="example-nf-email">设备编号</label>
                    <input class="form-control  " type="text" id="example-nf-email" name="equipment_id" value="${e.equipment_id }">
                  </div>
                  </div>
                  <div class="row col-sm-offset-2">
                  <div class="form-group col-sm-5 col-sm-offset-2">
                    <label for="example-nf-password">设备名称</label>
                    <input class="form-control" type="text" id="example-nf-password" name="equipment_name"  value="${e.equipment_name }">
                  </div>
                  </div>
                   <div class="row col-sm-offset-2">
                  <div class="form-group col-sm-5 col-sm-offset-2">
                    <label for="example-nf-password">设备类型</label>
                    <input class="form-control" type="text" id="example-nf-password" name="equipment_type"  value="${e.equipment_type }">
                  </div>
                  </div>
                   <div class="row col-sm-offset-2">
                  <div class="form-group col-sm-5 col-sm-offset-2">
                    <label for="example-nf-password">启动时间</label>
                    <input class="form-control" type="text" id="example-nf-password" name="createtime"  value="${e.createtime }" placeholder="年-月-日">
                  </div>
                  </div>
                   <div class="row col-sm-offset-2">
                  <div class="form-group col-sm-5 col-sm-offset-2">
                    <label for="example-nf-password">责任人</label>
                    <input class="form-control" type="text" id="example-nf-password" name="responsible_person"  value="${e.responsible_person }">
                  </div>
                  </div>
                   <div class="row col-sm-offset-2">
                  <div class="form-group col-sm-5 col-sm-offset-2">
                    <label for="example-nf-password">备注</label>
                    <input class="form-control" type="text" id="example-nf-password" name="remark"  value="${e.remark }">
                  </div>
                  </div>
                  <div class="row col-sm-offset-5">
                  <div class="form-group">
                    <button class="btn btn-primary" type="submit">提交</button>
                  </div>
                  </div>
                </form>
                
              </div>
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