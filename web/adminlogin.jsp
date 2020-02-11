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
        </head>
    <body onload="slider()">
        <div id="outer">
            <div id="header">
                <div id="logo">
                
                    <img src="images/logo.jpg" height="150px" width="150px">
                </div>
                <div id="pt">
                    <img src="images/banner.png" height="150px" width="850px"/>
                </div>
               </div>
            <div id="menu">
                <ul>
                    <li><a href="adminhome.jsp">HOME</a></li>
                    <li><a href="#">ABOUT US</a></li>
                    <li><a href="vendorreg.jsp">REGISTRATION</a></li>
                    <li><a href="enquiry.jsp">ENQUIRY</a></li>
                     <li><a href="login.jsp">LOGIN</a>
                         <li><a href="career.jsp">CAREER</a></li>

                         
                </ul>
            </div>
            <div id="slider">
                <img height="250px" width="1000px" id="slide"/>
               </div>
            <div id="main">
                <div id="lmain"></div>
                <div id="rmain">
                    <form action="genralcode/adminlogincode.jsp" method="post" style="font-family:Comic Sans Ms;color:rgb(47,138,123)">
        <h2 style="text-align:center;"> ADMIN LOGIN </h2>
          <hr/>
<center>
          <table>
       <tr> 
                    <td>User id </td><td>
                <input type="text" name="userid" required/></td>
                                       </tr>
            <tr><td>Password</td>
        <td>    <input type="password" name="password" required/>
           </td> </tr>
           <tr><td> </td></tr> <tr><td><input type="submit" value="login" style="color:captiontext; border-radius:3px; text-align:center; background-color: aqua; " required/></td></tr>
            </table>
          </center>
          </form >
                    
                
                </div>
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
