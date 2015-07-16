<%-- 
    Document   : newAccount
    Created on : 16-Jul-2013, 17:23:20
    Author     : Robert Forde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Customer</title>
        <link href="default.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript">
            function validate() {
                var errors=0;
                var msg="You must fill in the ";
                var u = document.regForm.user.value;
                var p = document.regForm.pass.value;
                var a = document.regForm.answer.value;
                var d = document.regForm.answer.value;
                var e = document.regForm.email.value;
                var m = document.regForm.mobile.value;
                if(u==null || u=="") {
                    errors++;
                    msg+="username"
                }
                if(p==null || p=="") {
                    errors++;
                    if(errors>1)msg+=", ";
                    else msg+=" ";
                    msg+="password";
                }
                if(a==null || a=="") {
                    errors++;
                    if(errors>1)msg+=", ";
                    else msg+=" ";
                    msg+="answer";
                }
                if(d==null || d=="") {
                    errors++;
                    if(errors>1)msg+=", ";
                    else msg+=" ";
                    msg+="address";
                }
                if(e==null || e=="") {
                    errors++;
                    if(errors>1)msg+=", ";
                    else msg+=" ";
                    msg+="e-mail";
                }
                if(m==null || m=="") {
                    errors++;
                    if(errors>1)msg+=", ";
                    else msg+=" ";
                    msg+="mobile";
                }
                if(errors!=0) {
                    alert(msg);
                    return false;
                }
                return true;
                
            }
            function formReset() {
                document.getElementById("regForm").reset();
                document.regForm.user.focus();
            }
        </script>
    </head>
    <body>
        <%@include  file="includes/header.html" %>
        
        <div id="detailB">
            
            <div id="innerBank2">
                <div id="innerTitle">
                    <marquee behavior="scroll" scrollamount="12" direction="left" width="586px">Online Bank</marquee>
                </div>
            </div>
            <div id="detailB_1">
                <div id="user_Title">
                    Customer Registration for New Account
                </div>                
                <div id="detailB_1left">
                    <img src="images/img05.png" height="50" width="50" />
                </div>
                <div id="detailB_1right">
                    
                    <form id="regForm" name="regForm" action="register.do" onsubmit="return validate();" method="post">
                        <table>
                            <tr>
                                <td><b>Username:</b></td>
                                <td><input type="text" size="20" name="user"/></td>
                            </tr>
                            <tr>
                                <td><b>Password:</b></td>
                                <td><input type="password" size="20" name="pass"/></td>
                            </tr>
                            <tr>
                                <td><b>Security Question:</b></td>
                                <td><select name="security">
                                        <option value="Your First School Name">Your First School Name?</option>
                                        <option value="Your Car Number">Your Car Number?</option>
                                        <option value="Your Mothers Name">Your Mothers Name?</option>
                                        <option value="Favorite Color">Favorite Color?</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td><b>Answer:</b></td>
                                <td><input type="text" size="25" name="answer"/></td>
                            </tr>
                            <tr>
                                <td><b>Address:</b></td>
                                <td><textarea cols="20" rows="4" name="address"></textarea></td>
                            </tr>
                            <tr>
                                <td><b>E-Mail:</b></td>
                                <td><input type="text" size="20" name="email"/></td>
                            </tr>
                            <tr>
                                <td><b>Mobile:</b></td>
                                <td><input type="text" size="20" name="mobile"/></td>
                            </tr>
                            <tr>
                                <td style="text-align:right"><input type="button" onclick="formReset();" value="Reset"/></td>
                                <td><input type="submit" value="Create Account"/></td>
                            </tr>
                        </table>
                    </form>
                    
                    
                </div>
            </div>    
        </div>
        <%@include  file="includes/footer.html" %>
    </body>
</html>
