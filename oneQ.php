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
$all_pyt = mysqli_fetch_all($response, MYSQLI_ASSOC);
$pytanie = $all_pyt[rand(0, $number_of_questions)];
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>pojedyńcze pytanie <?php echo $_GET['type']?></title>
    <link rel="stylesheet" href="css/dark-theme.css">
    <link rel="stylesheet" href="css/zero.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/quiz.css">
    <link rel="stylesheet" href="css/Correcty'n'Wrong.css">
</head>
<body>
    <div class="pytanieMain">
        <?php
    if($pytanie['Atype'] == 'img')  {
        $odp1 = '<img src="/question-files/'.$pytanie['id_arkusza'].'/'.$pytanie['nr_pytania'].'/Ans1" />';
        $odp2 = '<img src="/question-files/'.$pytanie['id_arkusza'].'/'.$pytanie['nr_pytania'].'/Ans2" />';
        $odp3 = '<img src="/question-files/'.$pytanie['id_arkusza'].'/'.$pytanie['nr_pytania'].'/Ans3" />';
        $odp4 = '<img src="/question-files/'.$pytanie['id_arkusza'].'/'.$pytanie['nr_pytania'].'/Ans4" />';
    }
    if($pytanie['Atype'] == 'text') {
        $odp1 = $pytanie['odp1'];
        $odp2 = $pytanie['odp2'];
        $odp3 = $pytanie['odp3'];
        $odp4 = $pytanie['odp4'];
    }
    if($pytanie['Atype'] == 'code') {
        $odp1 = '<pre>'.htmlentities($pytanie['odp1']).'</pre>';
        $odp2 = '<pre>'.htmlentities($pytanie['odp2']).'</pre>';
        $odp3 = '<pre>'.htmlentities($pytanie['odp3']).'</pre>';
        $odp4 = '<pre>'.htmlentities($pytanie['odp4']).'</pre>';
    }
    //#########
echo '<div class="pytanieMain">';
    //echo '<div class="data"></div>';
    if(!empty($prepytanie)){
    echo '<div class="prepyt">';
        echo $prepytanie;
    echo '</div>';
    }
    echo '<div class="pytanie">';
        echo $pytanie['pytanie'];
    echo '</div>';
    echo '<div class="odpowiedzi">';
        echo '<label class="ans1"><input class="answerRadio" type="radio" name="Q_'.$pytanie['id'].'" value="1">'.$odp1.'</label><br>';
        echo '<label class="ans2"><input class="answerRadio" type="radio" name="Q_'.$pytanie['id'].'" value="2">'.$odp2.'</label><br>';
        echo '<label class="ans3"><input class="answerRadio" type="radio" name="Q_'.$pytanie['id'].'" value="3">'.$odp3.'</label><br>';
        echo '<label class="ans4"><input class="answerRadio" type="radio" name="Q_'.$pytanie['id'].'" value="4">'.$odp4.'</label><br>';
    echo '</div>';
    echo '</div>';
echo '</div>';
        ?>
    </div>
    <empty class="data" data-answer="<?php echo $pytanie['poprawna'] ?>"></empty>
    <script>
    const labels = document.querySelectorAll(`label`);
    const answer = document.querySelector(`empty.data`).dataset.answer;
    const correct = document.querySelector(`label.ans`+answer);
        
    labels.forEach(addEventListener(`click`, e => {
        if(e == correct){
            e.classList.add(`correct`);
        } else {
            e.classList.add(`wrong`);
            correct.classList.add(`correct`);
        }
    }))
    </script>
</body>
</html>