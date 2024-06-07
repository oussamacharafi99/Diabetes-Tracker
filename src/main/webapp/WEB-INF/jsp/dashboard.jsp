<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
        <%@include file="../../css/dash.css"%>
    </style>
    <title></title>
</head>
<body>
<header id="header">
    <div class="left-header">
        <div class="logo">
            <img id="imgL" src="https://i.ibb.co/kqHz24J/mmm.png" width="100%" alt="logo" />
        </div>
        <div class="search">
            <input type="text" placeholder="search">
            <button><i class="fa-brands fa-searchengin"></i></button>
        </div>
    </div>

    <div class="header-content">
        <ul>
            <li class="full-screen-link"  onclick="toggleFullscreen()"><i class="bi bi-fullscreen"></i></li>
            <li><a href="#"><i class="bi bi-envelope"></i></i></a></li>
            <li><a href="#"><i class="bi bi-bell"></i></a></li>
            <li><a href="#"><i class="bi bi-power"></i></a></li>
        </ul>
    </div>
</header>

<section class="menu2">
    <div class="name">
        <div class="img-name">
            <img src="https://i.ibb.co/2dnfJdj/profile.png" alt="" width="100%" height="100%">
        </div>
        <h2>oussama charafi</h2>
    </div>
    <div class="menu-container">
            <h2><span>Add The Result</span><i class="bi bi-plus-square"></i></h2>
            <h2><span>Add a meal</span><i class="bi bi-patch-plus"></i></h2>
            <h2><span>All Result</span><i class="bi bi-card-heading"></i></h2>
            <h2><span>Result graph</span><i class="bi bi-graph-down"></i></h2>
            <h2><span>Tips</span><i class="bi bi-arrow-up-right-circle-fill"></i></h2>
    </div>
</section>
<section class="main">
    <div class="left">

    </div>
    <div class="home">
        <div class="home-wrapper">
            <div class="home-left">
                <form action="saveDiabetes" method="POST" class="mt-4">
                    <h3>Graph of Last Result</h3>
                    <div class="form-group" style="display: none">
                        <label for="userId">User ID:</label>
                        <input type="number" class="form-control" id="userId" name="userId" value="1">
                    </div>
                    <div class="form-group">
                        <label id="di" for="diabetes">Diabetes</label>
                        <input type="text" class="form-control" id="diabetes" name="diabetes" required placeholder="Diabetes">
                    </div>
                    <div class="form-group">
                        <label id="da" for="date">Date</label>
                        <input type="date" class="form-control" id="date" name="date" value="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>" readonly required>
                    </div>
                    <div class="form-group">
                        <label id="ti" for="time">Time</label>
                        <input type="time" class="form-control" id="time" name="heurs" required readonly>
                    </div>
                    <button type="submit" class="btn btn-primary" id="addS">Add</button>
                </form>
                <br>
                <div class="result-graph">
                    <h3>Graph of Last Result</h3>
                    <canvas id="myChart"></canvas><br>
                </div>
            </div>
            <div class="last-day">
                <div class="result-text">
                    <h3>Result</h3>
                    <h2 id="title-diabetes">Normal (< 5.7%)</h2>
                    <p><span>--> </span><span id="description-diabetes"> Niveau de sucre élevé, confirmant un diagnostic de diabète. Nécessite une prise en charge médicale immédiate..</span></p>
                    <p><span>--> </span><span id="consiele-diabetes"> Consultez un professionnel de la santé pour un plan de traitement adapté. Suivez les recommandations diététiques et médicamenteuses pour gérer votre glycémie.</span></p>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    var currentTime = new Date().toLocaleTimeString([], { hour12: false, hour: '2-digit', minute: '2-digit' });
    document.getElementById('time').value = currentTime;

    function toggleFullscreen() {
        if (!document.fullscreenElement) {
            document.documentElement.requestFullscreen().catch(err => {
                alert(`Error attempting to enable full-screen mode: ${err.message} (${err.name})`);
            });
        } else {
            document.exitFullscreen();
        }
    }

    const diabeteOne = 5.8;  // Replace this with your actual value

    const data = {
        labels: ['Not Normal', 'Normal', 'Your Result', 'Good'],
        datasets: [
            {
                label: 'Not Normal',
                data: [6.5, null, null, null],  // Only the first value is valid
                borderColor: 'rgb(255, 99, 132)',
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                fill: false,
                tension: 0.1,
                pointBackgroundColor: 'rgb(255, 99, 132)',
                pointBorderColor: 'rgb(255, 99, 132)',
                pointRadius: 5,
                showLine: false  // Do not draw line, only points
            },
            {
                label: 'Normal',
                data: [null, 5.5, null, null],  // Only the second value is valid
                borderColor: 'rgb(75, 192, 192)',
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                fill: false,
                tension: 0.1,
                pointBackgroundColor: 'rgb(75, 192, 192)',
                pointBorderColor: 'rgb(75, 192, 192)',
                pointRadius: 5,
                showLine: false  // Do not draw line, only points
            },
            {
                label: 'Your Result',
                data: [null, null, ${diabeteOne}, null],  // Only the third value is valid
                borderColor: 'rgb(255, 205, 86)',
                backgroundColor: 'rgba(255, 205, 86, 0.2)',
                fill: false,
                tension: 0.1,
                pointBackgroundColor: 'rgb(255, 205, 86)',
                pointBorderColor: 'rgb(255, 205, 86)',
                pointRadius: 5,
                showLine: false  // Do not draw line, only points
            },
            {
                label: 'Good',
                data: [null, null, null, 6.0],  // Only the fourth value is valid
                borderColor: 'rgb(54, 162, 235)',
                backgroundColor: 'rgba(54, 162, 235, 0.2)',
                fill: false,
                tension: 0.1,
                pointBackgroundColor: 'rgb(54, 162, 235)',
                pointBorderColor: 'rgb(54, 162, 235)',
                pointRadius: 5,
                showLine: false  // Do not draw line, only points
            }
        ]
    };

    const config = {
        type: 'line',
        data: data,
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    };

    window.onload = function() {
        const ctx = document.getElementById('myChart').getContext('2d');
        new Chart(ctx, config);
    };

    ///
    let addB = document.getElementById("addS");
    let date = document.getElementById("date");
    let timee = document.getElementById("time");
    let diabetes = document.getElementById("diabetes");

    addB.addEventListener("click" , ()=>{
        if (diabetes.value === "" || date.value === "" || timee.value === ""){
            diabetes.style.border = "2px solid red";
            date.style.border = "2px solid red";
            timee.style.border = "2px solid red";
        }
        else{
            alert("the diabetes result add with success");
        }
    })

</script>
<script src="js.js"></script>
</body>
</html>
