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
button{
    margin-bottom: 10px;
}
</style>

</head>
<body>
    <div class="form">
        <form action="login">
              <h1>Log-In</h1>
            <div>
                <label for="user">Enter User Name</label>
                <input type="number" name="user" id="user">
            </div>
           <div>
                <label for="pass">Enter Password</label>
                <input type="text" name="pass" id="pass">
           </div>
            <button type="submit">Log IN</button><br>
            <a href="Register">Register Here</a>
        </form>
    </div>
</body>
</html>