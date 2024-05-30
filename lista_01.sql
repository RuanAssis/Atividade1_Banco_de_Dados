use avaliacao_22b;

-- Inserir um Novo Livro
INSERT INTO livros(titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ("As Crônicas de Nárnia", "C.S Lewis", 1950, TRUE, "Fantasia", "978-0064471190", "HarperCollins", 768, "Inglês");

-- Inserir Múltiplos Livros
INSERT INTO livros(titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ("Cem Anos de Solidão", "Gabriel Garcia Marquez", 1967, TRUE, "Ficção", "978-0241968581", "Penguin Books", 422, "Espanhol"),
("Harry Potter e a Pedra Filosofal", "J.K. Rowling", 1997, TRUE, "Fantasia", "978-0439708180", "Bloomsbury", 309, "Inglês"),
("O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, TRUE, "Fantasia", "978-0618640157", "HarperCollins", 423, "Inglês");

-- Inserir Livro com Categoria Específica
INSERT INTO livros(titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ("Um livro de História", "João Azevedo", 2000, TRUE, "História", "978-1234567890", "History", 300, "Português");

-- Atualizar Disponibildade
UPDATE livros
SET disponivel = FALSE
WHERE ano_publicacao < 2000;

-- Atualizar Editora
UPDATE livros
SET editora = "Plume Books"
WHERE titulo = "1984";

-- Atualizar Idioma
UPDATE livros
SET idioma = "Inglês"
WHERE editora = "Peguin Books";

-- Atualizar Titulo
UPDATE livros
SET titulo = "Harry Poter e a Pedra Filosofal (Edição Especial)"
WHERE isbn = "978-0439708180";

-- Deletar por Categoria
DELETE FROM livros
WHERE categoria = "Terror";

-- Deletar por Idioma e Ano
DELETE FROM livros
WHERE idioma = "Francês" AND
ano_publicacao < 1970;

-- Deletar Livro Específico
DELETE FROM livros
WHERE titulo = "As Crônicas de Nárnia";

-- Deletar por Editora
DELETE FROM livros
WHERE editora = "Penguin Books";

-- Selecionar com WHERE
SELECT * FROM livros
WHERE quantidade_paginas > 500;

-- Selecionar com GROUP BY
SELECT categoria, COUNT(*) AS quantidade
FROM livros
GROUP BY categoria;

-- Selecionar com LIMIT
SELECT * FROM livros
ORDER BY id
LIMIT 5;

-- Selecionar com SUM e COUNT
SELECT SUM(quantidade_paginas) AS total_paginas, COUNT(*) AS total_livros, AVG(quantidade_paginas) AS media_paginas
FROM livros
WHERE categoria = "Drama";

-- Selecionar com AVG
SELECT AVG(ano_publicacao) AS media_ano_publicacao
FROM livros
WHERE disponivel = TRUE;

-- Selecionar com MAX e MIN
SELECT MIN(ano_publicacao)
FROM livros;

SELECT MAX(ano_publicacao)
FROM livros;

-- Selecionar com ORDER BY
SELECT * FROM livros
ORDER BY ano_publicacao DESC;

-- Selecionar com UNION
SELECT titulo FROM livros
WHERE idioma = "Inglês"
UNION
SELECT titulo FROM livros
WHERE idioma = "Português";

-- Selecionar Livros de um Autor Específico
SELECT * FROM livros
WHERE autor = "George Orwell";