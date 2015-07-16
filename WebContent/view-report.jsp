<%-- 
    Document   : deposit
    Created on : 17-Jul-2013, 19:24:04
    Author     : Robert Forde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deposit</title>
        <link href="default.css" rel="stylesheet" type="text/css">
        <link href="default2.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <%@include  file="includes/header.html" %>
        <div id="detailD">
            <div id="detailLeft">
                <div id="menuTopBottom">
                    Account Operations
                    <div id="ddblueblockmenu">
                        <ul>
                            <li><a href="main.jsp">Welcome,&nbsp;${uname}</a></li>
                            <li><a href="Account.do">Create Account</a></li>
                            <li><a href="deposit.do">Deposit</a></li>
                            <li><a href="withdraw.do">Do Withdraw</a></li>
                            <li><a href="get-balance.do">Get Balance</a></li>
                            <li><a href="transfer.do">Transfer Amount</a></li>
                            <li><a href="view-report.do">View Report</a></li>
                            <li><a href="logoff.do">LogOut</a></li>
                        </ul>
                    </div>
                <div id="menuTopBottom">&nbsp;</div>
                </div>
            </div>
            <div id="detailRight">
                <div id="innerBank4">
                    <div id="innerTitle">
                        <marquee behavior="scroll" scrollamount="12" direction="left" width="540px">Online Bank</marquee>
                    </div>
                </div>
                <div id="transactionTitle">
                    Transactions of all of your accounts
                </div>
                <div id="viewReport">
                    <table>
                        <tr>
                            <th width="14%">Acc No.</th>
                            <th width="20%">Operation</th>
                            <th width="15%">Amt</th>
                            <th width="16%">Balance</th>
                            <th width="35%">Date - Time</th>
                        </tr>
                        <c:set var="line" scope="page" value="white"/>
                        <c:forEach var="row" items="${details}">
                            <tr>
                                <c:forEach var="col" items="${row}">
                                    <c:choose>
                                        <c:when test="${line=='white'}">
                                            <td>${col}</td>
                                        </c:when>
                                        <c:otherwise>
                                            <td class="td2">${col}</td>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                                <c:choose>
                                    <c:when test="${line=='white'}">
                                        <c:set var="line" scope="page" value="black"/>
                                    </c:when>
                                    <c:otherwise>
                                        <c:set var="line" scope="page" value="white"/>
                                    </c:otherwise>
                                </c:choose>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
        <%@include  file="includes/footer.html" %>
    </body>
</html>
