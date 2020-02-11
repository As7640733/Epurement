<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%  
String userid=request.getParameter("userid");
String password=request.getParameter("password");
DbManager db=new DbManager();
String query="";
query="select password from adminlogin where userid='"+userid+"'";
ResultSet rs=db.executeQuery(query);
if(rs.next())
{
//logincode
String respassword=rs.getString("password");
if(password.equals(respassword))
{   
session.setAttribute("adminid",userid);
response.sendRedirect("../adminzone/adminhome.jsp");
}
else
{
out.print("<script>alert('invaild user');window.location.href='../adminlogin.jsp';</script>");
}
}
else
{
out.print("<script>alert('THE USER IS NOT EXIST');window.location.href='../adminlogin.jsp';</script>");


}
        
%>