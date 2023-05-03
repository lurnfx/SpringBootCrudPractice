<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form name="myform">
        
       

        <table border="2">
            <tr>
              <th>Select</th>
               <th>Roll No</th>
               <th>Full Name</th>
               <th>Address</th>
               <th>College_Name</th>
               <th>Marks</th>
            </tr>
        <c:forEach  items="${st}" var="st">
        <tr>
          <td><input type="radio" name="rollNo" value="${st.rollNo}"></td>
          <td>${st.rollNo}</td>
          <td>${st.name}</td>
          <td>${st.address}</td>
          <td>${st.college_Name}</td>
          <td>${st.marks}</td>
         </tr>
        </c:forEach>      
         </table>
         <button type="submit" id="btn1">Delete</button>
         <button type="submit" id="btn2">Add</button>
         <button type="submit" id="btn3">Update</button>
    </form>
      <script>
          document.getElementById('btn1').addEventListener('click', ()=>{
              document.myform.action='delete';
              document.myform.submit();
          });
          document.getElementById('btn2').addEventListener('click', ()=>{
              document.myform.action='Register';
              document.myform.submit();
          });
          document.getElementById('btn3').addEventListener('click', ()=>{
              document.myform.action='update';
              document.myform.submit();
          });

      </script>
  

</body>
</html>