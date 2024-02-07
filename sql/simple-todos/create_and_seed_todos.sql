-- 既存のテーブルを削除
DROP TABLE IF EXISTS todos;

-- todos テーブルを再作成
CREATE TABLE IF NOT EXISTS todos (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

-- todos テーブルにデータを挿入
INSERT INTO todos (title) VALUES ('買い物に行く');
INSERT INTO todos (title) VALUES ('犬の散歩');
INSERT INTO todos (title) VALUES ('プログラミングの勉強');

SELECT id, title
FROM todos