<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="pageNo">
    <ul>
        <c:set var="solrPage" value="${solrPage}" scope="request"></c:set>
        <%
            Map pb = (Map) request.getAttribute("solrPage");

            int pageNo = Integer.valueOf(pb.get("pageNo").toString());
            int maxPage = Integer.valueOf(pb.get("maxPage").toString());

            int start = pageNo - 4;
            int stop = maxPage;

            if (stop >= 5) {
                stop = pageNo + 5;
            } else {
                stop = maxPage;
                start = maxPage - 10;
            }

            if (start <= 1) {
                start = 1;
            }

            if (pageNo <= 4) {
                start = 1;
                stop = maxPage;
            }
            if ((stop - start) > 10) {
                stop = 10;
            }


            request.setAttribute("start", start);
            request.setAttribute("stop", stop);
        %>

        <c:forEach var="idx" begin="${start}" end="${stop}" step="1">
            <li><a <c:if test='${pb.pageno==idx}'>style="color:#a9a9a9;"</c:if>
                                     href="${page_list_action }&solrPage['pageNo']=${idx}">${idx }</a></li>
        </c:forEach>

        <li>共${solrPage.maxPage}页 ${solrPage.numFound}条</li>
    </ul>
</div>

