<%-- 
    Document   : deposit
    Created on : 17-Jul-2013, 19:24:04
    Author     : Robert Forde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Balance</title>
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
                            <li><a href="main.jsp">${uname}</a></li>
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
                <div id="balanceTitle">
                    Your Current Balance
                </div>
                <div id="transactionDetails">
                    <table>
                        <tr>
                            <td>Customer Name:</td>
                            <td>${uname}</td>
                        </tr>
                        <tr>
                            <td>Account Number:</td>
                            <td>${acc}</td>
                        </tr>
                        <tr>
                            <td>Current Balance:</td>
                            <td style="color: red">${balance}</td>
                        </tr>
                    </table>
                    <p>
                        If you want to Deposit then <a href="deposit.do">Click Here</a>
                        <br/> 
                        Or For Withdraw the Amount from Your Account <a href="withdraw.do">Click here</a>
                    </p>
                </div>
            </div>
        </div>
        <%@include  file="includes/footer.html" %>
    </body>
</html>
