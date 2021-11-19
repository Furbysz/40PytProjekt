<?php
$actual_link = 'http://'.$_SERVER['HTTP_HOST'].dirname($_SERVER['PHP_SELF']).'/index.html';
if(!isset($_GET['type'])){
    header('Location: '.$actual_link);
}

switch($_GET['type']){
    case 'e12':
        $query = 'SELECT * FROM e12';
        break;
    case 'e13':
        $query = 'SELECT * FROM e13';
        break;
    case 'e14':
        $query = 'SELECT * FROM e14';
        break;
    case 'ee08':
        $query = 'SELECT * FROM ee08';
        break;
    case 'ee09':
        $query = 'SELECT * FROM ee09';
        break;
}
include('php/dbc.php');
$response = mysqli_query($dbc, $query);
$number_of_questions = mysqli_num_rows($response);
/*
for($i = 0; $i <= 40; $i++){
    $pytNR = rand(1, $number_of_questions);
}
*/
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quiz</title>
</head>
<body>
    <?php
    echo $number_of_questions;
    
    foreach($pytania as $pytanie){
        //wyświetl komurkę z pytaniem
    }
    ?>
</body>
</html>