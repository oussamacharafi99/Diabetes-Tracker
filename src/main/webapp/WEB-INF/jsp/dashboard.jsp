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
            <h2 id="a1"><span>Add The Result</span><i class="bi bi-plus-square"></i></h2>
            <h2><span>All Result</span><i class="bi bi-card-heading"></i></h2>
            <h2><span>Result graph</span><i class="bi bi-graph-down"></i></h2>
            <h2><span>Add a meal</span><i class="bi bi-patch-plus"></i></h2>
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
                    <h3>Graph of Last Result <em>${diabeteDate} , ${diabeteTime}</em></h3>
                    <canvas id="myChart"></canvas><br>
                </div>
            </div>
            <div class="last-day">
                <div class="result-text">
                    <h3>Result of <em>${diabeteDate} , ${diabeteTime}</em></h3>
                    <h2 id="title-diabetes">Normal (< 5.7%)</h2>
                    <p><span>Description -> </span><span id="description-diabetes">Normal level, indicates good glycemic control over 2-3 months. No risk of diabetes.</span></p>
                    <p><span>Advice -> </span><span id="consiele-diabetes">Continue to maintain a healthy lifestyle, exercise regularly, and monitor your diet to sustain these levels.</span></p>
                </div>
            </div>
        </div>
        <!--Part two -->
        <div class="resul-home">
            <div class="result-home-wrapper">
                <h2>Previous results</h2>
                <form action="search" method="POST" class="search-result">
                    <input type="date" name="search" id="search" placeholder="yyyy-MM-dd" pattern="\d{4}-\d{2}-\d{2}"/>
                    <button type="submit" id="Sear">Search</button>
                </form>
                <div class="table-result">
                    <table>
                        <thead>
                        <tr>
                            <th>Blood Sugar</th>
                            <th>Result Date</th>
                            <th>Result Time</th>
                            <th>Result Status</th>
                            <th>Delete</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${allDiabetes}" var="diabete">
                            <tr class="containerOfResult">
                                <td class="diabetAll">${diabete.getDiabetes()}</td>
                                <td>${diabete.getDate()}</td>
                                <td>${diabete.getHeurs()}</td>
                                <td class="status">Normal</td>
                                <td><a href="deletDiabetes/${diabete.getId()}">Delete</a></td>
                            </tr>
                        </c:forEach>

                        <c:forEach items="${diabetesList}" var="diabeteS">
                            <tr class="containerOfResult">
                                <td class="diabetAll">${diabeteS.getDiabetes()}</td>
                                <td>${diabeteS.getDate()}</td>
                                <td>${diabeteS.getHeurs()}</td>
                                <td class="status">Normal</td>
                                <td><a href="#">Delete</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
<p id="rt" style="display:none;">${diabeteOne}</p>
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

    const diabeteOne = 5.8;

    const data = {
        labels: ['Not Normal', 'Normal', 'Your Result', 'Good'],
        datasets: [
            {
                label: 'Not Normal',
                data: [6.5, null, null, null],
                borderColor: 'rgb(255, 99, 132)',
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                fill: false,
                tension: 0.1,
                pointBackgroundColor: 'rgb(255, 99, 132)',
                pointBorderColor: 'rgb(255, 99, 132)',
                pointRadius: 5,
                showLine: true
            },
            {
                label: 'Normal',
                data: [null, 5.5, null, null],
                borderColor: 'rgb(75, 192, 192)',
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                fill: false,
                tension: 0.1,
                pointBackgroundColor: 'rgb(75, 192, 192)',
                pointBorderColor: 'rgb(75, 192, 192)',
                pointRadius: 5,
                showLine: true
            },
            {
                label: 'Your Result',
                data: [null, null, ${diabeteOne}, null],
                borderColor: 'rgb(255, 205, 86)',
                backgroundColor: 'rgba(255, 205, 86, 0.2)',
                fill: false,
                tension: 0.1,
                pointBackgroundColor: 'rgb(255, 205, 86)',
                pointBorderColor: 'rgb(255, 205, 86)',
                pointRadius: 5,
                showLine: true
            },
            {
                label: 'Good',
                data: [null, null, null, 6.0],
                borderColor: 'rgb(54, 162, 235)',
                backgroundColor: 'rgba(54, 162, 235, 0.2)',
                fill: false,
                tension: 0.1,
                pointBackgroundColor: 'rgb(54, 162, 235)',
                pointBorderColor: 'rgb(54, 162, 235)',
                pointRadius: 5,
                showLine: true
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

    const ArrayTitles = ["Normal (< 5.7%)", "Prediabetes (5.7-6.4%)", "Diabetes (>= 6.5%)"];
    const ArrayDescriptions = [
        "Normal level, indicates good glycemic control over 2-3 months. No risk of diabetes.",
        "Slightly elevated level, indicating an increased risk of developing type 2 diabetes. Reflects suboptimal glycemic control.",
        "Elevated level, confirming a diabetes diagnosis. Requires immediate medical management."
    ];
    const ArrayConseils = [
        "Continue to maintain a healthy lifestyle, exercise regularly, and monitor your diet to sustain these levels.",
        "Adopt a balanced diet, increase physical activity, and consult your doctor for specific advice to prevent progression to diabetes.",
        "Follow medical recommendations, modify your diet, and adopt a regular exercise plan to effectively manage your blood sugar. Regularly consult your doctor for follow-ups and treatment adjustments."
    ];

    let rt = document.getElementById("rt").textContent;
    rt = parseFloat(rt);

    const title_diabetes = document.getElementById("title-diabetes");
    const consiele_diabetes = document.getElementById("consiele-diabetes");
    const description_diabetes = document.getElementById("description-diabetes");

    if(rt <= 5.7){
        title_diabetes.innerHTML = ArrayTitles[0];
        consiele_diabetes.innerHTML = ArrayConseils[0];
        description_diabetes.innerHTML = ArrayDescriptions[0];
    }
    else if(rt > 5.7 && rt < 6.5){
        title_diabetes.innerHTML = ArrayTitles[1];
        consiele_diabetes.innerHTML = ArrayConseils[1];
        description_diabetes.innerHTML = ArrayDescriptions[1];
    }
    else if(rt >= 6.5){
        title_diabetes.innerHTML = ArrayTitles[2];
        consiele_diabetes.innerHTML = ArrayConseils[2];
        description_diabetes.innerHTML = ArrayDescriptions[2];
    }

    //////////// ****

    document.querySelectorAll(".containerOfResult").forEach(e => {
        const ArrayResult = ["Normal", "Prediabetes", "Diabetes"];
        const diabetAll = parseFloat(e.querySelector(".diabetAll").textContent);
        const status = e.querySelector(".status");

        if (!isNaN(diabetAll)) {
            if (diabetAll < 5.7) {
                status.textContent = ArrayResult[0];
            } else if (diabetAll >= 5.7 && diabetAll < 6.5) {
                status.textContent = ArrayResult[1];
            } else if (diabetAll >= 6.5) {
                status.textContent = ArrayResult[2];
            }
        } else {
            status.textContent = "Invalid value";
        }
    });





</script>
<script src="js.js"></script>
</body>
</html>
