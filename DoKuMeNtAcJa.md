# 1.X
# Opis struktóryt folderów i funkcji plików

Strona składa się z:
Folderu `css` zawierającego pliki `.css`
Folderu `database` zawierającego pliki `.sql` z komendami dla bazy danych [reload.php miałby sam wgrywać bazę danych, ale mi nie działą ;<]
folder `php` zawierający dodatkowe pliki `.php`.
folder `question-filse` zawierający pliki graficzne dla pytań, określone strukturą:

question-files -> id_arkusza  -> id_pytania -> [id_arkusza].Q.[id_pytania].[numer/id].png

dokumentacja.md, aka ten plik
links.md, aka plik z przydatnymi w projekcie linkami do palet, itp
index.html, aka strona główna
oneQ.php, aka strona służąca do zadawania jednego pytania użytkownikowi
quiz.php, aka strona służąca do zadania użytkownikowi testu 40pyt.
readme.md, aka to co czyta się na github,
wytyczne.pdf, aka żebym  miał pod rękom co mam zrobić XD

//############################//

[index.html]->
na stronie znajdziemy "logo serwisu" oraz formularz, w formularzu możemy wybrać kwalifikację oraz formę testu. formularz przesyłany jest do [/php/crossroad.php]. plik ten służy jedynie do wysłania użytkownika dalej w zależności od wybranej formy zabawy albo do [../quiz.php] albo [../oneQ.php] wraz z informacją GET z jakiej kwalifikacji ma być test/quiz.

[quiz.php]->
na stronie znajdziemy `40` komurek (generowanych przez tą stronę na podstawie danych z bazy z tabeli określonej w informacji GET) z pytaniami. każda komurka składa się z:
    prepytanie: czyli obrazek/kod do pytania
    pytanie: ...
    odpowiedzi
    ukryty-input z id pytania w bazie danych.
na dnie strony znajdziemy OGROMNY przycisk 'Zakończ quiz' który wysyła formularz (40 odpowiedzi na pytania) do ...

[/php/checkAnswers.php] ->
który na podstawie informacjo w POST wykonuje kopię poprzedniej strony, z tą różnicą że odpowiedzi są zablokowane przed edycją i pokolorowane w zależności czy użytkownik udzielił odpowiedz poprawną (zielony kolor) bądz błędną (kolor czerwony, poprawna zaznaczona na zielono) lub brak koloru przy braku odpowiedzi

[oneQ.php] -> Podobnie jak quiz.php wyświetla wygenerowane pytanie. Lecz po wybraniu odpowiedzi opcje są blokowane i oznaczane na tej samej stronie. Na stronie znajduje się również przycisk który odświerza stronę losując inne pytanie.

[/php/dbc.php] ->
Zawiera dane do połączenia z bazą danych

[/php/editDB.php], [choseEditDB.php] ->
Pliki do edycji bazy danych z poziomu strony. Work_In_Progres