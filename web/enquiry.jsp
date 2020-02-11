<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            #outer
            {
                height:1210px;
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
          
            input[type=submit]:hover {
  background-color: black;
}
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
            
            
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
      background-image:url('images/img2.jpg');
      background-attachment:fixed;
      background-repeat: no-repeat;
      }
            

      }
            
        </style>
        
        <script>
            var imgno=0;
            var imgarr=["cover2.jpg","cover5.jpg","cover6.jpg","cover7.jpg","cover8.jpg"];
            function slider()
            {
              var img=document.getElementById("slide");
              img.src="images/"+imgarr[imgno];
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
    <body onload="slider()">
        <div id="outer">
            <div id="header">
                <div id="logo">
                
                    <img src="images/logo.jpg" height="150px" width="150px">
                </div>
                <div id="pt">
                     <img src="images/banner.png" height="150px" width="850px">
                    
                </div>
                    
               </div>
            <div id="menu">
                <ul>
                    <li><a href="index.jsp">HOME</a></li>
                    <li><a href="about.jsp">ABOUT</a></li>
                    <li><a href="vendorregcode.jsp">REGISTRATION</a></li>
                    <li><a href="enquiry.jsp">ENQUIRY</a> </li>
                  <li><a href="login.jsp">LOGIN</a></li>
                  <li><a href="career.jsp">CAREER</a></li>
                 </ul>
            </div>
            <div id="slider">
                <img height="250px" width="1000px" id="slide"/>
            </div>
            <div id="main">
               <h2 style="color:blue;text-align:center;">
                   View All Enquiries |
                   
                </h2>
                <table style="margin:0 auto; width:90%;" border="1" >
                  <tr>
                      <th>ID</th>
                      <th>Name</th>
                      <th>Gender</th>
                      <th>Address</th>
                      <th>Contact No</th>
                      <th>Email Address</th>
                      <th>Enquiries Text</th>
                      <th>Enquiry Date</th>
                      
                  </tr>
                  <%
                      DbManager db=new DbManager();
                      ResultSet rs=db.executeQuery("select * from enquiry");
                      while(rs.next())
                      {
                      %>  
                      <tr>
                          <td><%=rs.getInt("id")%> </td>
                          <td><%=rs.getString("name")%></td>
                          <td><%=rs.getString("gender")%> </td>
                          <td><%=rs.getString("address")%></td>
                          <td><%=rs.getString("contactno")%></td>
                          <td><%=rs.getString("emailaddress")%></td>
                          <td><%=rs.getString("enquirytext")%></td>
                          <td><%=rs.getString("enquirydate")%></td>
                          
                                  
                      </tr>
                        <% } %>
                </table>
                <div id="lmain"></div>
                <div id="rmain" STYLE="
  
  background-color: #f2f2f2;
  
">
                    <form action="genralcode/enquirycode.jsp" method="post">
                                            <center>

                        
                        <h2 style="text-align:center;color:blue;">
                           Enquiry Form
                    
                           
                           <hr/>
                        </h2>
                        
                        <table style="text-align" margin="0px">
                           
                           <tr>
                               <td> Enter name </td>
                               <td> <input type="text" name="name" required style=" width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid BLUE;
  border-radius: 4px;
  box-sizing: border-box;" placeholder="ENTER NAME PLZ"/></td>
                           </tr>
                           <tr>
                               <td>Select gender</td>
                               <td><input type="radio" name="gender" value="male" style="
  
  background-color: #eee;
  border-radius: 50%; ">male
                                   <input type="radio" name="gender" value="female" >female                                   </td>
                            </tr>
                            <tr>
                                <td>Address</td>
                                
                                <td><textarea name="address" required style="margin:0px auto; width:339px; height:20px;"/></textarea></td>
                                
                                    
                                </tr>
                                <tr>
                                    <td>Contact NO </td>
                                    <td><input type="number" name="mobileno" required style="width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid BLUE;
  border-radius: 4px;
  box-sizing: border-box;"/></td>
                                    </tr>
                                    <tr>
                                        <td> Email ID</td>
                                        <td><input type="email" name="email" required style="width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid BLUE;
  border-radius: 4px;
  box-sizing: border-box;"></td>
                                        </tr>
                                <tr>
                               <td>Enquiry Text</td>
                  <td><textarea name="enquirytext" required style="margin:0px auto; width:339px; height:20px;" required/></textarea></td>

                                       <br/>
                                       <tr>
    <td>
        <button class="btn-one" type="submit" data-loading-text="Please wait..."style="width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);">SUMIT ENQUIERS</button>
</td>
</tr>
                            
                        </table>
                    </center>
                    </form>        
                    
                    
                </div>
                
            </div>   
            <div id="footer">
                <div id="lfooter"></div>
                <div id="rfooter"></div>
            </div>
        </div>
           
    </body>
</html>
        