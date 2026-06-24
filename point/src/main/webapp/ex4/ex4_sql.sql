-- ex4 로그인(세션) -------------------

-- 2. 테이블 생성
CREATE TABLE users (
    id       SERIAL PRIMARY KEY,
    userid   VARCHAR(50)  UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    username VARCHAR(50)  NOT NULL
);

-- 3. 테스트 데이터(관리자iD 추가)
INSERT INTO users (userid, password, username)
VALUES ('admin', '1234', '관리자');

select * from users;