<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<%
//pageurl
//pb
%>
<div class="page_nav">
<span class="page_nav_l"></span>
<span class="page_nav_c"><div class="wp-pagenavi">
<span class="pages">Page ${pb.pageno } of ${pb.maxpageno }</span>
	<c:if test="${pb.pageno<=2 }">
		<c:forEach var="rowno" begin="1" end="${pb.pageno+2 }">
			<c:if test="${pb.pageno==rowno}">
				<span class="current">${rowno }</span>
			</c:if>
			<c:if test="${pb.pageno!=rowno}">
			<c:if test="${pb.maxpageno>=rowno}">
			<a href="${page_list_action }&pageno=${rowno}" class="page ajax" title="${rowno }">${rowno }</a>
			</c:if>
			</c:if>
		</c:forEach>
	</c:if>
	<c:if test="${pb.pageno>2 }">
	    <c:if test="${pb.pageno -2>1 }">
	    <a href="${page_list_action }&pageno=1" class="page ajax" title="1">1</a>
	    </c:if>
		<c:if test="${pb.pageno>3 }">
		<span class="extend">...</span>
		</c:if>
		<c:forEach var="rowno" begin="${pb.pageno -2}" end="${pb.pageno+2 }">
			<c:if test="${pb.pageno==rowno}">
				<span class="current">${rowno }</span>
			</c:if>
			<c:if test="${pb.pageno!=rowno}">
			<c:if test="${pb.maxpageno>=rowno}">
				<a href="${page_list_action }&pageno=${rowno}" class="page ajax" title="${rowno }">${rowno }</a>
				</c:if>
			</c:if>
		</c:forEach>
	</c:if>
	<c:if test="${pb.maxpageno>=(pb.pageno+1) }">
	<a href="${page_list_action }&pageno=${pb.pageno+1}" class="nextpostslink  ajax">&raquo;</a>
	</c:if>
	<a href="${page_list_action }&pageno=${pb.maxpageno}" class="last  ajax" title="Last &raquo;">Last &raquo;</a></div>
</span>
<span class="page_nav_r"></span>
</div>