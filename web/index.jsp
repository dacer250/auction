<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/8
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <%--<meta http-equiv="refresh" content="0;url=/a/main/Index/show" />--%>
</head>
<body>
<script>
    if ((navigator.userAgent.match(/(phone|pad|pod|iPhone|iPod|ios|iPad|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i))) {
        window.location.href = "/a/main/Index/show";
    }
    else {
        window.location.href = "/a/pc/Index/show";
    }
</script>
</body>
</html>
