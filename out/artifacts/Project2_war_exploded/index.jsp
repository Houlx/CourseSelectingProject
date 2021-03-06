<%@ page import="java.util.Objects" %>
<%@ page import="bean.Student" %><%--
  Created by IntelliJ IDEA.
  User: hou
  Date: 2016/7/4
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Home Page</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">
    <script defer src="https://code.getmdl.io/1.1.3/material.min.js"></script>
    <style>
      body{font-family: 微软雅黑;}
    </style>
  </head>

  <body>
  <!-- Simple header with fixed tabs. -->
  <%
      Student student=(Student) session.getAttribute("student");
      if (student!=null){
//          System.out.println("student in index.jsp not null");
//          request.setAttribute("student",student);
          request.getRequestDispatcher("index_afterLogin.jsp").forward(request,response);
      }

  %>
  <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header
            mdl-layout--fixed-tabs mdl-layout--no-drawer-button">
    <header class="mdl-layout__header">
      <div class="mdl-layout__header-row">
        <!-- Title -->
        <span class="mdl-layout-title">创新实验班</span>
        <div class="mdl-layout-spacer"></div>
        <nav class="mdl-navigation">
          <a name="set" class="mdl-navigation__link" href="register.jsp">注册</a>
          <a name="set" class="mdl-navigation__link" href="login.jsp">登录</a>
        </nav>
      </div>
      <!-- Tabs -->
      <div class="mdl-layout__tab-bar mdl-js-ripple-effect">
        <a href="#fixed-tab-1" class="mdl-layout__tab is-active">JAVA WEB</a>
        <a href="#fixed-tab-2" class="mdl-layout__tab">嵌入式</a>
        <a href="#fixed-tab-3" class="mdl-layout__tab">图像处理</a>
      </div>
    </header>
    <%--<div class="mdl-layout__drawer">--%>
      <%--<span class="mdl-layout-title">Title</span>--%>
    <%--</div>--%>
    <main class="mdl-layout__content">
      <section class="mdl-layout__tab-panel is-active" id="fixed-tab-1">
        <div class="page-content"><!-- Your content goes here -->
            This is JAVA WEB Class.
          <!-- Colored FAB button with ripple -->
          <button onclick="alert('please login');" disabled="disabled" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
            <i class="material-icons">add</i>
          </button>
        </div>
      </section>
      <section class="mdl-layout__tab-panel" id="fixed-tab-2">
        <div class="page-content"><!-- Your content goes here -->
            This is Embedded System Class.
            <button disabled="disabled" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
                <i class="material-icons">add</i>
            </button>
        </div>
      </section>
      <section class="mdl-layout__tab-panel" id="fixed-tab-3">
        <div class="page-content"><!-- Your content goes here -->
            This is picture processing class.
            <button disabled="disabled" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
                <i class="material-icons">add</i>
            </button>
        </div>
      </section>
    </main>
  </div>
  <%--<input type="button" onclick="window.location.href='adminLogin.jsp';" value="admin">--%>
  </body>
</html>
