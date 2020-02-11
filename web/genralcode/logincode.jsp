<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<% 
String userid=request.getParameter("userid");
String Password=request.getParameter("Password");
DbManager db=new DbManager();
ResultSet rs=db.executeQuery("select password from vendorreg where emailaddress='"+userid+"'");
if(rs.next())
{
String respassword=rs.getString("password");
if(Password.equals(respassword))
{
session.setAttribute("userid", userid);
   response.sendRedirect("../userzone/userhome.jsp");    }
else
{
out.print("<script>alert('Password not match');window.location.href='../login.jsp';</script>");
}
}
else
{
out.print("<script> alert('invalid user');window.location.href='../login.jsp';</script>");
}

%>