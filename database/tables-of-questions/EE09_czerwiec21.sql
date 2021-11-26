# Czerwiec 2021 E14
# arkusz -> https://arkusze.pl/zawodowy/ee09-2021-czerwiec-egzamin-zawodowy-pisemny.pdf
# ODP -> https://arkusze.pl/zawodowy/ee09-2021-czerwiec-egzamin-zawodowy-pisemny-odpowiedzi.pdf
INSERT INTO ee09 
(#nr_pyt
id_arkusza,
prepytanie,
pytanie, 
odp1, 
odp2, 
odp3, 
odp4, 
poprawna,
Qtype,
Atype,
files
) VALUES 

(#1
1,  #id Arkusza
'', #prepyt
'Która instrukcja algorytmu odpowiada graficznej reprezentacji bloku przedstawionego na rysunku?', #pyt
'n > 20', #odp1
'Wypisz n', #odp2
'n ← n + 5', #odp3
'Wykonaj podprogram sortowania tablicy t', #odp4
'', #poprawna
'img', #Qtype
'text', #Atype
1   #files
),
(#2
1,  #id Arkusza
'', #prepyt
'Jak nazywa się metoda sortowania polegająca na podziale na n przedziałów jednakowej długości, w których
następuje sortowanie, po czym posortowane zawartości przedziałów są poddawane analizie i prezentacji?', #pyt
'Sortowanie szybkie.', #odp1
'Sortowanie kubełkowe.', #odp2
'Sortowanie bąbelkowe.', #odp3
'Sortowanie przez wybór.', #odp4
'', #poprawna
'text', #Qtype
'text', #Atype
0   #files
),
(#3
1,  #id Arkusza
'', #prepyt
'Program zapisany w języku PHP ma za zadanie obliczyć średnią pozytywnych ocen ucznia od 2 do 6.
Warunek wybierania ocen w pętli liczącej średnią powinien zawierać wyrażenie logiczne', #pyt
'$ocena > 2 or $ocena < 6', #odp1
'$ocena > 2 and $ocena < 6', #odp2
'$ocena >= 2 or $ocena <= 6', #odp3
'$ocena >= 2 and $ocena <= 6', #odp4
'', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#4
1,  #id Arkusza
'switch ($liczba) {
case 10:
 case 20: $liczba++; break;
default: $liczba = 0;
}
', #prepyt
'Wskaż instrukcję równoważną do instrukcji switch zapisanej językiem PHP.', #pyt
'if ($liczba==10)
 $liczba++;
else
 $liczba = 0;
', #odp1
'if ($liczba==10 or $liczba==20)
 $liczba++;
else
 $liczba = 0;', #odp2
'if ($liczba==10 or $liczba==20)
 $liczba++;
', #odp3
'if ($liczba==10 and $liczba==20)
 $liczba++;
else
 $liczba = 0;
', #odp4
'', #poprawna
'code', #Qtype
'code', #Atype
0   #files
),
(#5
1,  #id Arkusza
'class Owoc {
 public $nazwa;
 private $kolor;
 function set_nazwa($nazwa) {
 $this->nazwa = $nazwa;
 }
}', #prepyt
'Które stwierdzenie najlepiej opisuje klasę Owoc zdefiniowaną w języku PHP i przedstawioną na listingu?', #pyt
'Ma jedno pole i dwie metody, z czego jedna metoda ma zakres prywatny', #odp1
'Ma dwa pola i jedną metodę, pole kolor ma zakres widzialności ograniczony tylko do metod klasy.', #odp2
'Ma dwa pola i jedną metodę, pole nazwa ma zakres widzialności ograniczony tylko do metod klasy.', #odp3
'Ma dwa pola i jeden konstruktor, oba pola mają zakres widzialności ograniczony tylko do metod klasy.', #odp4
'', #poprawna
'text', #Qtype
'text', #Atype
0   #files
),
(#6
1,  #id Arkusza
'', #prepyt
'W języku C++ zdefiniowano zmienną: char zm1;. W jaki sposób można do niej przypisać wartość zgodnie
ze składnią języka?', #pyt
"zm1 = 'w';", #odp1
'zm1 == 0x35;', #odp2
'zm1[2] = 32;', #odp3
'zm1 = "wiadro";', #odp4
'', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#7
1,  #id Arkusza
'', #prepyt
'W języku JavaScript, aby wydzielić fragment napisu znajdujący się pomiędzy wskazanymi przez parametr
indeksami należy użyć metody', #pyt
'trim()', #odp1
'slice()', #odp2
'concat()', #odp3
'replace()', #odp4
'', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#8
1,  #id Arkusza
'', #prepyt
'W jaki sposób, stosując język PHP, zapisać w ciasteczku napis znajdujący się w zmiennej dane na czas
jednego dnia?', #pyt
'setcookie("dane", $dane, 0);', #odp1
'setcookie("dane", "dane", 0);', #odp2
'setcookie("dane", $dane, time());', #odp3
'setcookie("dane", $dane, time() + (3600*24)); ', #odp4
'', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#9
1,  #id Arkusza
'if (empty($_POST["name"])) {
$nameErr = "Name is required";
} ', #prepyt
'Przedstawiony fragment kodu PHP służy do obsługi', #pyt
'sesji.', #odp1
'ciasteczek.', #odp2
'formularza.', #odp3
'bazy danych.', #odp4
'', #poprawna
'code', #Qtype
'text', #Atype
0   #files
),
(#10
1,  #id Arkusza
'echo date("Y");', #prepyt
'Po wykonaniu kodu PHP zostanie wyświetlona aktualna data zawierająca jedynie', #pyt
'rok.', #odp1
'dzień.', #odp2
'miesiąc i rok.', #odp3
'dzień i miesiąc.', #odp4
'', #poprawna
'code', #Qtype
'text', #Atype
0   #files
),
(#11
1,  #id Arkusza
'', #prepyt
'Który zapis definiuje w języku PHP komentarz wieloliniowy?', #pyt
'#', #odp1
'//', #odp2
'/* */', #odp3
'<!-- -->', #odp4
'', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#12
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#13
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#14
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#15
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#16
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#17
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#18
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#19
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#20
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#21
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#22
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#23
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#24
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#25
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#26
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#27
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#28
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#29
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#30
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#31
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#32
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#33
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#34
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#35
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#36
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#37
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#38
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#39
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
),
(#40
1,  #id Arkusza
'', #prepyt
'', #pyt
'', #odp1
'', #odp2
'', #odp3
'', #odp4
'', #poprawna
'', #Qtype
'', #Atype
0   #files
);