<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>

<br>
<div class="container" style=" background-color: white ; border: 1px solid #ffffff">
    <div style=" background : linear-gradient(to right, #f1cc83, #fa9c31); margin-left: 25% ; margin-right: 25% ; border: 1px solid red ">
    <div class="" style="  margin-left: 5% ; margin-right: 5% ; margin-top: 20px ; ">
        <h3 style="text-align: center">Sign Up Now</h3>
        <p style="text-align: center">Please fill out this to register</p>
        <form class="form" action="" method="">
            <div class="form-group">
                <label for="firstName">User Name</label>
                <input type="text" name="username" id="firstName" required placeholder="Your Username*" required class="form-control form-control-lg" style="border-radius: 50px;">
            </div>
            <div class="form-group">
                <label for="email">Email address</label>
                <input type="email" class="form-control form-control-lg" required minlength="6" placeholder="Email*" required name="email" id="email"
                       aria-describedby="emailHelp" style="border-radius: 50px;">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with
                    anyone else.</small>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control form-control-lg" required placeholder="Password*" required name="password"
                       id="password" style="border-radius: 50px;">
            </div>
            <div class="form-group">
                <label for="Address">Address</label>
                <textarea class="form-control form-control-lg" rows="3" placeholder="Enter Your Address" name="address" ></textarea>
            </div>
<span style="margin-top: 10px">Already have an account <a class="linkControl" href="/">Login here</a></span> <br><br>
            <input type="submit" value="Register" class="btn btn-primary btn-block" id="submit" class="btn btn-primary btn-block" style="border-radius: 50px; background : linear-gradient(to right, #f18383, #fa3131); border: 1px solid red "><br>
            <br><h3 style="color:red;">${msg}</h3>
            <br>
        </form>
    </div>
    </div>

</div>

<script>
    const form1 = document.querySelector('.btn-primary');




        function updatemail() {

            const password = document.getElementById('password').value;
            const email = document.getElementById('email').value;
            const name = document.getElementById('firstName').value;


            const data = {
                name: name,
                email: email,
                password: password,
                enabled: true
            }


            console.log(data);
            fetch('http://localhost:9000/api/users', {
                method: 'POST',
                headers: {
                    'content-Type': 'application/json'
                },
                body: JSON.stringify(data)
            }).then(res => res.json())
                .then(data => console.log(data))
                .catch(error => console.log(error))
                .then(alert("user registered successfully login now "))
                .then(window.location.href = "/") ; // redirect to login page




        }


    const form = document.querySelector(".form");

    async function sendData() {
        // Associate the FormData object with the form element
        const formData = new FormData(form);

        try {
            const response = await fetch("http://localhost:8080/newuserregister", {
                method: "POST",
                // Set the FormData instance as the request body
                body: formData,
            });
            console.log(await response.json());

        } catch (e) {
            console.error(e);
        }
    }




    // Take over form submission
    form.addEventListener("submit", (event) => {
        event.preventDefault();
        sendData();
        updatemail() ;
    });

    // submit form with the local api newuserregister
    // fetch('http://localhost:9000/api/users', {
    //     method: 'POST',
    //     headers:{
    //         'content-Type':'application/json'
    //     },
    //     body: JSON.stringify(data)
    // }).then(res =>res.json())
    //     .then(data => console.log(data))
    //     .catch(error => console.log(error));
    // });








</script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>