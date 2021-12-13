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



//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//
//*//                                                                                        //*//
//*//                                                                                        //*//
//*//                                                                                        //*//
//*//                                                                                        //*//
//*//                                                                                        //*//
//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//



// $pytanie                 pobrane z bazy danych. Linijka z danymi dla danego pytyania
// $pytanie[Qtype]          pobrane z bazy danych. Typ pytania
// $pytanie[Atype]          pobrane z bazy danych. Typ odpowiedz
// $pytanie['id']           pobrane z bazy danych. id pytania
// $pytanie['id_arkusza']   pobrane z bazy danych. id arkusza
// $pytanie['files']        pobrane z bazy danych. ilość plików (zdjęć) do pytania powinno być w folderze
// $wczytano                przyjmuje za wartość ilość plików w lokalizacji dla danego pytania

// Funkcja poniżej sprawdza typ pytania i odpowiedzi i formatuje wyjściową komurkę z pytaniem w odpowiedni sposób.
// Min. sprawdza czy ilość plików w folderze ($wczytano) jest taka jak powinna ($pytanie['files])
.
    $wczytano = 0;
    $prepytanie = null;
    if($pytanie['Qtype'] == 'img')  {
        $dir = './question-files/'.$pytanie['id_arkusza'].'/'.$pytanie['id_arkusza'].'/';
        $dir_contents = scandir($dir);
        foreach($dir_contents as $content){
            if(is_dir($content)){continue;}
            if(str_starts_with($content, $pytanie['id_arkusza'].'_Q_')){
                $wczytano ++;
                $prepytanie = $prepytanie.'<img alt="obrazek do pytania nr '.$pytanie['id'].'" src="'.$dir.'/'.$content.'">';
            }
.            
        }
    }
    if($wczytano != $pytanie['files'])  {
        echo "<script>alert(`BŁĄD ŁADOWANIA, ODŚWIERZ STRONĘ BĄDZ SKONTAKTUJ SIĘ Z ADMINISTRATOREM: code-id".$pytanie['id'].'-ark'.$pytanie['id_arkusza'].'-nr'.$pytanie['nr_pytania']."`)</script>";
    }   
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
    



//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//
//*//                                                                                        //*//
//*//                                                                                        //*//
//*//                                                                                        //*//
//*//                                                                                        //*//
//*//                                                                                        //*//
//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//


// labels           trzyma wszystkie znaczniki 'label'
// answer           trzyma wartość poprawnej odpowiedzi
// correct          trzyma label z poprawną odpowiedzią

// funkcja sprawdza czy wartość jej podana jest wartością poprawną, jeżeli tak to wybrana komurka podświetla się na zielono, jeżeli nie to na czerwono.
// W każdym wypadku poprawna odpowiedz podświetla się na zielono.


.
    const labels = document.querySelectorAll(`label`);
    const answer = document.querySelector(`empty.data`).dataset.answer;
    const correct = document.querySelector(`label.ans`+answer);
.    
    function checkAns(number)
        {
            var selected = number;
            if(selected != 1 && selected != 2 && selected != 3 && selected != 4){return 0;}
            labels.forEach(e=>{
                var input = e.querySelector(`input.answerRadio`);
                input.disabled = true;
            })
            if(answer != number){
                document.querySelector(`label.ans`+number).classList.add(`wrong`)
                document.querySelector(`label.ans`+answer).classList.add(`correct`)
            } else {
                document.querySelector(`label.ans`+number).classList.add(`correct`)
            }
        }


//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//
//*//                                                                                        //*//
//*//                                                                                        //*//
//*//                                                                                        //*//
//*//                                                                                        //*//
//*//                                                                                        //*//
//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//