<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
  <style>
     body{
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
     }
     label, input{
       display: block;
       margin-bottom: 10px;
       font-size: 1.2rem;
     }
     form{
    border: 2px solid green;
    padding: 30px 60px;
    box-shadow: 5px 3px 5px 2px rgb(170, 238, 165);
    border-radius: 20px;
    border:none;

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

<body>

    <form action="login">
        <h1>Login Page</h1>
        <div>
            <input type="hidden" name="msg" value="${msg}" id="msg">    
            <input type="hidden" value="${pin}" name="pin">
            <label for="mobno">Enter Mobile No</label>
            <input type="tel"  id="mobno">
            <button type="button" id="btn">Submit</button>
        </div>
        <div id="button"> </div>
        <button type="submit" id="submit">Submit</button>
       
    </form>
    

    <script>
            document.getElementById('submit').style.visibility = 'hidden';

          document.getElementById("btn").addEventListener("click",()=>{
            alert("${pin}")
            var label = document.createElement("label");
            label.setAttribute('for', 'button')
            label.innerHTML='Enter Otp';
            var input = document.createElement("input");
            input.setAttribute('type', 'number');
            input.setAttribute('name', 'otp')
            var parent = document.getElementById("button");
            parent.appendChild(label);
            parent.appendChild(input);
            document.getElementById('submit').style.visibility = 'visible';
          });
            
           document.getElementById('submit').addEventListener("click", ()=>{
            var msg= document.getElementById('msg').value;
            console.log(msg)
                  if(msg==="Enter Correct Otp"){
                       alert(msg);
                  }
           });


    </script>
</body>
</html>