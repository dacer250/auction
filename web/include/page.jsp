<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.frame.bean.PageBean" %>

<%
    PageBean pb = (PageBean) request.getAttribute("pageBean");

    int start = pb.getPageno() - 4;

    int stop = pb.getMaxpageno() - pb.getPageno();
    if (stop >= 5) {
        stop = pb.getPageno() + 5;
    } else {
        stop = pb.getMaxpageno();
        start = pb.getMaxpageno() - 10;
    }

    if (start <= 1) {
        start = 1;
    }

    if (pb.getPageno() <= 4) {
        start = 1;
        stop = pb.getMaxpageno();
    }
    if ((stop - start) > 10) {
        stop = 10;
    }


    request.setAttribute("start", start);
    request.setAttribute("stop", stop);
%>



<ul class="pagination">
    <c:choose>
        <c:when test="${pb.maxpageno>1 and pb.pageno>1 }">
            <li><a href="${page_list_action }&pageno=${pageno-1}">&laquo;</a></li>
        </c:when>
        <c:otherwise>
            <li class="disabled"><a href="javascript:void(0)">&laquo;</a></li>
        </c:otherwise>
    </c:choose>

    <c:forEach var="idx" begin="${start}" end="${stop}" step="1">
        <li
                <c:if test='${pb.pageno==idx}'>class="active"</c:if> ><a href="${page_list_action }&pageno=${idx }"
                >${idx }<c:if test='${pb.pageno==idx}'> <span
                class="sr-only">(current)</span></c:if></a></li>
    </c:forEach>

    <c:choose>
        <c:when test="${pb.maxpageno>1 and pb.maxpageno >=(pageno+1)}">
            <li><a href="${page_list_action }&pageno=${pageno+1}">&raquo;</a></li>
        </c:when>
        <c:otherwise>
            <li class="disabled"><a href="javascript:void(0)">&raquo;</a></li>
        </c:otherwise>
    </c:choose>
</ul>
<%--<div class="pagelink">共有${pb.maxpageno}页&nbsp;&nbsp;${pb.totalrow }条&nbsp;&nbsp;<input type="text" style="width: 30px;" id="inp_No">
    <input type="button" value="GO" onclick="pageGo()"></div>
<a href="http://www.baidu.com" id="page_go"></a>--%>
<script>
    function pageGo(){
        $("#page_go").attr("href","${page_list_action}&pageno="+ $("#inp_No").val());
        document.getElementById("page_go").click();
    }
</script>

