-- 既存のテーブルを削除
DROP TABLE IF EXISTS todos;
DROP TABLE IF EXISTS users;

-- users テーブルを再作成
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- todos テーブルを再作成
CREATE TABLE IF NOT EXISTS todos (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    title VARCHAR(255) NOT NULL
);

-- users テーブルにデータを挿入
INSERT INTO users (name) VALUES ('user1');
INSERT INTO users (name) VALUES ('user2');
INSERT INTO users (name) VALUES ('user3');

-- todos テーブルにデータを挿入
INSERT INTO todos (user_id, title) VALUES (1, '買い物に行く');
INSERT INTO todos (user_id, title) VALUES (1, '犬の散歩');
INSERT INTO todos (user_id, title) VALUES (2, 'プログラミングの勉強');

SELECT users.name, todos.title
FROM users
JOIN todos ON users.id = todos.user_id
ORDER BY users.id;
