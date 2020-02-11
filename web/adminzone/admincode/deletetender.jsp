<%@page import="mypack.DbManager"%>
<%
 String tid=request.getParameter("tid");
 String q="delete from tender where tid='"+tid+"'";
    
 String res=(new mypack.DbManager().nonQuery(q)==true)?"Tender is  delete":"tender is not delete";
            %>
       <script>
    alert('<%=res %>');
    window.location.href='../uploadtender.jsp';
    </script>