select current_database();

CREATE TABLE board (
    id SERIAL PRIMARY KEY,              -- 게시글 고유 번호 (자동 증가)
    title VARCHAR(200) NOT NULL,        -- 제목 (최대 200자, 필수)
    author VARCHAR(50) NOT NULL,        -- 작성자 (최대 50자, 필수)
    content TEXT NOT NULL,              -- 내용 (길이 제한 없는 텍스트, 필수)
    reg_date TIMESTAMP DEFAULT NOW()  -- 작성일시 (기본값 현재 시간)
);
select * from board;