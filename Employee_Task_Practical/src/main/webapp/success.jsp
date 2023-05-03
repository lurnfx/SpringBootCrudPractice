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
               <th>Employee Name</th>
               <th>Education</th>
               <th>JoinningDate</th>
               <th>Gender</th>
               <th>Weight</th>
               <th>Height</th>
               <th>Mobile</th>
            </tr>
        <c:forEach  items="${emp}" var="em">
        <tr>
          <td><input type="radio" name="empId" value="${em.empId}"></td>
          <td>${em.empName}</td>
          <td>${em.education}</td>
          <td>${em.joiningDate}</td>
          <td>${em.weight}</td>
          <td>${em.height}</td>
          <td>${em.mobile}</td>
          <td>${em.address}</td>
          <td type="hidden" name="password" value="${em.password}"></td>
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