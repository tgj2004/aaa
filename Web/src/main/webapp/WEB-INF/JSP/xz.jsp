<%--
  Created by IntelliJ IDEA.
  User: aa
  Date: 2022/10/6
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%--Springmvc的标签--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  %>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.6.0.js"></script>
<script type="text/javascript">


</script>
<html>
<head>
    <title>Title</title>
</head>

<center>

    <%--form标签可以更快速的开发出表单页面 方便表单回显--%>

    <%--    在注释注释中声明外部变量--%>
    <%--@elvariable id="emp" type=""--%>
<%-- 根路径 <%=request.getContextPath()%>/--%>
<%--${pageContext.request.contextPath}/emp"这也是一种--%>
    <%--enctype="multipart/form-data二进制 --%>
    <form:form action="${pageContext.request.contextPath}/emp" method="Post" modelAttribute="emp" enctype="multipart/form-data">
             <%--显示所有错误--%>
       <%--        <form:errors path="*"></form:errors>--%>

        <br><br>
        <c:if test="${emp.id !=null }">

            <fmt:message key="Emp.Tx"></fmt:message>:<input type="file" name="file" />
            <br>
            <c:set value="${emp.touxiang}" var="touxiang" scope="request"></c:set>
            <td><img alt="" height="80px" width="80px" src="aa?Path=<%=java.net.URLEncoder.encode(String.valueOf(request.getAttribute("touxiang")))%>"></td>
            <form:hidden path="id"/>
            <input type="hidden" name="_method" value="PUT"/>
        </c:if>

        <c:if test="${emp.id == null }">
            <fmt:message key="Emp.Tx"></>"></fmt:message>:<input type="file" name="file" /><br><br>
            <!-- path 属性对应 html 表单标签的 name 属性值 -->
            <%--     <font color="red"><form:errors path="name"></form:errors></font>--%>
            <p style="color:darkturquoise"><form:errors path="name"></form:errors></p>
            <fmt:message key="Emp.name"></fmt:message> :<form:input path="name"></form:input><br>
        </c:if>


        <p style="color:darkturquoise"><form:errors path="email"></form:errors></p>
        <fmt:message key="Emp.email"></fmt:message>:<form:input path="email"></form:input><br>
        <p style="color:darkturquoise"><form:errors path="sex"></form:errors></p>
        <%--    sex:<form:radiobuttons path="sex" items="${xingbie}" itemLabel="itemLabel" itemValue="itemValue"></form:radiobuttons><br>--%>
        <fmt:message key="Emp.sex"></fmt:message>:<form:radiobuttons path="sex"
                                                                     items="${genders}"></form:radiobuttons><br>
        <%--用id做key用name做value --%> <%--itemLabel:显示的数据 itemValue:传递的数据--%>
        <fmt:message key="Emp.bmname"></fmt:message>:<form:select path="bumen.id1" items="${bmsj}"
                                                                            itemValue="id1"
                                                                               itemLabel="name1"></form:select><br>

        <p style="color:darkturquoise"><form:errors path="time"></form:errors></p>
        <fmt:message key="Emp.shengri"></fmt:message>:<form:input path="time"></form:input><br>
        <p style="color:darkturquoise"><form:errors path="gongzi"></form:errors></p>
        <fmt:message key="Emp.gongzi"></fmt:message>:<form:input path="gongzi"></form:input><br>
        <input type="submit" value="<fmt:message key="Emp.AddAn"></fmt:message>"/>&nbsp;&nbsp;
    </form:form>
</center>
</body>
</html>
