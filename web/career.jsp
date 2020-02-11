<%@page contentType="text/html" pageEncoding="UTF-8"%>html>
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
                    <li><a href="#">HOME</a></li>
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
               
              

<center>
    <form action="CareerCode" method="post" enctype="multipart/form-data" style="font-family:Comic Sans Ms;color:rgb(47,138,123)"/>
          <h1> CAREER FORM </h1>
          <hr/>

<table>
<tr>                       
                            <td> Enter name :</td>
                            <td><input type="text" name="name" required/></td>
                    </tr>
                    <tr>
                        <td>  Select Gender :</td>
                        <td> <input type="radio" name="gender" value="male"/>Male
                            <input type="radio" name="gender" value="female"/>Female</td>
                    </tr>
                    <tr>
                        <td> Address :</td>
                        <td>  <input type="text" name="address"/></td>
                    </tr>
                    <tr>
                        <td>  Contact No : </td>
                        <td>   <input type="number" name="contactno" class="input"/></td>
                    </tr>
                    <tr>
                        <td>  Email Id :</td>
                        <td>  <input type="text" name="emailaddress" class="input"/></td>
                    </tr>
                    <tr>
                        <td>Qualification</td>
                        <td><select name="qualification" required>
                                <option>--select--</option>
                                <option>High School</option>
                                <option>Intermediate</option>
                                <option>Graduate</option>
                                <option>Post Graduate</option>
                                <option>P.hd</option></select></td>
                        
                        
                    </tr>
                    <tr>
                        <td>Experience</td>
                        <td><select name="experience">
                                <option>--Experience--</option>
                                <option>Fresher</option>
                                <option>1 year experience</option>
                                <option>2 year experience</option>                 
                                <option>More than 2 years</option>
                                <option>More than 5 years</option>
                    </tr>
                    <tr>
                        <td>  Key Skills: </td>
                        <td> <textarea name="keyskills" rows="5" cols="15" name="enquirytext" required=""style="margin:0px; width: 350px; height:73px; resize:none"></textarea></td>
                    </tr>
                    <tr>
                        <td>Upload CV</td>  
                        <td><input type="file" name="cv"/></td>                        
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="submit"/></td>   
                        
                    </tr> 
                     
                        
                        
                        
                        
                        
                        
                    </table>  
           </center>             
                    </fieldset>
                     
                   </div>
            </div> <div id="footer">
                <div id="lfooter">
                    KARAM | @Copyright: &copy 2019.All rights Reserved.
                </div>
                <div id="rfooter">
                    <h2 style="color:black;font-family: serif; font-size:small; ">DEVELPOED BY:-ASHUTOSH SINGH</h2>
                </div>
            </div>
            
        
    </form>>
    </body>
</html>
