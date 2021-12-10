# 1.X
# opis funkcji

// na podstawie zawartości zmiennych (wysłanych w formularzu w index.html)
// wyślij użytkownika na odpowiednią stronę, podając dalej informacje w formie GET.

// $_POST['destination']    zmienna na przyszłość, jakbym kiedykolwiek miał wykorzystać crossroad.php do czegokolwiek innego
// $_POST['kwali']          kwalifikacja, np 'ee09', jest podawana dalej aby kolejna strona wiedziała z jakiej kwalifikacji wyświetlić pytania
// $_POST['typ']            typ / rodzaj zabawy, aka czy pytania mają być w formie pojedyńczej, czy quizu 40pyt, czy może kiedyś coś innego
// $_link                   na tej zmiennej budowany jest link na który odesłać ma skrypt, jeżeli żaden warunek nie zostanie spełniony, zmienna pozostanie jako index.html 
                            i odeśle urzytkownika tam z kąd przybył

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

//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*