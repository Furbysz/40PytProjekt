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

$los_pytania = array();
$bigOTest = 0; // Test ile razy pętla się powtarza zanim wylosuje wszystkie odpowiedzi

for($i = 0; $i < 40; $i++){
    //$bigOTest++;
    
    $nr_pyt = rand(0, $number_of_questions-1);
    if(in_array($nr_pyt, $los_pytania)){
        $i--;
        continue;
    } else {
        array_push($los_pytania, $nr_pyt);
    }
}

/*
echo "<b>$bigOTest</b>";
echo "<pre>";
print_r($los_pytania);
echo "<pre>";
echo "<hr>";
*/
/*
echo "<pre>";
foreach($all_pyt as $pyt){
    print_r($pyt);
    echo "<hr>";
}
echo "<pre>";
*/

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quiz <?php echo $_GET['type']?></title>
    <link rel="stylesheet" href="css/dark-theme.css">
    <link rel="stylesheet" href="css/zero.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/quiz.css">
</head>
<body>
       <div class="pytania">
<?php
for($i = 0; $i < 40; $i++){
    $pytanie = $all_pyt[$los_pytania[$i]];
    //#########
    $wczytano = 0;
    $prepytanie = null;
    if($pytanie['Qtype'] == 'img')  {
        $dir = './question-files/'.$pytanie['id_arkusza'].'/'.$pytanie['nr_pytania'].'/';
        $dir_contents = scandir($dir);
        foreach($dir_contents as $content){
            if(is_dir($content)){continue;}
            if(str_starts_with($content, $pytanie['id_arkusza'].'_Q_')){
                $wczytano ++;
                $prepytanie = $prepytanie.'<img alt="obrazek do pytania nr '.$pytanie['id'].'" src="'.$dir.'/'.$content.'">';
            }
            
        }
    }
    if($wczytano != $pytanie['files']){echo "<script>alert(`BŁĄD ŁADOWANIA, ODŚWIERZ STRONĘ BĄDZ SKONTAKTUJ SIĘ Z ADMINISTRATOREM: code-id".$pytanie['id'].'-ark'.$pytanie['id_arkusza'].'-nr'.$pytanie['nr_pytania']."`)</script>";}
    
    if($pytanie['Qtype'] == 'text') {
        $prepytanie = $pytanie['prepytanie'];
    }
    if($pytanie['Qtype'] == 'code') {
        $prepytanie = '<pre>'.htmlentities($pytanie['prepytanie']).'</pre>';
    }
    //#########
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
        echo '<label><input class="answerRadio" type="radio" name="Q_'.$pytanie['id'].'" value="1">'.$odp1.'</label><br>';
        echo '<label><input class="answerRadio" type="radio" name="Q_'.$pytanie['id'].'" value="2">'.$odp2.'</label><br>';
        echo '<label><input class="answerRadio" type="radio" name="Q_'.$pytanie['id'].'" value="3">'.$odp3.'</label><br>';
        echo '<label><input class="answerRadio" type="radio" name="Q_'.$pytanie['id'].'" value="4">'.$odp4.'</label><br>';
    echo '</div>';
    echo '</div>';
echo '</div>';

}
?>
   </div>    
</body>
</html>