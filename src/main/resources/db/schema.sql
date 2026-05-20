CREATE DATABASE IF NOT EXISTS book_catalogue;

USE book_catalogue;

-- Crear tabla de editorial
CREATE TABLE IF NOT EXISTS publisher
(
    id_publisher INT AUTO_INCREMENT PRIMARY KEY,
    name         varchar(100) NOT NULL
);

-- Crear tabla de catalogo
CREATE TABLE IF NOT EXISTS book
(
    id_book      integer        not null AUTO_INCREMENT PRIMARY KEY,
    title        varchar(100)   not null,
    description  text,
    pages        integer        not null check ( pages > 0),
    isbn        varchar(100)   not null unique ,
    price        decimal(10, 2) not null check ( price >= 0.00),
    stock        integer        not null check ( stock >= 0),
    id_publisher integer        not null,
    created_at   datetime       not null default CURRENT_TIMESTAMP,
    updated_at    datetime       not null default  CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
    is_active    boolean        not null DEFAULT true,

    CONSTRAINT fk_book_publisher
        FOREIGN KEY (id_publisher)
            REFERENCES publisher (id_publisher)
            ON DELETE RESTRICT ON UPDATE RESTRICT
);

--  Crear tabla de imagenes
CREATE TABLE IF NOT EXISTS image
(
    id_image  integer not null auto_increment primary key,
    id_book   integer not null,
    url_image text    not null,

    CONSTRAINT fk_image_book
        FOREIGN KEY (id_book)
            REFERENCES book (id_book)
            ON DELETE CASCADE ON UPDATE RESTRICT
);

-- Crear tabla de autores
CREATE TABLE IF NOT EXISTS author
(
    id_author integer      not null auto_increment primary key,
    name      varchar(100) not null
);

-- Crear tabla de relación entre autores y libros
CREATE TABLE IF NOT EXISTS book_author
(
    id_book_author integer not null auto_increment primary key,
    id_book        integer not null,
    id_author      integer not null,

    CONSTRAINT fk_bookauthor_book
        foreign key (id_book)
            references book (id_book)
            ON DELETE CASCADE ON UPDATE RESTRICT ,

    CONSTRAINT fk_bookauthor_author
        foreign key (id_author)
            references author (id_author)
            ON DELETE CASCADE ON UPDATE RESTRICT ,

    CONSTRAINT uk_book_author
        unique (id_book, id_author)
);

-- Crear tabla de categorias
CREATE TABLE IF NOT EXISTS category
(
    id_category integer      not null primary key auto_increment,
    name        varchar(100) not null
);

-- Crear tabla de relación entre categorias y libros
CREATE TABLE IF NOT EXISTS book_category
(
    id_book_category integer not null primary key auto_increment,
    id_book          integer not null,
    id_category      integer not null,

    CONSTRAINT fk_bookcategory_book
        foreign key (id_book)
            references book (id_book)
            on delete cascade on update RESTRICT,

    CONSTRAINT fk_bookcategory_category
        foreign key (id_category)
            references category (id_category)
            on delete cascade on update RESTRICT,

    CONSTRAINT uk_book_category
        unique (id_book, id_category)
);
