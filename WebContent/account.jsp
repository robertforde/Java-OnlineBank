<%-- 
    Document   : newAccount
    Created on : 17-Jul-2013, 16:27:28
    Author     : Robert Forde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Account</title>
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
                <div id="innerBank4">
                    <div id="innerTitle">
                        <marquee behavior="scroll" scrollamount="12" direction="left" width="540px">Online Bank</marquee>
                    </div>
                </div>
                <div id="transactionTitle">
                    Create Bank Account
                </div>
                <div id="accountDetails">
                    <form action="AddAccount.do" method="post">
                        <table>
                            <tr>
                                <td>Account Holder Name:</td>
                                <td><input name="name" readonly value="${uname}"></td>
                            </tr>
                            <tr>
                                <td>Account Number:</td>
                                <td><input name="number" readonly value="${accNo}"></td>
                            </tr>
                            <tr>
                                <td>Account Type:</td>
                                <td><select name="acc_type">
                                    <option value="CURRENT"> Current Account</option>
                                    <option value="SAVING"> Saving Account</option>
                                    <option value="STUDENT"> Student Account</option>
                                </select></td>
                            </tr>
                            <tr>
                                <td>Account Details:</td>
                                <td><textarea cols="20" rows="4" name="details"></textarea></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" value="Create Account"/></td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div id="transactionfooter">&nbsp;</div>
            </div>
        </div>
        <%@include  file="includes/footer.html" %>
    </body>
</html>
