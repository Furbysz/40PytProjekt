<?php
//if(!isset($_POST['ile_pytan'])){echo 'nie wiem ile było pytań';}

include('dbc.php');
/*
echo '<pre>';
print_r($_POST);
echo '</pre><hr>';
*/
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Odpowiedzi <?php echo $_POST['kwali']?></title>
    <link rel="stylesheet" href="../css/dark-theme.css">
    <link rel="stylesheet" href="../css/zero.css">
    <link rel="stylesheet" href="../css/base.css">
    <link rel="stylesheet" href="../css/quiz.css">
    <link rel="stylesheet" href="../css/Correcty'n'Wrong.css">
</head>
<body>
   <div class="pytania">
    <?php       
$poprawnieUdzieloneOdp  = 0;
$ile_pyt                = $_POST['ile_pytan'];
$kwali                  = $_POST['kwali'];
    
for($j = 0; $j < $ile_pyt; $j++)
{
    if(isset($_POST['Q_'.$j])){$odpowiedz = $_POST['Q_'.$j];}else{$odpowiedz = null;}
    $id_pyt     = $_POST['id_pyt_'.$j];
    //$dane   = $all_pyt[$id_pyt-1];  
    //#############
    $query = 'SELECT * FROM '.$kwali.' WHERE id='.$id_pyt.';';
    $response = mysqli_query($dbc, $query);
    $pytanie = mysqli_fetch_assoc($response);
    //################
    /*
    echo '<pre>';
    print_r($pytanie);
    echo '</pre>';
    */
    //################
    $wczytano = 0;
    $prepytanie = null;
    if($pytanie['Qtype'] == 'img')      {
        $dir = './../question-files/'.$pytanie['id_arkusza'].'/'.$pytanie['nr_pytania'].'/';
        $dir_contents = scandir($dir);
        foreach($dir_contents as $content){
            if(is_dir($content)){continue;}
            if(str_starts_with($content, $pytanie['id_arkusza'].'_Q_')){
                $wczytano ++;
                $prepytanie = $prepytanie.'<img alt="obrazek do pytania nr '.$pytanie['id'].'" src="'.$dir.'/'.$content.'">';
            }
            
        }
    }
    if($wczytano != $pytanie['files'])  {
        echo "<script>alert(`BŁĄD ŁADOWANIA, ODŚWIERZ STRONĘ BĄDZ SKONTAKTUJ SIĘ Z ADMINISTRATOREM: code-id".$pytanie['id'].'-ark'.$pytanie['id_arkusza'].'-nr'.$pytanie['nr_pytania']."`)</script>";
    }   
    if($pytanie['Qtype'] == 'text')     {
        $prepytanie = $pytanie['prepytanie'];
    }
    if($pytanie['Qtype'] == 'code')     {
        $prepytanie = '<pre>'.htmlentities($pytanie['prepytanie']).'</pre>';
    }
    //#########
    if($pytanie['Atype'] == 'img')      {
        $odp1 = '<img src="/question-files/'.$pytanie['id_arkusza'].'/'.$pytanie['nr_pytania'].'/Ans1" />';
        $odp2 = '<img src="/question-files/'.$pytanie['id_arkusza'].'/'.$pytanie['nr_pytania'].'/Ans2" />';
        $odp3 = '<img src="/question-files/'.$pytanie['id_arkusza'].'/'.$pytanie['nr_pytania'].'/Ans3" />';
        $odp4 = '<img src="/question-files/'.$pytanie['id_arkusza'].'/'.$pytanie['nr_pytania'].'/Ans4" />';
    }
    if($pytanie['Atype'] == 'text')     {
        $odp1 = $pytanie['odp1'];
        $odp2 = $pytanie['odp2'];
        $odp3 = $pytanie['odp3'];
        $odp4 = $pytanie['odp4'];
    }
    if($pytanie['Atype'] == 'code')     {
        $odp1 = '<pre>'.htmlentities($pytanie['odp1']).'</pre>';
        $odp2 = '<pre>'.htmlentities($pytanie['odp2']).'</pre>';
        $odp3 = '<pre>'.htmlentities($pytanie['odp3']).'</pre>';
        $odp4 = '<pre>'.htmlentities($pytanie['odp4']).'</pre>';
    }
    echo '<div class="pytanieMain">';
    //#########
    $klasaOdp1 = null; $klasaOdp2 = null; $klasaOdp3 = null; $klasaOdp4 = null;
    if($odpowiedz != null)
    {
    if($pytanie['poprawna'] == 1){$klasaOdp1 = 'correct';} if($odpowiedz != $pytanie['poprawna'] AND $odpowiedz == 1){$klasaOdp1 = 'wrong';}
    if($pytanie['poprawna'] == 2){$klasaOdp2 = 'correct';} if($odpowiedz != $pytanie['poprawna'] AND $odpowiedz == 2){$klasaOdp2 = 'wrong';}
    if($pytanie['poprawna'] == 3){$klasaOdp3 = 'correct';} if($odpowiedz != $pytanie['poprawna'] AND $odpowiedz == 3){$klasaOdp3 = 'wrong';}
    if($pytanie['poprawna'] == 4){$klasaOdp4 = 'correct';} if($odpowiedz != $pytanie['poprawna'] AND $odpowiedz == 4){$klasaOdp4 = 'wrong';}
    if($odpowiedz == $pytanie['poprawna']){$poprawnieUdzieloneOdp++;}  
    }
    //#########
    if(!empty($prepytanie)){
    echo '<div class="prepyt">';
        echo $prepytanie;
    echo '</div>';
    }
    echo '<div class="pytanie">';
        echo $pytanie['pytanie'];
    echo '</div>';
    echo '<div class="odpowiedzi">';
    
        echo '<label class="'.$klasaOdp1.'"><input disabled class="answerRadio" type="radio" name="Q_'.$j.'" value="1">'.$odp1.'</label><br>';
    
        echo '<label class="'.$klasaOdp2.'"><input disabled class="answerRadio" type="radio" name="Q_'.$j.'" value="2">'.$odp2.'</label><br>';
    
        echo '<label class="'.$klasaOdp3.'"><input disabled class="answerRadio" type="radio" name="Q_'.$j.'" value="3">'.$odp3.'</label><br>';
    
        echo '<label class="'.$klasaOdp4.'"><input disabled class="answerRadio" type="radio" name="Q_'.$j.'" value="4">'.$odp4.'</label><br>';
    
    echo '<input disabled type="hidden" name="id_pyt_'.$j.'" value="'.$pytanie['id'].'">';
    echo '</div>';
    echo '</div>';
}
?>
</div>
<div class="podsumowanie">
<?php
        $procent = $poprawnieUdzieloneOdp/$ile_pyt*100;
        if($procent >= 50){$klasaProc = 'correct';}else{$klasaProc = 'wrong';}
        echo 'poprawnie udzielone odpowiedzi : ';
        echo $poprawnieUdzieloneOdp.'/'.$ile_pyt;
        echo ' -> ';
        echo ' <br><b class="'.$klasaProc.'"> '.$procent.'%</b>'    
?>
</div>
<br><br>
<a href="../index.html">Powrót do strony głównej</a>
</body>
</html>