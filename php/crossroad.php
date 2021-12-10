<?php
// Skszyżowanie, łatka która służy do przesłania użytkownika tam gdzie trzeba. Tymczasowo... Oby...
print_r($_POST);
switch($_POST['destination'])
{
    case 'quiz':
        if(!isset($_POST['kwali']) OR !isset ($_POST['typ']))
        {
            $link = '../index.html';
            break;
        }
            
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
header('Location: '.$link);
?>