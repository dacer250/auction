<%@ page import="com.frame.bean.PageBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="utf-8" %>
<table width="100%">
    <tr>
        <td align="right">
            <div style="float: right;">
                <div class="pagelink">共有${pb.maxpageno}页${pb.totalrow }条<a class="ajax"
                                                                           href="${page_list_action }&pageno=1">首页</a>
                </div>
                <c:if test="${pb.maxpageno>1 and pb.pageno>1 }">
                    <div class="pagelink"><a class="ajax" href="${page_list_action }&pageno=${pageno-1}">上一页</a></div>
                </c:if>
                <%--<c:if test="${pb.maxpageno>=5}">--%>
                <%--<div class="pagelink<c:if test='${pb.pageno==1}'> select</c:if>"><a class="ajax" href="${page_list_action }&pageno=1">1</a></div>
                <div class="pagelink<c:if test='${pb.pageno==2}'> select</c:if>"><a class="ajax" href="${page_list_action }&pageno=2">2</a></div>
                <div class="pagelink<c:if test='${pb.pageno==3}'> select</c:if>"><a class="ajax" href="${page_list_action }&pageno=3">3</a></div>
                <div class="pagelink<c:if test='${pb.pageno==4}'> select</c:if>"><a class="ajax" href="${page_list_action }&pageno=4">4</a></div>
                <div class="pagelink<c:if test='${pb.pageno==5}'> select</c:if>"><a class="ajax" href="${page_list_action }&pageno=5">5</a></div>--%>
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
                <c:forEach var="idx" begin="${start}" end="${stop}" step="1">
                    <div class="pagelink"><a class="ajax"
                                             <c:if test='${pb.pageno==idx}'>style="color:#a9a9a9;"</c:if>
                                             href="${page_list_action }&pageno=${idx }">${idx }</a></div>
                </c:forEach>
                <%--</c:if>--%>
                <%--<c:if test="${pb.maxpageno<5}">
                  <c:forEach var="idx" begin="1" end="${pb.maxpageno}" step="1">
                      <div class="pagelink<c:if test='${pb.pageno==idx}'> select</c:if>"><a class="ajax" href="${page_list_action }&pageno=${idx }">${idx }</a></div>
                  </c:forEach>
              </c:if>--%>
                <c:if test="${pb.maxpageno>1 and pb.maxpageno >=(pageno+1)}">
                    <div class="pagelink"><a class="ajax" href="${page_list_action }&pageno=${pageno+1}">下一页</a></div>
                </c:if>
                <div class="pagelink"><a class="ajax" href="${page_list_action }&pageno=${pb.maxpageno }">尾页 </a></div>
            </div>
        </td>
    </tr>
</table>
