    <%@page import="mypack.SmsSender"%>
<%@page import="mypack.DbManager"%>
<%
String name=request.getParameter("name");
String gender=request.getParameter("gender");
String address=request.getParameter("address");
String contactno=request.getParameter("mobileno");
String emailaddress=request.getParameter("email");
String enquirytext=request.getParameter("enquirytext");
DbManager db=new DbManager();
String date=db.getDate();
String enquirydate=db.getDate();
String query="insert into enquiry(name,gender,address,contactno,emailaddress,enquirytext,enquirydate)values('"+name+"','"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"','"+enquirytext+"','"+enquirydate+"')";
   if(db.nonQuery(query)==true)
   {
    SmsSender sms=new SmsSender();
    sms.SendSms(contactno, "hii "+name+" your enquiry successfull submitted");
       out.print("<script>alert('enquiry submitted');window.location.href='../index.jsp';</script>");
}
else
{
out.println("<script>alert('enquiry not submitted');window.location.href='../index.jsp';</script>");
}

%>