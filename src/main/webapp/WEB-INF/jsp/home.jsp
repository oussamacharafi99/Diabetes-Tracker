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
    <div class="main-text">
        <h1>Diabetes is not a stopping point !</h1>
        <h2> You can use <i>our website</i> to track my condition every day with the ability to choose the meals that are appropriate <i>for you</i></h2>
        <br>
        <div>
            <a href="#">Register</a>
        </div>
    </div>
</section>

<section class="main-content">
    <div class="header-main-content" >
        <h1>Diabetes !</h1>
    </div>
    <div class="main-content-diabetes">
        <h3>Introduction</h3>
            <p class="p">Diabetes mellitus, commonly referred to as diabetes, is a chronic metabolic disorder characterized by elevated levels of blood glucose (blood sugar). It results from either the body’s inability to produce enough insulin or the cells’ inability to effectively respond to the insulin produced. Insulin is a hormone crucial for regulating blood sugar levels. There are three main types of diabetes: Type 1, Type 2, and gestational diabetes. This article will explore the causes, symptoms, diagnosis, treatment, and management of diabetes, as well as its potential complications.</p>
    </div>
    <div class="main-content-diabetes">
        <h3>Types of Diabetes</h3>
        <p class="pU"><em>Type 1 Diabetes:</em> This autoimmune condition occurs when the immune system mistakenly attacks and destroys insulin-producing beta cells in the pancreas. It is typically diagnosed in children and young adults, although it can appear at any age. Individuals with Type 1 diabetes require daily insulin injections or the use of an insulin pump.
        <br>
            <br>
            <em>Type 2 Diabetes:</em> The most common form of diabetes, Type 2 diabetes, typically develops in adults over the age of 45, though it is increasingly seen in younger populations due to rising obesity rates. It occurs when the body becomes resistant to insulin or when the pancreas fails to produce sufficient insulin. Lifestyle factors such as diet, physical activity, and weight management play a significant role in the development and management of Type 2 diabetes.
        <br>
            <br>
            <em>Gestational Diabetes:</em> This type occurs during pregnancy and usually disappears after childbirth. It increases the risk of developing Type 2 diabetes later in life for both the mother and child. Proper management during pregnancy is crucial to prevent complications.
        </p>
    </div>
    <div class="main-content-diabetes">
        <h3>Causes and Risk Factors</h3>
        <p class="p">The exact cause of diabetes varies depending on the type. Type 1 diabetes is believed to be caused by genetic and environmental factors, such as viruses, that trigger the autoimmune response. Type 2 diabetes is largely influenced by lifestyle factors and genetics. Risk factors include obesity, physical inactivity, poor diet, family history, and age. Gestational diabetes is linked to hormonal changes during pregnancy and genetic predisposition.</p>
    </div>
    <div class="main-content-diabetes">
        <h3>Conclusion</h3>
        <p class="p">Diabetes is a complex, chronic condition that requires ongoing management and care. Understanding the types, causes, symptoms, and treatment options is crucial for effectively managing the disease and preventing complications. With proper management, individuals with diabetes can lead healthy and fulfilling lives. Awareness and education are key to controlling the global impact of diabetes and improving the quality of life for those affected by this condition.</p>
    </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script>
    const body = document.body;
    const header = document.getElementById('header');
    const main = document.querySelector(".main");
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