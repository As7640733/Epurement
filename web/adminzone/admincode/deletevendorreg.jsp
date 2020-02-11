<%@page import="mypack.DbManager"%>
<%
String emailaddress=request.getParameter("emailaddress");
DbManager db=new DbManager();
String query="delete from vendorreg where emailaddress='"+emailaddress+"'";
if(db.nonQuery(query))
{
out.print("<script>alert('verreg is deleted');window.location.href='../vendorreg.jsp';</script>");
}
else
{
out.print("<script>alert('verreg is not deleted');window.location.href='../.vendorreg.jsp';</script>");
}

%>