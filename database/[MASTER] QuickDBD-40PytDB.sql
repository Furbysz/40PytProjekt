-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/g4OBZz
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `e12` (
    `id` int AUTO_INCREMENT NOT NULL ,
    `id_arkusza` int  NOT NULL ,
    `nr_pytania` int  NOT NULL ,
    -- np snippet kodu do pytania
    `prepytanie` text  NULL ,
    `pytanie` text  NOT NULL ,
    `odp1` text  NOT NULL ,
    `odp2` text  NOT NULL ,
    `odp3` text  NOT NULL ,
    `odp4` text  NOT NULL ,
    -- Typ pytania. text | code | img
    `Qtype` text  NOT NULL ,
    -- Typ odpowiedzi. text | code
    `Atype` text  NOT NULL ,
    -- numer odp która jest poprawna
    `poprawna` text  NOT NULL ,
    -- ilość plików dopiętych do pytania, np zdjęć
    `files` int  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `e13` (
    `id` int AUTO_INCREMENT NOT NULL ,
    `id_arkusza` int  NOT NULL ,
    `nr_pytania` int  NOT NULL ,
    -- np snippet kodu do pytania
    `prepytanie` text  NULL ,
    `pytanie` text  NOT NULL ,
    `odp1` text  NOT NULL ,
    `odp2` text  NOT NULL ,
    `odp3` text  NOT NULL ,
    `odp4` text  NOT NULL ,
    -- Typ pytania. text | code | img
    `Qtype` text  NOT NULL ,
    -- Typ odpowiedzi. text | cnie i odpowiedz
    `Atype` text  NOT NULL ,
    -- numer odp która jest poprawna
    `poprawna` text  NOT NULL ,
    -- ilość plików dopiętych do pytania, np zdjęć
    `files` int  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `e14` (
    `id` int AUTO_INCREMENT NOT NULL ,
    `id_arkusza` int  NOT NULL ,
    `nr_pytania` int  NOT NULL ,
    -- np snippet kodu do pytania
    `prepytanie` text  NULL ,
    `pytanie` text  NOT NULL ,
    `odp1` text  NOT NULL ,
    `odp2` text  NOT NULL ,
    `odp3` text  NOT NULL ,
    `odp4` text  NOT NULL ,
    -- Typ pytania. text | code | img
    `Qtype` text  NOT NULL ,
    -- Typ odpowiedzi. text | code
    `Atype` text  NOT NULL ,
    -- numer odp która jest poprawna
    `poprawna` text  NOT NULL ,
    -- ilość plików dopiętych do pytania, np zdjęć
    `files` int  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `ee08` (
    `id` int AUTO_INCREMENT NOT NULL ,
    `id_arkusza` int  NOT NULL ,
    `nr_pytania` int  NOT NULL ,
    -- np snippet kodu do pytania
    `prepytanie` text  NULL ,
    `pytanie` text  NOT NULL ,
    `odp1` text  NOT NULL ,
    `odp2` text  NOT NULL ,
    `odp3` text  NOT NULL ,
    `odp4` text  NOT NULL ,
    -- Typ pytania. text | code | img
    `Qtype` text  NOT NULL ,
    -- Typ odpowiedzi. text | code
    `Atype` text  NOT NULL ,
    -- numer odp która jest poprawna
    `poprawna` text  NOT NULL ,
    -- ilość plików dopiętych do pytania, np zdjęć
    `files` int  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `ee09` (
    `id` int AUTO_INCREMENT NOT NULL ,
    `id_arkusza` int  NOT NULL ,
    `nr_pytania` int  NOT NULL ,
    -- np snippet kodu do pytania
    `prepytanie` text  NULL ,
    `pytanie` text  NOT NULL ,
    `odp1` text  NOT NULL ,
    `odp2` text  NOT NULL ,
    `odp3` text  NOT NULL ,
    `odp4` text  NOT NULL ,
    -- Typ pytania. text | code | img
    `Qtype` text  NOT NULL ,
    -- Typ odpowiedzi. text | code
    `Atype` text  NOT NULL ,
    -- numer odp która jest poprawna
    `poprawna` text  NOT NULL ,
    -- ilość plików dopiętych do pytania, np zdjęć
    `files` int  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

-- taki O scoreboard, coś jak w starych arkadach, podaj nick, zagraj, zapisz wynik, wyświetl 10NAJ
CREATE TABLE `scoreboard` (
    `id` int AUTO_INCREMENT NOT NULL ,
    -- Furbysz
    `nickname` text  NOT NULL ,
    -- 69/100 | 69%
    `score` text  NOT NULL ,
    -- kwalifikacja
    `set` text  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

-- linki do arkuszy
CREATE TABLE `arkusze` (
    `id` int  NOT NULL ,
    -- ee08, ee09 itd
    `kwalifikacja` text  NOT NULL ,
    -- styczeń 2021
    `sesja` text  NOT NULL ,
    -- link do arkusza
    `link` text  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

ALTER TABLE `e12` ADD CONSTRAINT `fk_e12_id_arkusza` FOREIGN KEY(`id_arkusza`)
REFERENCES `arkusze` (`id`);

ALTER TABLE `e13` ADD CONSTRAINT `fk_e13_id_arkusza` FOREIGN KEY(`id_arkusza`)
REFERENCES `arkusze` (`id`);

ALTER TABLE `e14` ADD CONSTRAINT `fk_e14_id_arkusza` FOREIGN KEY(`id_arkusza`)
REFERENCES `arkusze` (`id`);

ALTER TABLE `ee08` ADD CONSTRAINT `fk_ee08_id_arkusza` FOREIGN KEY(`id_arkusza`)
REFERENCES `arkusze` (`id`);

ALTER TABLE `ee09` ADD CONSTRAINT `fk_ee09_id_arkusza` FOREIGN KEY(`id_arkusza`)
REFERENCES `arkusze` (`id`);

