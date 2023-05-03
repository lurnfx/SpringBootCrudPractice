<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
<style>
   body{
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
   }

   form{
      border: 2px solid rgb(238, 161, 161);
      padding: 30px 60px;
      box-shadow: 5px 5px 5px salmon;
   }

label {
   display: block;
}

input{
    margin-bottom: 20px;
}
</style>

</head>
<body>
      
    <form action="updateDone">
        <h1>Update Page</h1>
        <div class="first">
            <div>
                <label for="roll">Roll NO</label>
                <input type="number" value="${st.rollNo}" name="rollNo" id="roll">
            </div>
           <div>
                 <label for="name">name</label>
                 <input type="text" value="${st.name}" name="name" id="name">
           </div>
        </div>


        <div  class="first">
            <div>
                <label for="address">Address</label>
                <input type="text" value="${st.address}" name="address" id="address">

            </div>
           <div>
                  <label for="college_Name">college Name</label>
                  <input type="text" value="${st.college_Name}" name="college_Name" id="college_Name">
           </div>
        </div>
          
        <div>
            <label for="Marks">Marks</label>
            <input type="number" value="${st.marks}" name="marks" id="Marks">
        </div>
           <button type="submit">Update</button>

    </form>


</body>
</html>