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
        background-image: linear-gradient(120deg, #84fab0 0%, #8fd3f4 100%);
     }
   
   .wrapper{
        display: flex;
        align-items: self-start;
        justify-content: flex-start;
        flex-direction: column;
        font-size: 20px;
   }
   .info{
    width: 100%;
   }
  .info label{
    display: block;
   }
   .info div
   {
        margin-bottom: 10px;
   }
   .info input{
     width: 70%;
   }

     form{
    border: 2px solid green;
    padding: 30px 60px;
    box-shadow: 5px 3px 5px  rgb(212, 236, 212);
    border-radius: 20px;
    border:none;
    background-color: snow;

     }

     .radio{
      margin-top: 10px;
      margin-bottom: 30px;
     }

     #dob{
        width: 40%;

     }
button {
  appearance: none;
  background-color: #2ea44f;
  border: 1px solid rgba(27, 31, 35, .15);
  border-radius: 6px;
  box-shadow: rgba(27, 31, 35, .1) 0 1px 0;
  box-sizing: border-box;
  color: #fff;
  cursor: pointer;
  display: inline-block;
  font-family: -apple-system,system-ui,"Segoe UI",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji";
  font-size: 14px;
  font-weight: 600;
  line-height: 20px;
  padding: 6px 16px;
  position: relative;
  text-align: center;
  text-decoration: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  vertical-align: middle;
  white-space: nowrap;
}

button:focus:not(:focus-visible):not(.focus-visible) {
  box-shadow: none;
  outline: none;
}

button:hover {
  background-color: #2c974b;
}

button:focus {
  box-shadow: rgba(46, 164, 79, .4) 0 0 0 3px;
  outline: none;
}

button:disabled {
  background-color: #94d3a2;
  border-color: rgba(27, 31, 35, .1);
  color: rgba(255, 255, 255, .8);
  cursor: default;
}

button:active {
  background-color: #298e46;
  box-shadow: rgba(20, 70, 32, .2) 0 1px 0 inset;
}



    </style>
</head>



<body>

    <form action="save">
      <h1>Ragistration Page</h1>
      <div class="wrapper">
        <div class="info"> 
          <div>
            <label for="name">Full Name</label>
          <input type="text" name="fullName" id="name">
          </div>
         <div>
          <label  for="dob">Date Of birth</label>
          <input  type="date" name="dob" id="dob">    
         </div>
        </div>
       
     <div class="info">
      <div>
        <label for="city">CityName</label>
        <input type="text" name="city" id="city">
      </div>
     <div>
      <label for="country">Country Name</label>
      <input type="text" name="country" id="country">
     </div>
     </div>
  
     <div class="info ">
          <div>
            <label for="email">Email address</label>
            <input type="email" name="email" id="email">
          </div>
        <div>
          <label for="edu">Education</label>
          <input type="text" name="education" id="edu">
        </div>  
     </div>
       
  <div class="info">
    <label for="job">Job Details</label>
    <input type="text" name="job_Details" id="job">
  </div>
        
  <div class="radio">
    <input type="radio" value="java" name="course" id="name">
    <label for="name">Java</label>
    <input type="radio" value="Phython" name="course" id="name">
    <label for="name">Phython</label>
    <input type="radio" value="Cload" name="course" id="name">
    <label for="name">Cload</label>
    <input type="radio" value="UI Dev" name="course" id="name">
    <label for="name">UI Dev</label>
    <input type="radio" value="AI dev" name="course" id="name">
    <label for="name">AI Dev</label>
  </div>
        
       
  
        <button type="submit">Ragister</button>


      </div>
     
    </form>
    
    
</body>
</html>