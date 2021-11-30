<?php
include('../php/dbc.php');

$dir = scandir(__DIR__);
/*
    echo '<pre>';
    print_r($dir);
    echo '</pre>';
echo '<hr>';
*/

$kwerendy = array();
$kwerendy[0] = 'DROP DATABASE pytania';
$pliki[0] = '#DROP DB';
$kwerendy[1] = 'CREATE DATABASE pytania';
$pliki[1] = '#CREATE DB';
$j = 3;
foreach($dir as $plik){
    if($plik == 'reload.php'){continue;}
    if($plik == '.' OR $plik == '..'){continue;}
    if(str_starts_with($plik, '[TEAMPLATE]')){continue;}
    if(str_starts_with($plik, '[MASTER]'))
    {
        $kwerendy[2] = file_get_contents($plik);
        $pliki[2] = $plik; 
        continue;
    }
    
    $pliki[$j] = $plik;
    $kwerendy[$j] = file_get_contents($plik);
    $j++;
}
// Wykonaj
$ile_plikow = count($kwerendy);
for($i = 0; $i < $ile_plikow; $i++){
    echo '<br><b>'.$pliki[$i].'</b><br>';
    if(mysqli_query($dbc, $kwerendy[$i])){
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
    print_r($kwerendy[$i]);
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