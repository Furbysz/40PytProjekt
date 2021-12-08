<?php
// Skszyżowanie, łatka która służy do przesłania użytkownika tam gdzie trzeba. Tymczasowo... Oby...
switch($_POST['destination'])
{
    case 'quiz':
        $kwali = $_POST['kwali'];
        $typ = $_POST['typ'];
        if($typ == 'single'){$link = '../oneQ.php?type=';}
        if($typ == 'multi'){$link = '../quiz.php?type=';}
        $link = $link.$kwali;
        break;
    default:
        $link = '../index.html';
        break;
        
}
//echo $link;
header('Location: '.$link);
?>