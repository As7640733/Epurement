<%
session.invalidate();

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Logout </title>
        <script> 
        function logout()
        {
       window.history.forward();//back nhi jaa paene logout krne baad     
          window.setTimeout(window.location.href='../adminlogin.jsp',2000);
            }
        
        </script>
      </head>
      <body onload="logout()" bgcolor="black">
      </body>>
        