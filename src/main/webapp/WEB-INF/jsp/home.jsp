<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        <%@include file="../../css/style.css"%>
    </style>
</head>

<body id="body">
<header id="header">
    <button class="menu">
        <img src="https://i.ibb.co/98PCTTW/menu-1.png" width="80%" alt="">
    </button>
    <div class="logo">
        <img src="https://i.ibb.co/DKBbxJC/Minimalist.png" width="100%" alt="logo" />
    </div>
</header>

<section class="menu2">
    <div id="close" class="close">
        <img src="https://i.ibb.co/WpyGFvK/close-button-1.png" width="80%" alt="">
    </div>
    <div class="logo2">
        <img src="https://i.ibb.co/DKBbxJC/Minimalist.png" width="100%" alt="logo" />
    </div>
    <div class="list">
        <ul>
            <li>
                <a href="#">Home</a>
            </li>
            <li>
                <a href="#">diabetes</a>
            </li>
            <li>
                <a href="#">About App</a>
            </li>
            <li>
                <a href="#">Contact Us</a>
            </li>
        </ul>
    </div>
    <div class="Register">
        <button>Register</button>
    </div>
</section>

<section class="main">
</section>
<section class="main-content">
    <c:forEach items="${diabetes}" var="d">
        <p>${d.getUserId()}</p>
        <p>${d.getDiabetes()}</p>
        <p>${d.getDate()}</p>
    </c:forEach>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script>
    const body = document.body;
    const header = document.getElementById('header');

    window.addEventListener('scroll', () => {
        const scrollTop = window.pageYOffset || document.documentElement.scrollTop;

        if (scrollTop === 0) {
            header.style.transition = ".5s"
            header.style.background = "linear-gradient(0deg, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.491))";
            header.style.backdropFilter = "blur(0px)";
        } else if (scrollTop >= 100) {
            header.style.transition = ".5s"
            header.style.background = "rgba(0, 0, 0, 0.397)";
            header.style.backdropFilter = "blur(10px)";
        }
    });

    const close = document.getElementById("close");
    close.addEventListener("click", () => {
        document.querySelector(".menu2").style.transition = ".6s"
        document.querySelector(".menu2").style.width = "0px";
    });

    const open = document.querySelector(".menu");
    open.addEventListener("click", () => {
        document.querySelector(".menu2").style.transition = ".6s"
        document.querySelector(".menu2").style.width = "350px";
    });
</script>
</body>

</html>