# Czerwiec 2021 E14
# arkusz -> https://arkusze.pl/zawodowy/e14-2021-czerwiec-egzamin-zawodowy-pisemny.pdf
# ODP -> https://arkusze.pl/zawodowy/e14-2021-czerwiec-egzamin-zawodowy-pisemny-odpowiedzi.pdf
INSERT INTO arkusze (id, kwalifikacja, sesja) VALUES (0, 'E14', '2021 czerwiec');

INSERT INTO e14 
(#nr_pyt
id_arkusza,
nr_pytania,
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
0,  #id Arkusza
1,  #nr pytania
'', #prepyt
'Algorytm przedstawiony na rysunku można zapisać w języku JavaScript za pomocą instrukcji', #pyt
'for(i = 0; i > 10; i++)', #odp1
'var i = 0;
while(i <= 10)
i += 2;
', #odp2
'var i = 0;
do
 i++;
while(i > 10);
', #odp3
'var i = 0;
do
 i = i + 2;
while(i < 10);', #odp4
'2', #poprawna
'img', #Qtype
'code', #Atype
1   #files
),
(#2
0,  #id Arkusza
2,  #nr pytania
'function fun1(f)
{
if(f < 0)
f = f * (-1);
return f;
}
', #prepyt
'Przedstawiona funkcja zapisana w języku JavaScript ma za zadanie', #pyt
'wypisać wartość odwrotną do f', #odp1
'zwrócić wartość odwrotną do f', #odp2
'wypisać wartość bezwzględną z f', #odp3
'zwrócić wartość bezwzględną z f', #odp4
'4', #poprawna
'code', #Qtype
'text', #Atype
0   #files
),
(#3
0,  #id Arkusza
3,  #nr pytania
'if((x < -5) || (x > 2))
 x++;
', #prepyt
'Przedstawiona instrukcja warunkowa zapisana w języku JavaScript jest spełniona dla zmiennej x równej
', #pyt
'-4', #odp1
'-1', #odp2
'2', #odp3
'3', #odp4
'4', #poprawna
'code', #Qtype
'text', #Atype
0   #files
),
(#4
0,  #id Arkusza
4,  #nr pytania
'var w=0;
var i=1;
for (i = 1; i < 50; i++)
{
 if (i%2 == 0)
w += i;
}
', #prepyt
'Wynikiem działania przedstawionego fragmentu programu JavaScript jest wartość zmiennej w równa', #pyt
'liczbie naturalnych liczb parzystych większych od 50', #odp1
'sumie naturalnych liczb parzystych mniejszych od 50', #odp2
'sumie naturalnych liczb nieparzystych większych od 50', #odp3
'liczbie naturalnych liczb nieparzystych mniejszych od 50', #odp4
'2', #poprawna
'code', #Qtype
'text', #Atype
0   #files
),
(#5
0,  #id Arkusza
5,  #nr pytania
'', #prepyt
'Który z typów wspieranych przez język PHP służy do obsługi zmiennych logicznych?', #pyt
'Float', #odp1
'String', #odp2
'Integer', #odp3
'Boolean', #odp4
'4', #poprawna
'text', #Qtype
'text', #Atype
0   #files
),
(#6
0,  #id Arkusza
6,  #nr pytania
'x = przedmiot.nazwa();', #prepyt
'Przedstawiony zapis w języku JavaScript oznacza, że', #pyt
'nazwa jest polem klasy przedmiot.', #odp1
'nazwa jest właściwością obiektu przedmiot.', #odp2
'zmienna x będzie przechowywać wynik działania metody nazwa', #odp3
'zmienna x będzie przechowywać wynik działania funkcji przedmiot', #odp4
'3', #poprawna
'code', #Qtype
'text', #Atype
0   #files
),
(#7
0,  #id Arkusza
7,  #nr pytania
'$tab = array();
for($i=0; $i<10; $i++)
{
 $tab[$i] = rand(-100, 100);
}
foreach($tab as $x)
{
 if($x < 0)
echo "$x ";
}
', #prepyt
'Działaniem przedstawionego kodu PHP jest wypełnienie tablicy', #pyt
'kolejnymi liczbami od 0 do 9 i wypisanie ich.', #odp1
'kolejnymi liczbami od -100 do 100 i wypisanie wartości ujemnych.', #odp2
'10 losowymi wartościami, a następnie wypisanie wartości ujemnych.', #odp3
'100 losowymi wartościami, a następnie wypisanie wartości dodatnich.', #odp4
'3', #poprawna
'code', #Qtype
'text', #Atype
0   #files
),
(#8
0,  #id Arkusza
8,  #nr pytania
'', #prepyt
'W języku JavaScript zadeklarowana zmienna i, która ma przechowywać wynik dzielenia wynoszący 1, to', #pyt
'var i = 3/2;', #odp1
'var i = Number(3/2);', #odp2
'var i = parseInt(3/2);', #odp3
'var i = parseFloat(3/2);', #odp4
'3', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#9
0,  #id Arkusza
9,  #nr pytania
'', #prepyt
'Z którym ze słów kluczowych programowania obiektowego w języku JavaScript wiąże się dostęp do pól
i metod tylko z poziomu klasy, w której są zdefiniowane?
', #pyt
'const', #odp1
'static', #odp2
'public', #odp3
'private', #odp4
'4', #poprawna
'text', #Qtype
'text', #Atype
0   #files
),
(#10
0,  #id Arkusza
10,  #nr pytania
'for (i = 0; i < T.length; ...)
{
T[i] = 1;
}
', #prepyt
'Przedstawiony fragment kodu napisano w języku JavaScript. Aby p', #pyt
'i = 3', #odp1
'i ++ 3', #odp2
'i += 3', #odp3
'i =+ 3', #odp4
'3', #poprawna
'code', #Qtype
'code', #Atype
0   #files
),
(#11
0,  #id Arkusza
11,  #nr pytania
'', #prepyt
'Proces organizowania danych w bazie obejmujący tworzenie tabel, ustanawianie relacji między nimi
i polegający na wyeliminowaniu z bazy nadmiarowych danych oraz niespójnych zależności nazywa się', #pyt
'redundancją', #odp1
'normalizacją', #odp2
'weryfikacją spójności danych', #odp3
'weryfikacją integralności referencyjnej', #odp4
'2', #poprawna
'text', #Qtype
'text', #Atype
0   #files
),
(#12
0,  #id Arkusza
12,  #nr pytania
'SELECT ocena FROM oceny WHERE ocena>2 ORDER BY ocena;', #prepyt
'Dana jest tabela oceny o polach id, nazwisko, imie, ocena. Przedstawione zapytanie jest przykładem', #pyt
'sumy. ', #odp1
'selekcji.', #odp2
'łączenia.', #odp3
'projekcji.', #odp4
'2 | 4', #poprawna
'code', #Qtype
'text', #Atype
0   #files
),
(#13
0,  #id Arkusza
13,  #nr pytania
'', #prepyt
'Dana jest tabela uczniowie o polach id, nazwisko, imie, klasa. Które zapytanie SQL wyświetli liczbę osób
w poszczególnych klasach oraz nazwę klasy?
', #pyt
'SELECT SUM(id), klasa FROM uczniowie GROUP BY klasa;', #odp1
'SELECT SUM(id), klasa FROM uczniowie ORDER BY klasa;', #odp2
'SELECT COUNT(id), klasa FROM uczniowie GROUP BY klasa;', #odp3
'SELECT COUNT(id), klasa FROM uczniowie ORDER BY klasa;', #odp4
'3', #poprawna
'text', #Qtype
'text', #Atype
0   #files
),
(#14
0,  #id Arkusza
14,  #nr pytania
'', #prepyt
'Dana jest tabela uczniowie o polach id, imie, nazwisko, data_ur (format rrrr-mm-dd). Które zapytanie
w języku SQL wyświetli tylko imiona i nazwiska uczniów urodzonych w 2001 roku?', #pyt
'SELECT * FROM uczniowie WHERE data_ur like "2001"; ', #odp1
'SELECT * FROM uczniowie WHERE data_ur == 2001-%-%;', #odp2
'SELECT imie, nazwisko FROM uczniowie WHERE data_ur like "2001-%-%";', #odp3
'SELECT id, imie, nazwisko, data_ur FROM uczniowie WHERE data_ur like "2001-*-*";', #odp4
'3', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#15
0,  #id Arkusza
15,  #nr pytania
'', #prepyt
'W programie MS Access we właściwościach pola klasa należy ustawić maskę wprowadzania danych. Którą
maskę należy podać, aby wprowadzone dane były złożone z trzech znaków w formacie: obowiązkowa cyfra,
po niej obowiązkowe dwie litery?', #pyt
'000', #odp1
'0LL', #odp2
'0CC', #odp3
'CLL', #odp4
'2', #poprawna
'img', #Qtype
'text', #Atype
1   #files
),
(#16
0,  #id Arkusza
16,  #nr pytania
'', #prepyt
'Relacja opisana w sposób: „Rekordowi z tabeli A odpowiada dowolna liczba rekordów z tabeli B. Jednemu
rekordowi z tabeli B odpowiada dokładnie jeden rekord z tabeli A” jest relacją', #pyt
'nieoznaczoną', #odp1
'jeden do wielu.', #odp2
'wiele do wielu.', #odp3
'jeden do jednego.', #odp4
'2', #poprawna
'text', #Qtype
'text', #Atype
0   #files
),
(#17
0,  #id Arkusza
17,  #nr pytania
'UPDATE katalog SET katalog.cena = [cena]*1.1; ', #prepyt
'Przedstawiona instrukcja zapisana w języku SQL jest przykładem kwerendy', #pyt
'krzyżowej.', #odp1
'usuwającej', #odp2
'dołączającej', #odp3
'aktualizującej.', #odp4
'4', #poprawna
'code', #Qtype
'text', #Atype
0   #files
),
(#18
0,  #id Arkusza
18,  #nr pytania
'', #prepyt
'Dana jest tabela pracownicy o polach id, nazwisko, imie, wynagrodzenie. Kolumnę wynagrodzenie można
usunąć za pomocą instrukcji', #pyt
'ALTER TABLE pracownicy DELETE wynagrodzenie;', #odp1
'ALTER TABLE pracownicy DROP COLUMN wynagrodzenie;', #odp2
'DROP TABLE pracownicy DELETE COLUMN wynagrodzenie;', #odp3
'ALTER TABLE pracownicy DELETE COLUMN wynagrodzenie;', #odp4
'2', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#19
0,  #id Arkusza
19,  #nr pytania
'', #prepyt
'Wskaż zapytanie SQL tworzące użytkownika sekretarka na localhost z hasłem zaq123', #pyt
'CREATE USER `sekretarka`@`localhost` IDENTIFY "zaq123";', #odp1
"CREATE USER 'sekretarka'@'localhost' IDENTIFIED `zaq123`;", #odp2
"CREATE USER `sekretarka`@`localhost` IDENTIFY BY `zaq123`;", #odp3
"CREATE USER `sekretarka`@`localhost` IDENTIFIED BY 'zaq123';", #odp4
'4', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#20
0,  #id Arkusza
20,  #nr pytania
'', #prepyt
'W języku SQL ustawienie klucza podstawowego na polu id w tabeli uczniowie możliwe jest za pomocą
polecenia', #pyt
'ADD TABLE uczniowie PRIMARY KEY (id);', #odp1
'INSERT TABLE uczniowie PRIMARY KEY (id);', #odp2
'ALTER TABLE uczniowie ADD PRIMARY KEY (id);', #odp3
'INSERT TABLE uczniowie ADD PRIMARY KEY (id);', #odp4
'3', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#21
0,  #id Arkusza
21,  #nr pytania
'', #prepyt
'Wskaż poprawną definicję kodowania polskich znaków w dokumencie HTML.', #pyt
'<meta content=’UTF8’>', #odp1
'<meta charset="UTF-8">', #odp2
'<meta char set= "UTF-8">', #odp3
'<meta "content=UTF-8">', #odp4
'2', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#22
0,  #id Arkusza
22,  #nr pytania
'<div class= "menu"> </div>', #prepyt
'Dla przedstawionego fragmentu dokumentu HTML zdefiniowano formatowanie CSS selektora klasy „menu”
tak, aby kolor tła bloku był zielony. Która definicja stylu CSS odpowiada temu formatowaniu?', #pyt
'div:menu { color: green; }', #odp1
'div.menu { background-color: green; }', #odp2
'menu { background-color: rgb(0,255,0); }', #odp3
'#menu { background-color: rgb(0,255,0); }', #odp4
'2', #poprawna
'code', #Qtype
'code', #Atype
0   #files
),
(#23
0,  #id Arkusza
23,  #nr pytania
'', #prepyt
'Za pomocą, którego znacznika można wstawić listę numerowaną (uporządkowaną) w dokumencie HTML?', #pyt
'<li>', #odp1
'<ol>', #odp2
'<ul>', #odp3
'<dl>', #odp4
'2', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#24
0,  #id Arkusza
24,  #nr pytania
'', #prepyt
'W języku HTML, aby scalić w poziomie dwie sąsiednie komórki w wierszu tabeli należy zastosować atrybut', #pyt
'colspan', #odp1
'rowspan', #odp2
'cellspacing', #odp3
'cellpadding', #odp4
'1', #poprawna
'text', #Qtype
'text', #Atype
0   #files
),
(#25
0,  #id Arkusza
25,  #nr pytania
'', #prepyt
'Poprawny zapis znacznika <img>, za pomocą którego można umieścić na stronie internetowej obraz rys.jpg
przeskalowany do szerokości 120 px i wysokości 80 px z tekstem alternatywnym „krajobraz” to', #pyt
'<img src="rys.jpg" width="120px" height="80px" alt="krajobraz"/>', #odp1
'<img src="rys.jpg" height="120px" width="80px" info="krajobraz"/>', #odp2
'<img href="rys.jpg" height="120px" width="80px" info="krajobraz"/>', #odp3
'<img image="rys.jpg" width="120px" height="80px" alt="krajobraz"/>', #odp4
'1', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#26
0,  #id Arkusza
26,  #nr pytania
'', #prepyt
'W stylu CSS aby zadeklarować krój czcionki, należy użyć właściwości', #pyt
'font-size', #odp1
'font-face', #odp2
'font-style', #odp3
'font-family', #odp4
'4', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#27
0,  #id Arkusza
27,  #nr pytania
'', #prepyt
'Która z definicji CSS określa formatowanie nagłówka h1: tekst nadkreślony, z odstępami między
wyrazami 10 px i czerwonym kolorem tekstu? ', #pyt
'h1{
 text-decoration: overline;
 word-spacing: 10px;
 color: red;
}
', #odp1
'h1{
 text-decoration: overline;
 word-spacing: 10px;
 color: red;
}
', #odp2
'h1{
 text-transform: none;
 line-height: 10px;
 color: rgb(255,0,0);
}
', #odp3
'h1{
 text-decoration: underline;
 line-height: 10px;
 color: rgb(255,0,0);
}', #odp4
'1', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#28
0,  #id Arkusza
28,  #nr pytania
'', #prepyt
'Wskaż poprawną definicję stylu CSS dla przycisku typu submit o właściwościach: czarny kolor tła, brak
obramowania, marginesy wewnętrzne 5 px.
', #pyt
'input[type=submit] {
 background-color: #000000;
 border: none;
 padding: 5px;
}
', #odp1
'input[type=submit] {
 background-color: #ffffff;
 border: none;
 padding: 5px;
}
', #odp2
'input=submit {
 background-color: #000000;
 border: none;
 margin: 5px;
}
', #odp3
'input=submit {
 background-color: #000000;
 border: 0px;
 margin: 5px;
}', #odp4
'1', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#29
0,  #id Arkusza
29,  #nr pytania
'', #prepyt
'Który format pliku jest formatem rastrowym?', #pyt
'CDR', #odp1
'SVG', #odp2
'SWF', #odp3
'TIFF', #odp4
'4', #poprawna
'text', #Qtype
'text', #Atype
0   #files
),
(#30
0,  #id Arkusza
30,  #nr pytania
'', #prepyt
'W grafice komputerowej pojęcie kanału alfa jest związane z ', #pyt
'koloryzacją.', #odp1
'pikselizacją.', #odp2
'barwieniem.', #odp3
'przezroczystością.', #odp4
'4', #poprawna
'text', #Qtype
'text', #Atype
0   #files
),
(#31
0,  #id Arkusza
31,  #nr pytania
'', #prepyt
'Znacznik języka HTML, który służy do dynamicznego tworzenia grafiki na stronie internetowej bez
osadzania dodatkowych plików, to', #pyt
'<img>', #odp1
'<object>', #odp2
'<canvas>', #odp3
'<embed>', #odp4
'3', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#32
0,  #id Arkusza
32,  #nr pytania
'', #prepyt
'Aby zamieścić na stronie internetowej film, należy użyć znacznika', #pyt
'<audio>', #odp1
'<video>', #odp2
'<movie>', #odp3
'<media>', #odp4
'2', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#33
0,  #id Arkusza
33,  #nr pytania
'', #prepyt
'Za pomocą której metody obiektu location języka JavaScript można zastąpić bieżący dokument na
dokument spod adresu wskazanego przez parametr metody?', #pyt
'open();', #odp1
'close();', #odp2
'replace();', #odp3
'reaload();', #odp4
'3', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#34
0,  #id Arkusza
34,  #nr pytania
'<p id="wynik"></p>
<script type="text/javascript">
 var osoba = { nazwisko: "Kowalski", imie: "Jan" };
 …
 document.getElementById("wynik").innerHTML = osoba.dane();
</script>', #prepyt
'Wskaż definicję metody, którą należy wstawić w miejscu kropek, aby na stronie WWW wyświetlił się tekst:
Jan Kowalski', #pyt
'osoba.dane = function() {
 return
this.imie+" "+this.nazwisko;
};', #odp1
'dane() = function() {
 return
this.imie+" "+this.nazwisko;
};', #odp2
'osoba.dane = function() {
 return imie+" "+nazwisko;
};', #odp3
'dane() = function {
 this.imie+" "+this.nazwisko;
};
', #odp4
'1', #poprawna
'code', #Qtype
'code', #Atype
0   #files
),
(#35
0,  #id Arkusza
35,  #nr pytania
'', #prepyt
'W języku PHP funkcja, która może służyć do sprawdzenia, czy dany ciąg jest fragmentem innego ciągu, to', #pyt
'trim();', #odp1
'strstr();', #odp2
'strlen();', #odp3
'strtok();', #odp4
'2', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#36
0,  #id Arkusza
36,  #nr pytania
'', #prepyt
'W którym z przypadków walidacja fragmentu kodu CSS przebiegnie pomyślnie? ', #pyt
'p { text-size:bold; }', #odp1
'p { font-weight:bold; }', #odp2
'<p style="font-size:bold;">', #odp3
'<p style="font-style:bold;">', #odp4
'2', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#37
0,  #id Arkusza
37,  #nr pytania
'<p id="jeden">Kwalifikacja EE.01</p>', #prepyt
'Która z instrukcji języka JavaScript dokona zmiany koloru tekstu na niebieski w akapicie zdefiniowanym
w dokumencie HTML?', #pyt
'document.getElementById("jeden").color = "blue";', #odp1
'document.getElementById("jeden").style.color = "blue";', #odp2
'document.getElementById("jeden").background-color = "blue";', #odp3
'document.getElementById("jeden").style.background-color = "blue";', #odp4
'2', #poprawna
'code', #Qtype
'code', #Atype
0   #files
),
(#38
0,  #id Arkusza
38,  #nr pytania
'', #prepyt
'W języku PHP przekierowanie użytkownika na inną stronę WWW jest możliwe za pomocą funkcji', #pyt
'header();', #odp1
'upload();', #odp2
'require();', #odp3
'include();', #odp4
'1', #poprawna
'text', #Qtype
'code', #Atype
0   #files
),
(#39
0,  #id Arkusza
39,  #nr pytania
'<?php
 $kolory = array("czarny", "zielony", "niebieski", "biały");
 rsort($kolory);
 $ile = count($kolory);
 for($x = 0; $x < $ile; $x++)
 {
echo $kolory[$x].", ";
 }
?>', #prepyt
'Wskaż wynik wykonania skryptu PHP.', #pyt
'zielony, niebieski, czarny, biały,', #odp1
'biały, czarny, niebieski, zielony,', #odp2
'czarny, zielony, niebieski, biały,', #odp3
'biały, niebieski, zielony, czarny,', #odp4
'1', #poprawna
'code', #Qtype
'text', #Atype
0   #files
),
(#40
0,  #id Arkusza
40,  #nr pytania
'', #prepyt
'Wskaż funkcję PHP, za pomocą której odczytana zawartość pliku jest zapisywana do zmiennej
reprezentującej ciąg znaków', #pyt
'eof();', #odp1
'fwrite();', #odp2
'get_file();', #odp3
'file_get_contents();', #odp4
'4', #poprawna
'text', #Qtype
'code', #Atype
0   #files
);
