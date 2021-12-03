<?php
if(!isset($_POST['ile_pytan'])){echo 'nie wiem ile było pytań';}

include('dbc.php');

echo '<pre>';
print_r($_POST);
echo '</pre><hr>';

$ile_pyt    = $_POST['ile_pytan'];
$kwali      = $_POST['kwali'];

switch($kwali){
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
$response = mysqli_query($dbc, $query);
$all_pyt = mysqli_fetch_all($response, MYSQLI_ASSOC);

for($j = 0; $j < $ile_pyt; $j++)
{
    $id_pyt = $_POST['id_pyt_'.$j];
    $odp    = $_POST['Q_'.$j];
    $dane   = $all_pyt[$j];
    //#############
    
echo '<pre>';
print_r($id_pyt);
    echo '<br>';
print_r($odp);
    echo '<br>';
print_r($dane);
echo '</pre><hr>';
}
?>