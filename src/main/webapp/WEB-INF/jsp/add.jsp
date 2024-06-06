<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Enregistrer le Diabète</title>
</head>
<body>
<form action="saveDiabetes" method="POST">
    <div>
        <label style="display: none">User ID:</label><br>
        <input type="number" name="userId" style="display: none" value="1"><br>
    </div>
    <br>
    <div>
        <label>Diabetes</label><br>
        <input type="text" name="diabetes" required placeholder="Diabetes">
        <br>
        <input type="date" name="date" required>
    </div><br>
    <input type="time" name="heurs" required>
    <div>
        <button type="submit" id="addS">Add</button>
    </div>
</form>
</body>
</html>
