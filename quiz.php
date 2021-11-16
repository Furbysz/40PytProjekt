<?
if(!isset($_GET['type'])){
    header('Location: index.html');
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quiz</title>
</head>
<body>
    <?php
    echo $_GET['type'];
    ?>
</body>
</html>