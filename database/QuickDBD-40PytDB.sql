﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/g4OBZz
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `e12` (
<<<<<<< Updated upstream
    `id` int  NOT NULL ,
=======
    `id` int AUTO_INCREMENT NOT NULL ,
    `id_arkusza` int  NOT NULL ,
    `nr_pytania` int  NOT NULL ,
    -- np snippet kodu do pytania
    `prepytanie` text  NULL ,
>>>>>>> Stashed changes
    `pytanie` text  NOT NULL ,
    `odp1` text  NOT NULL ,
    `odp2` text  NOT NULL ,
    `odp3` text  NOT NULL ,
    `odp4` text  NOT NULL ,
    `obrazki` int  NOT NULL ,
    `poprawna` int  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `e13` (
<<<<<<< Updated upstream
    `id` int  NOT NULL ,
=======
    `id` int AUTO_INCREMENT NOT NULL ,
    `id_arkusza` int  NOT NULL ,
    `nr_pytania` int  NOT NULL ,
    -- np snippet kodu do pytania
    `prepytanie` text  NULL ,
>>>>>>> Stashed changes
    `pytanie` text  NOT NULL ,
    `odp1` text  NOT NULL ,
    `odp2` text  NOT NULL ,
    `odp3` text  NOT NULL ,
    `odp4` text  NOT NULL ,
    `obrazki` int  NOT NULL ,
    `poprawna` int  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `e14` (
<<<<<<< Updated upstream
    `id` int  NOT NULL ,
=======
    `id` int AUTO_INCREMENT NOT NULL ,
    `id_arkusza` int  NOT NULL ,
    `nr_pytania` int  NOT NULL ,
    -- np snippet kodu do pytania
    `prepytanie` text  NULL ,
>>>>>>> Stashed changes
    `pytanie` text  NOT NULL ,
    `odp1` text  NOT NULL ,
    `odp2` text  NOT NULL ,
    `odp3` text  NOT NULL ,
    `odp4` text  NOT NULL ,
    `obrazki` int  NOT NULL ,
    `poprawna` int  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `ee08` (
<<<<<<< Updated upstream
    `id` int  NOT NULL ,
=======
    `id` int AUTO_INCREMENT NOT NULL ,
    `id_arkusza` int  NOT NULL ,
    `nr_pytania` int  NOT NULL ,
    -- np snippet kodu do pytania
    `prepytanie` text  NULL ,
>>>>>>> Stashed changes
    `pytanie` text  NOT NULL ,
    `odp1` text  NOT NULL ,
    `odp2` text  NOT NULL ,
    `odp3` text  NOT NULL ,
    `odp4` text  NOT NULL ,
    `obrazki` int  NOT NULL ,
    `poprawna` int  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `ee09` (
<<<<<<< Updated upstream
    `id` int  NOT NULL ,
=======
    `id` int AUTO_INCREMENT NOT NULL ,
    `id_arkusza` int  NOT NULL ,
    `nr_pytania` int  NOT NULL ,
    -- np snippet kodu do pytania
    `prepytanie` text  NULL ,
>>>>>>> Stashed changes
    `pytanie` text  NOT NULL ,
    `odp1` text  NOT NULL ,
    `odp2` text  NOT NULL ,
    `odp3` text  NOT NULL ,
    `odp4` text  NOT NULL ,
    `obrazki` int  NOT NULL ,
    `poprawna` int  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

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

