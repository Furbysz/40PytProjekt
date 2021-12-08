<?php

?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Edit Database</title>
</head>
<body>
    <div class="listaKwali" onchange="changeList()">
        <label><input type="radio" name="kwali" value="e12">E12</label><br>
        <label><input type="radio" name="kwali" value="e13">E13</label><br>
        <label><input type="radio" name="kwali" value="e14">E14</label><br>
        <label><input type="radio" name="kwali" value="ee08">EE08</label><br>
        <label><input type="radio" name="kwali" value="ee09">EE09</label><br>
    </div>
    <div class="dodajPytanieForm">
        <form method="post" action="/php/editDB.php">
            <input disabled type="text" name="kwali" value="e12">
            <input disabled type="text" name="">
            <input type="file" name="files">
            <select name="Qtype">
                <option value="img">Image</option>
                <option value="text">Text</option>
                <option value="code">Code</option>
            </select>
            <select name="Atype">
                <option value="img">Image</option>
                <option value="text">Text</option>
                <option value="code">Code</option>
            </select>
            <input type="text" name="prepyt">
            <input type="text" name="pyt">
            <input type="text" name="odpA">
            <input type="text" name="odpB">
            <input type="text" name="odpC">
            <input type="text" name="odpD">
        </form>
    </div>
    <div class="DodajPytanie">
        <button></button>
    </div>
    <script>
        function changeList()
        {
            const kwali = document.querySelector(`.listaKwali input[name=kwali]:checked`).value;
            
            
        }
    </script>
    <div class="lista-pytan">
        
    </div>
</body>
</html>