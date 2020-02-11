<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            #outer
            {
                height:1200px;
                width:1000px;
                //border:1px solid black;
                margin:0px auto;
            }
            #header
            {
                height:150px;
                width:1000px;
                //border:1px solid black;
            }
            #logo
            {
                height:150px;
                width:150px;
                background-color:rgb(227, 252, 246);
                opacity:0.5;
                float:left;
            }
            #pt
            {
                height:150px;
                width:850px;
                background-color:rgb(227, 252, 246);
                 opacity:0.7;
                float:left;
            }
            #menu
{
height:50px;
width:1000px;
border:0.3px solid rgb(47, 138, 123);
font-family:ALGERIAN;

background-color:rgb(47, 138, 123);

}
#menu ul
{
list-style-type:none;
}
#menu ul li
{
    
display:inline;
padding:17px;
//border:1px solid;
}
#menu ul li a
{
    margin-bottom:10px; 
 display:inline;
color:white;
text-decoration:none;
padding:10px;

}
#menu ul li:hover
{
background-color:rgb(64, 112, 82);
}
            #slider
            {
                height:250px;
                width:1000px;
                 opacity:0.8;
                background-color:rgb(227, 252, 246);
            }
            #main
            {
             height:600px;
             width:1000px;
            }
            #lmain
            {
                height:600px;
                width:200px;
                background-color:rgb(227, 252, 246);
                 opacity:0.7;
                float:left;
            }
            #rmain
            {
                height:600px;
                width:800px;
           
                background-color:rgb(227, 252, 246);
                 opacity:0.9;     
                float:right;
            }
            #footer
            {
                height:100px;
                    width:1000px;
                   
            }
            #lfooter
            {
                height:100px;
                    width:500px;
                    background-color:rgb(227, 252, 246);
                    opacity:0.5;
                    float:left;
            }
            #rfooter
            {
                height:100px;
                    width:500px;
                    background-color:rgb(227, 252, 246);
                  opacity:0.6;
                    float:right;
            }
            
        </style>
        
        <script>
            var imgno=0;
                        var imgarr=["cover2.jpg","cover5.jpg","cover6.jpg","cover7.jpg","cover8.jpg"];

            function slider()
            {
              var img=document.getElementById("slide");
              img.src="../images/"+imgarr[imgno];
              imgno++;
              if(imgno==5)
              {
                  imgno=0;
              }
              window.setTimeout("slider()",2000);
    }
        </script>
        </head>
    <body onload="slider()">
        <div id="outer">
            <div id="header">
                <div id="logo">
                
                    <img src="../images/logo.jpg" height="150px" width="150px">
                </div>
                <div id="pt">
                    <img src="../images/banner.png" height="150px" width="850px">
                </div>
                    
               </div>
            <div id="menu">
                <ul>
                    <li><a href="adminhome.jsp">ADMIN HOME</a></li>
                    <li><a href="enquiries.jsp">ENQUIRIES</a></li>
                    <li><a href="complain.jsp">COMPLAIN</a></li>
                    <li><a href="vendorinfo.jsp">VENDOR INFO</a></li>
                    <li><a href="loadinfo.jsp">LOAD INFO</a></li>
                    <li><a href="logout.jsp">LOGOUT</a></li>
                </ul>
            </div>
            <div id="slider">
                <img height="250px" width="1000px" id="slide"/>
            </div>
            <div id="main">
                <center> <h2 style="font-family:comic sans ms;">All Complains</h2></center>

                
                
                <table style="margin:0 auto; width:90%;" border="1" >
                  <tr>
                      
                      <th>Companyname</th>
                      <th>Address1</th>
                      
                      <th>Address2</th>
                      <th>Concernperson</th>
                      <th>Contactno</th>
                      <th>emailaddress</th>
                      <th>Tinno </th>
                      <th>Panno</th>
                      <th>Specializtion </th>
                      <th>Password </th>
                      <th>Regdate</th>
                      <th>Delete</th>
                  </tr>
                  <%
                      DbManager db=new DbManager();
                      ResultSet rs=db.executeQuery("select * from vendorreg");
                              while(rs.next())
                      {
                      %>  
                      <tr>
                          <td><%=rs.getString("companyname")%> </td>
                          <td><%=rs.getString("address1")%></td>
                          <td><%=rs.getString("address2")%> </td>
                          
                          <td><%=rs.getString("concernperson")%></td>
                          <td><%=rs.getString("contactno")%></td>
                          <td><%=rs.getString("emailaddress")%></td>
                          <td><%=rs.getString("tinno")%></td>
                      
                <td> <%=rs.getString("panno")%></td>
                
                
                
                
         <td> <%=rs.getString("specialization")%></td>       
              <td> <%=rs.getString("password")%></td> 
              <td> <%=rs.getString("regdate")%></td>
                
                
              <td> 
                          <a href="admincode/deletevendorreg.jsp?emailaddress=<%=rs.getString("emailaddress")%>">Delete</a>
                      </td>
                      </tr>
                        <% } %>
                </table>
              
                
                
                
                
                
                
                
                
                
                <div id="lmain"></div>
                <div id="rmain">
                    
     
                 </div>
            </div>   
            <div id="footer">
                <div id="lfooter"></div>
                <div id="rfooter"></div>
            </div>
        </div>
           
    </body>
</html>
