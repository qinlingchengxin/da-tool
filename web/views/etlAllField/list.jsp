<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="baseUrl" value="${pageContext.request.contextPath}"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>字段</title>
    <link rel="stylesheet" type="text/css" href="${baseUrl}/css/basic.css">
    <link rel="stylesheet" type="text/css" href="${baseUrl}/css/index.css">
    <link rel="stylesheet" type="text/css" href="${baseUrl}/css/topAndBottom.css">
    <script type="text/javascript" src="${baseUrl}/js/jquery.min.js"></script>

    <script type="text/javascript">
        function removeField(id) {
            $.ajax({
                url: "${baseUrl}/web/etl/etlAllField/remove.do?fieldId=" + id,
                type: "GET",
                dataType: "json",
                success: function (result) {
                    if (result.code == 1000) {
                        $("#tr_" + id).remove();
                        alert('操作成功！');
                    } else {
                        alert(result.msg);
                    }
                }
            });
        }
    </script>
</head>
<body>

<div class="content clearfloat">
    <div class="content_right fr">
        <div class="first clearfloat">
            <div class="fl title">
                <a style="font-size: 1.8rem; color: #7CA710;font-weight: 700;" href="javascript:history.go(-1);">返回</a> > 数据源 > 数据表 > 字段
            </div>
            <div class="fr operation">
                <span><a href="${baseUrl}/web/etl/etlAllFields.do?tabId=${tabId}" target="rightFrame"> <img src="${baseUrl}/img/flush.png">刷新</a></span>
            </div>
        </div>
        <div class="third">
            <table>
                <tr>
                    <th width="4%">序号</th>
                    <th width="20%">名称</th>
                    <th width="20%">说明</th>
                    <th style="text-align: center;">操作</th>
                </tr>
                <c:forEach items="${etlAllFields}" var="etlAllField" varStatus="vs">
                    <tr id="tr_${etlAllField.id}">
                        <td>${vs.index + 1}</td>
                        <td>${etlAllField.name}</td>
                        <td>${etlAllField.comment}</td>
                        <td style="text-align: center;">
                            <span><a href="javascript:removeField('${etlAllField.id}');" target="rightFrame"><img src="${baseUrl}/img/bianji.png">移除</a></span>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <div class="fenye">
                <ul class="fy_ul">
                    <li class="fy_li_first">共 ${count} 条记录</li>
                    <c:if test="${currPage == 1}">
                        <li><a href="#">上一页</a></li>
                    </c:if>
                    <c:if test="${currPage > 1}">
                        <li><a href="${baseUrl}/web/etl/etlAllFields.do?tabId=${tabId}&page=${currPage - 1}">上一页</a></li>
                    </c:if>
                    <li id="currPage">${currPage}</li>
                    <c:if test="${currPage >= totalPage}">
                        <li><a href="#">下一页</a></li>
                    </c:if>
                    <c:if test="${currPage < totalPage}">
                        <li><a href="${baseUrl}/web/etl/etlAllFields.do?tabId=${tabId}&page=${currPage + 1}">下一页</a></li>
                    </c:if>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>