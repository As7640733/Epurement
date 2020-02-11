<%@page import="mypack.DbManager"%>
<%
 String id=request.getParameter("id");
 String q="delete  from notification where id='"+id+"'";
 DbManager db=new DbManager();
 String res=(db.nonQuery(q)==true)?"record delete":"record is not delete";
            %>
       <script>
    alert('<%=res %>');
    window.location.href='../adminhome.jsp';
    </script>