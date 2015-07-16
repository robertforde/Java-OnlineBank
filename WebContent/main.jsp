<%-- 
    Document   : accountLoggedIn
    Created on : 17-Jul-2013, 15:26:52
    Author     : Robert Forde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
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
                 <div id="innerBank3">
                     <div id="innerTitle">
                         <marquee behavior="scroll" scrollamount="12" direction="left" width="540px">Online Bank</marquee>
                     </div>
                     <div id="concept">
                         The central concept of the application is to allow the
                         customer(s) to service virtually using the Internet 
                         with out going to bank and  allow customers to open new 
                         account, withdraw, deposit,  close and  getting balance
                         using this banking service.&nbsp;  The information 
                         pertaining to the customers stores on an RDBMS at the 
                         server side (BANK).&nbsp; The Bank services  the 
                         customers according to the customer&rsquo;s intention 
                         and it updates and backups  of each customer 
                         transaction accordingly.
                     </div>
                </div>
            </div>
        </div>
        <%@include  file="includes/footer.html" %>
    </body>
</html>
