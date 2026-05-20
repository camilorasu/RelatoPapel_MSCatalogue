-- indice en la tabla de publisher
CREATE INDEX idx_publisher_name ON publisher (name);

-- indice en la tabla de libros
CREATE INDEX idx_book_title on book (title);
CREATE INDEX idx_book_idpublisher on book (id_publisher);
CREATE INDEX idx_book_price on book (price);

-- indice en la tabla de image
CREATE INDEX idx_image_idbook on image (id_book);

-- indice en la tabla de category
CREATE INDEX idx_category_name on category (name);

-- indice en la tabla de book_category
CREATE INDEX idx_bookcategory_idcategory on book_category (id_category);

-- indice en la tabla de author
CREATE INDEX idx_author_name on author (name);

-- indice en la tabla de book_author
CREATE INDEX idx_bookauthor_idauthor on book_author (id_author);