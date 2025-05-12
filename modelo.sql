-- Criação da tabela livros
CREATE TABLE livros (
    id INT PRIMARY KEY,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    preco DECIMAL(10,2)
);

-- Criação da tabela pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    cliente_nome VARCHAR(100),
    data_pedido DATE
);

-- Tabela intermediária para o relacionamento muitos para muitos
CREATE TABLE pedido_livro (
    pedido_id INT,
    livro_id INT,
    quantidade INT,
    PRIMARY KEY (pedido_id, livro_id),
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);

-- Inserções de exemplo
INSERT INTO livros VALUES (1, 'O Senhor dos Anéis', 'J.R.R. Tolkien', 99.90);
INSERT INTO livros VALUES (2, '1984', 'George Orwell', 39.90);
INSERT INTO livros VALUES (3, 'Dom Casmurro', 'Machado de Assis', 29.90);

INSERT INTO pedidos VALUES (1, 'Ana Silva', '2025-05-01');
INSERT INTO pedidos VALUES (2, 'Carlos Lima', '2025-05-03');
INSERT INTO pedidos VALUES (3, 'João Souza', '2025-05-05');

INSERT INTO pedido_livro VALUES (1, 1, 1);
INSERT INTO pedido_livro VALUES (1, 3, 2);
INSERT INTO pedido_livro VALUES (2, 2, 1);
