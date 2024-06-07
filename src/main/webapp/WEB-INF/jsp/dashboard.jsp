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

        <div class="add item">
            <h2><span>Add The Result</span><i class="bi bi-plus-square"></i></h2>
        </div>
        <div class="ropa item">
            <h2><span>Add a meal</span><i class="bi bi-patch-plus"></i></h2>
        </div>
        <div class="histories item">
            <h2><span>All Result</span><i class="bi bi-card-heading"></i></h2>
        </div>
        <div class="graphique item">
            <h2><span>Result graph</span><i class="bi bi-graph-down"></i></h2>
        </div>
        <div class="Consiele item">
            <h2><span>Tips</span><i class="bi bi-arrow-up-right-circle-fill"></i></h2>
        </div>
    </div>
</section>
<section class="main">
    <div class="left">

    </div>
    <div class="home">
        <h1>Add The Result</h1>
        <div class="home-wrapper">
            <form action="saveDiabetes" method="POST" class="mt-4">
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
                    <input type="date" class="form-control" id="date" name="date" required>
                </div>
                <div class="form-group">
                    <label id="ti" for="time">Time</label>
                    <input type="time" class="form-control" id="time" name="heurs" required>
                </div>
                <button type="submit" class="btn btn-primary" id="addS">Add</button>
            </form>

            <div class="last-day">
                <h3>Graph of Last Result</h3>
                <canvas id="myChart"></canvas>
            </div>
        </div>
    </div>
</section>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    function toggleFullscreen() {
        if (!document.fullscreenElement) {
            document.documentElement.requestFullscreen().catch(err => {
                alert(`Error attempting to enable full-screen mode: ${err.message} (${err.name})`);
            });
        } else {
            document.exitFullscreen();
        }
    }
    const data = {
        labels: ['Not Normal', 'Normal', 'Your Result', 'Good'],
        datasets: [{
            label: 'Diabetes Result (HbA1c)',
            data: [6.5, 5.5,${diabeteOne}, 6.0],  // Example HbA1c values
            backgroundColor: [
                'rgb(255, 99, 132)',  // Not Normal (HbA1c 6.5% or higher)
                'rgb(75, 192, 192)',  // Normal (HbA1c below 5.7%)
                'rgb(255, 205, 86)',  // Your Result (Example value)
                'rgb(54, 162, 235)'   // Good (HbA1c around 6.0%)
            ]
        }]
    };
    const config = {
        type: 'polarArea',
        data: data,
        options: {}
    };

    window.onload = function() {
        const ctx = document.getElementById('myChart').getContext('2d');
        new Chart(ctx, config);
    };

</script>
<script src="js.js"></script>
</body>
</html>
