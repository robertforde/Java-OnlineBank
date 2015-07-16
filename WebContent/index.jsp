<%-- 
    Document   : index
    Created on : 13-Jul-2013, 21:32:19
    Author     : Robert Forde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="default.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <%@include  file="includes/header.html" %>
        <div id="detailA">

            <div id="innerBank">
                <div id="innerTitle">
                    <marquee behavior="scroll" scrollamount="12" direction="left" width="646px">Online Bank</marquee>
                </div>
            </div>

            <div id="detailA_1">

                <div id="login_Title">
                    Customer Login
                </div>
                <div id="usersImage">
                    <img src="images/img04.png" width="50" height="50"/>
                </div>
                <form action="logincheck.do" method="post">
                    <div id="loginTable">
                        <table>
                            <tr>
                                <td><b>Username:</b>&nbsp;&nbsp;</td>
                                <td><input type="text" size="20" name="user"/></td>
                            </tr>
                            <tr>
                                <td><b>Password:</b>&nbsp;&nbsp;</td>
                                <td><input type="password" size="20" name="pass"/></td>
                            </tr>
                            
                            <tr>
                                <td></td>
                                <td style="margin-left: 30px;"><input type="submit" value="Submit"/></td>
                            </tr>
                        </table>
                    </div>
                </form>
                <div id="loginNew">
                    Want to Create a New Account?
                    <a href="register.jsp">Click here</a>
                </div>
            </div>
            <div id="detailA_2">
                The central concept of the application to allow the customer(s)
                to service virtually using the Internet without going to the
                bank and allow customers to open new account, withdraw deposit,
                close and getting balance using this banking service. The 
                information pertaining to the customers store on an RDBMS at 
                the server side (BANK). The Bank services the customers 
                according to the customer's intention and it updates and 
                backups of each customer transaction accordingly.
            </div>
        </div>     
        <%@include  file="includes/footer.html" %>
    </body>
</html>
