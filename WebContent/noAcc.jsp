<%-- 
    Document   : accountCreated
    Created on : 17-Jul-2013, 18:40:19
    Author     : Robert Forde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>No Account</title>
        <link href="default.css" rel="stylesheet" type="text/css">
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
                <div id="innerBank5">
                     <div id="innerTitle">
                        <marquee behavior="scroll" scrollamount="12" direction="left" width="530px">Online Bank</marquee>
                    </div>
                </div>
                <div id="createdMessage">
                    Your Account Name does not have any account created.<br/>
                    To create Your Account <a href="Account.do">Click Here</a><br/>
                    Or to Log out <a href="logoff.do">Click Here</a>
                </div>
            </div>
        </div>
        <%@include  file="includes/footer.html" %>
    </body>
</html>
