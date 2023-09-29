<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function generateCaptcha() {
                var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
                var captcha = "";
                for (var i = 0; i < 6; i++) {
                    captcha += chars.charAt(Math.floor(Math.random() * chars.length));
                }
                document.getElementById("captchaText").innerHTML = captcha;
                document.getElementById("captchaInput").value = captcha;
            }

        </script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="login.css">
    </head>
    <body>
        <div class="row header-flex">
            <div class="col-md-6">
                <img src="images/fpt.jpg" alt="FPT" />
            </div>
            <div class="title">
                Input your information
            </div>
        </div>

        <!--Nội dung footer-->

        <div class="footer">
            <div class="box">
                <div class="container">

                    <form action="MainController" method="POST">
                        UserID<input type="text" name="userID" required=""/> </br>
                        Password<input type="password" name="password" required=""/> </br>

                        <div class="Capcha">
                            <label for="captcha">Captcha:</label>
                            <span id="captchaText"></span><br><br>
                            <input type="hidden" id="captchaInput" name="captchaInput">
                            <input type="text" id="captcha" name="captcha" required><br><br>
                            <button type="button" onclick="generateCaptcha()">Create Captcha</button>
                        </div>
                        <input type="submit" name="action" value="Login"/>
                        <input type="reset" value="Reset"/>
                </div>
                <div>
                    <a href="MainController?action=top1">Top1</a>
                </div>
                <a href="MainController?action=CreatePage">You do not have the account?</a>
                <div class="text">
                    <p>Email : letrancatlam123@gmail.com</p>
                    <p>Address: Nguyen Xien,Phuong Long Thach My,TP.Thu Duc, HCMC</p>
                    <h5>&copy; Copyright 2021. CatLam.VN</h5>

                </div>

            </div>

        </div>

        <h3>
            ${requestScope.ERROR}
        </h3> 



    </body>
</html>
