<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <style>
            #outer
            {
                height:1000px;
                width:1000px;
                //border:1px solid black;
                margin:0px auto;
            box-shadow:2px 2px 50px crimson  inset;    
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
box-shadow:2px 2px 25px brown  inset; 
}
#menu ul
{
list-style-type:none;
}
#menu ul li
{
border:1px solid white;
border-radius:50px; 
color:white;
width:130px;
height:40px;
text-align:center;
float:left;
margin-left:20px;
background-color:darkcyan;
margin-top:-9px;

//text-decoration:none;
display:inline;
//padding:17px;
//border:1px solid;
}
#menu ul li a
{
text-decoration:none;
color:white;
margin-top:2px;
}
#menu ul li:hover
{
//background-color:rgb(64, 112, 82);
background-color: darkorange;
}
            #slider
            {
                height:300px;
                width:1000px;
                                 background-color:rgb(227, 252, 246);
            
            }
            #main
            {
             height:600px;
             width:1000px;
           box-shadow:2px 2px 20px cadetblue ; 
           border-radius:20px 20px 0px 0px;
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
      body
      {
      background-image:url('../images/img2.jpg');
      background-attachment:fixed;
      background-repeat: no-repeat;
      }
            
        </style>
        
        
        </head>
    <body>
        <div id="outer">
            <div id="header">   
                <div id="logo">
                
                    <img src="../images/logo.jpg" height="150px" width="150px">
                </div>
                <div id="pt">
                    <img src="../images/banner.png" height="150px" width="850px"/>
                </div>
               </div>
            <div id="menu">
                <ul>
                    <li><a href="userhome.jsp">USER HOME</a></li>
                    <li><a href="complainlog">COMPLAIN LOG</a></li>
                    <li><a href="downloadtender.jsp">DOWNLOAD TENDER</a></li>
                    <li><a href="changepassword.jsp">CHANGE PASSWORD</a></li>
                    <li><a href="logout.jsp">LOGOUT</a></li>>
                         
                         
                </ul>
            </div>
            
            <div id="main">
                 <h1 style="text-align:center">TEnder Management</h1>
<hr/>
<% 
DbManager db=new DbManager();
String q="select * from tender";
ResultSet rs=db.executeQuery(q);
if(rs!=null)
{
%>
<table style="margin: 0px autu; width:90%;" border="1">
    <tr>
                      
                      <th>Tender</th>
                      <th>Tendor Name</th>
                      
                      <th>Tender Description</th>
                      <th>Tender upload Date</th>
                      <th>Download</th>
                      <th>Delete</th>
                    </tr>
<%
while(rs.next())
{
%>
<tr> 
    <td><%=rs.getString("tid")%></td>
    <td><%=rs.getString("tendername")%></td>
    <td><%=rs.getString("description")%></td>
<td><%=rs.getString("uploaddate")%></td>
<td><a target="_blank" href="<%=request.getContextPath()+"/uploadtender/"+rs.getString("filename")%>">Download</a></td>
<td><a href="admincode/deletetender.jsp?t.id=<%=rs.getString("tid")%>">Delete</a></td>
</tr>
<%
}
%>

</table>
<% 
}

%>
                 
                 
                 
                
                        </div>   
            <div id="footer">
                <div id="lfooter">
                    KARAM | @Copyright: &copy 2019.All rights Reserved.
                </div>
                <div id="rfooter">
                    <h2 style="color:black;font-family: serif; font-size:small; ">DEVELPOED BY:-ASHUTOSH SINGH</h2>
                </div>
            </div>
        </div>
           
    </body>
</html>
