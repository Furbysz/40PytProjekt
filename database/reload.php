
<?php

/*

$text=iconv("UTF-8", "ISO-8859-1//IGNORE", $text);
mysqli_multi_query($dbc, $kwerendy[$i])

*/

// \/ Comment to disable
//include('../php/dbc.php');

$dir = scandir(__DIR__);
/*
    echo '<pre>';
    print_r($dir);
    echo '</pre>';
echo '<hr>';
*/

$kwerendy = array();
$kwDrop = 'DROP DATABASE pytania';
$kwCreate = 'CREATE DATABASE pytania';
$j = 0;
foreach($dir as $plik){
    if($plik == 'reload.php'){continue;}
    if($plik == '.' OR $plik == '..'){continue;}
    if(str_starts_with($plik, '[TEAMPLATE]')){continue;}
    if(str_starts_with($plik, '[MASTER]'))
    {
        $master = file_get_contents($plik); continue;
    }
    
    $pliki[$j] = $plik;
    $kwerendy[$j] = file_get_contents($plik);
    $j++;
}
// Wykonaj
//DROP
if(mysqli_query($dbc, $kwDrop)){
        echo '<b>USUNIĘTO BAZĘ</b><br>';
    } else {
        echo '<b>BŁĄD USUWANIA BAZY</b><br>';
    }
//CREATE
if(mysqli_query($dbc, $kwCreate)){
        echo '<b>UTWORZONO BAZĘ</b><br>';
    } else {
        echo '<b>BŁĄD TWORZENIA BAZY</b><br>';
    }
//SELECT
if(mysqli_select_db($dbc, 'pytania')){
    echo '<b>POŁĄCZONO Z NOWĄ BAZĄ</b><br>';
} else {
    echo '<b>BŁĄD ŁĄCZENIA Z NOWĄ BAZĄ</b><br>';
}
//MASTER
if(mysqli_multi_query($dbc, $master)){
    echo '<b>master.sql wykonane</b><br>';
} else {
    echo '<b>BŁĄD wykonania master.sql</b><br>';
    echo '<pre>';
    print_r(mysqli_error($dbc));
    echo '<br>';
    echo '</pre>';
    print_r($master);
    
    /*
    echo '<pre>';
    print_r($master);
    echo '</pre>';
    */
}

$ile_plikow = count($kwerendy);
for($i = 0; $i < $ile_plikow; $i++){
    //echo '<br><b>'.$pliki[$i].'</b><br>';
    if(mysqli_multi_query($dbc, $kwerendy[$i])){
        echo '<b>wykonano kwerende '.$i.'</b><br>';
    } else {
        echo '<b>BŁĄD kwerendy '.$i.'</b><br>';
    }
    
    echo '<pre>';
/*
    echo $i.'<br>';
    print_r($pliki[$i]);
    echo '<br>-------------------------------------------------------------------<br>';
*/
   //print_r($kwerendy[$i]);
    echo '</pre>';
    
}
echo '<b>Reload zakończony</b>';
/*
echo '<strong>DEBUG</strong>';

echo '<pre>';
print_r($kwerendy[2]);
echo '</pre>';
*/
?>