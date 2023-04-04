<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>查询界面</title>
    <!--
	SpringMVC 处理静态资源:
	1. 为什么会有这样的问题:
	优雅的 REST 风格的资源URL 不希望带 .html 或 .do 等后缀
	若将 DispatcherServlet 请求映射配置为 /,
	则 Spring MVC 将捕获 WEB 容器的所有请求, 包括静态资源的请求, SpringMVC 会将他们当成一个普通请求处理,
	因找不到对应处理器将导致错误。
	2. 解决: 在 SpringMVC 的配置文件中配置 <mvc:default-servlet-handler/>
-->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.6.0.js"></script>
    <script type="text/javascript">
        $(function(){
            $(".asd").click(function(){
                //获取点击
                var href=$(this).attr("href");
                alert(href)
                //元素设置
                //$("form").attr("action", href).submit();
                $("#delete").attr("action", href).submit();
                //return false 是为了不让点击删除按钮的时候不会跳走,在这里获取路径设置form里面的action里面提交form表单跳到指定的DELETE方法
                return false;
            })

            //值发生改变就进行操作事件
            $("#xlk").change(function(){

                window.location.href ="query?pageNO=1&pageSize="+$(this).val();
            })
            //值发生改变就进行操作事件
            $("#sdd").change(function(){

                window.location.href ="query?locale="+$(this).val();
            })
        });
    </script>
</head>
<body>
<form action=""  method="Post" id="delete">
    <input type="hidden" name="_method" value="DELETE"/>
</form>
<center>
    <br><br>
    <%-- 因为是存到Session里面的--%>
    <a href="emp"><fmt:message key="caozuo.Add"></fmt:message></a>
    <br><br>
    <%--国际化按钮--%>
    <select id="sdd">
        <option value="zh_CN"
                <c:if test="${requestScope.locale=='zh_CN'}"></c:if>><fmt:message key="emp.zh_CN"></fmt:message>
        </option>
        <option value="en_US" <c:if test="${requestScope.locale=='en_US'}">selected</c:if>>
            <fmt:message key="emp.en_US"></fmt:message>
        </option>

    </select>

    <br><br>
    <%--test是条件--%>
    <%-- !empty:未定义、 NULL、 “”(空字符)、0、“0”、FALSE、array()，均返回false;--%>
    <table border="1" cellpadding="10" cellspacing="0">
        <tr>

            <th><fmt:message key="Emp.id"></fmt:message></th>
            <th><fmt:message key="Emp.Tx"></fmt:message></th>
            <th><fmt:message key="Emp.name"></fmt:message></th>
            <th><fmt:message key="Emp.email"></fmt:message></th>
            <th><fmt:message key="Emp.sex"></fmt:message></th>
            <th><fmt:message key="Emp.bmid"></fmt:message></th>
            <th><fmt:message key="Emp.bmname"></fmt:message></th>
            <th><fmt:message key="bumen.addr"></fmt:message></th>
            <th><fmt:message key="Emp.shengri"></fmt:message></th>
            <th><fmt:message key="Emp.gongzi"></fmt:message></th>
            <th><fmt:message key="Emp.txzm"></fmt:message></th>
            <th><fmt:message key="caozuo.Update"></fmt:message></th>
            <th><fmt:message key="caozuo.Delete"></fmt:message></th>
        </tr>
        <%--  form:input、form:password、form:hidden、form:textarea：对应 HTML 表单的 text、password、hidden、textare 标签。--%>
        <%--form:radiobutton ：单选框组件标签，当表单 bean 对应的属性值和 value 值相等时，单选框被选中；--%>
        <%--  form:radiobuttons：单选框组标签，用于构造多个单选框--%>
        <%-- form:checkbox：复选框组件，用于构造单个复选框--%>
        <%-- form:checkboxs：用于构造多个复选框，使用方式同 form:radiobuttons 标签--%>
        <%--form:select：用于构造下拉框组件，使用方式同 form:radiobutons 标签--%>
        <%-- form:option：下拉框选项组件标签。使用方式同 form:radiobuttons 标签--%>
        <%-- form:errors：显示表单组件或数据校验所对应的错误--%>
        <c:forEach items="${requestScope.page.list}" var="emp">
            <tr>

                <td>${emp.id }</td>
                    <%--头像--%>
                    <%--scope放入的范围--%>
                <c:set value="${emp.touxiang}" var="touxiang" scope="request"></c:set>
                <td><img alt="" height="80px" width="80px" src="aa?Path=<%=java.net.URLEncoder.encode(String.valueOf(request.getAttribute("touxiang")))%>&txzm=${emp.txzm}"></td>
                <td>${emp.name }</td>
                <td>${emp.email }</td>
                <td>${emp.sex == 0 ? '女' :'男'}</td>
                <td>${emp.bumen.id1}</td>
                <td>${emp.bumen.name1}</td>
                <td>${emp.bumen.addr}</td>
                <td>${emp.time}</td>
                <td>${emp.gongzi}</td>
                <td>${emp.txzm}</td>
                <td><a href="emp/${emp.id}"><fmt:message key="caozuo.Update"></fmt:message></a></td>
                <td><a class="asd" href="emp/${emp.id}"><fmt:message key="caozuo.Delete"></fmt:message></a></td>
            </tr>
        </c:forEach>
    </table>
    <br><br>
    <a href="<%=request.getContextPath()%>/query?pageNO=1&pageSize=${page.pageSize}"><fmt:message key="Emp.SY"></fmt:message></a>&nbsp;&nbsp;&nbsp;
    <a href="<%=request.getContextPath()%>/query?pageNO=${page.pageCount}&pageSize=${page.pageSize}"><fmt:message key="Emp.WY"></fmt:message></a>
    <br><br>
    <c:if test="${page.pageNo !=1}">
        <a href="<%=request.getContextPath()%>/query?pageNO=${page.pageNo-1}&pageSize=${page.pageSize}"><fmt:message key="Emp.SYY"></fmt:message></a>
    </c:if>&nbsp;&nbsp;&nbsp;
    <c:if test="${page.pageNo !=page.pageCount}">
        <a href="<%=request.getContextPath()%>/query?pageNO=${page.pageNo+1}&pageSize=${page.pageSize}"><fmt:message key="Emp.XYY"></fmt:message></a>
    </c:if>
    <br><br>

    <fmt:message key="Emp.YYDSTSJ"></fmt:message><select id="xlk">
    <option value="2" <c:if test="${page.pageSize==2}">selected</c:if>>2</option>
    <option value="4"  <c:if test="${page.pageSize==4}">selected</c:if>>4</option>
    <option value="6"  <c:if test="${page.pageSize==6}">selected</c:if>>6</option>
    <option value="8"  <c:if test="${page.pageSize==8}">selected</c:if>>8</option>
</select>
    <br><br>

    第&nbsp;&nbsp;${page.pageNo}&nbsp;&nbsp;页&nbsp;&nbsp;&nbsp;&nbsp;一页&nbsp;&nbsp;${page.pageSize}&nbsp;&nbsp;条
    &nbsp;&nbsp;&nbsp;&nbsp;共&nbsp;&nbsp;${page.sum}&nbsp;&nbsp;条&nbsp;&nbsp;&nbsp;&nbsp;共&nbsp;&nbsp;${page.pageCount}&nbsp;&nbsp;页

</center>
</body>
</html>