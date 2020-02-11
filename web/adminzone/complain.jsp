<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            #outer
            {
                height:800px;
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
width:120px;
height:38px;
text-align:center;
float:left;
margin-left:0.5px;
background-color:darkcyan;
margin-top:-12px;
padding:0.5px;   
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
            }
            #lmain
            {
                height:600px;
                width:200px;
               
                float:left;
            }
            #rmain
            {
                height:600px;
                width:800px;
           
                  
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
        
        <script>
            var imgno=0;
            var imgarr=["cover2.jpg","cover5.jsp","cover6.jpg","cover7.jpg","cover8.jpg"];
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
<style> 
    .input
    {
    width: 339px;
    height: 30px;
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
                   <li><a href="adminhome.jsp">ADMIN HOME</a></li>
                    <li><a href="enquiries.jsp">ENQUIRIES</a></li>
                    <li><a href="complain.jsp">COMPLAIN</a></li>
                    <li><a href="vendorinfo.jsp">VENDOR INFO</a></li>
                    <li><a href="uploadtender.jsp">UPLOAD TENDER</a></li>
                    <li><a href="jobseekers.jsp">JOB SEEKERS</a></li>
                    <li><a href="logout.jsp">LOGOUT</a></li>
                 </ul>
                         
                         
                            </div>
            
            <div id="main" style="overflow:scroll;">
                 <table style="margin:0 auto; width:90%;" border="1" >
                     <center> <h2 style="font-family:comic sans ms;">All Complains</h2></center>
                  <tr>
                      <th>ID</th>
                      <th>Companyname</th>
                      <th>concernperson</th>
                      
                      <th>Contact No</th>
                      <th>Email Address</th>
                      <th>Subject</th>
                      <th>Complain text</th>
                      <th>Complain date </th>
                      <th>Delete</th>
                  </tr>
                  <%
                      DbManager db=new DbManager();
                      ResultSet rs=db.executeQuery("select * from complain");
                              while(rs.next())
                      {
                      %>  
                      <tr>
                          <td><%=rs.getInt("id")%> </td>
                          <td><%=rs.getString("companyname")%></td>
                          <td><%=rs.getString("concernperson")%> </td>
                          
                          <td><%=rs.getString("contactno")%></td>
                          <td><%=rs.getString("emailaddress")%></td>
                          <td><%=rs.getString("subject")%></td>
                          <td><%=rs.getString("complaintext")%></td>
                      <td>
                <td> <%=rs.getString("complaindate")%></td>
                          <td>   
                          <a href="admincode/deletecomplain.jsp?id=<%=rs.getString("id")%>">Delete</a>
                      </td>
                      </tr>
                        <% } %>
                </table>
              
                
                
                
           
             <div id="lmain"></div>
             <div id="rmain"></div>        
            
                
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