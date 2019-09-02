
/* Drop Tables */
DROP TABLE Cart CASCADE CONSTRAINTS;
DROP TABLE CheckBoard CASCADE CONSTRAINTS;
DROP TABLE Reply CASCADE CONSTRAINTS;
DROP TABLE Board CASCADE CONSTRAINTS;
DROP TABLE Book CASCADE CONSTRAINTS;
DROP TABLE Purchaseinfo CASCADE CONSTRAINTS;
DROP TABLE Person CASCADE CONSTRAINTS;



/* Drop Sequences */
DROP SEQUENCE board_number_sequence;
DROP SEQUENCE reply_number_sequence;




/* Create Sequences */

CREATE SEQUENCE board_number_sequence;
CREATE SEQUENCE reply_number_sequence;



/* Create Tables */

CREATE TABLE Cart
(
	-- 회원 아이디
	person_id varchar2(20) NOT NULL,
	book_isbn varchar2(50) NOT NULL,
	PRIMARY KEY (person_id, book_isbn)
);


CREATE TABLE Board
(
	board_num number NOT NULL,
	board_contents clob NOT NULL,
	board_title varchar2(30) NOT NULL,
	-- 기본값 0
	board_hits number default 0 NOT NULL,
	board_like number default 0 NOT NULL,
	-- 회원 아이디
	person_id varchar2(20) NOT NULL,
	PRIMARY KEY (board_num)
);


CREATE TABLE Book
(
	bookinfo_isbn varchar2(50) NOT NULL,
	bookinfo_title varchar2(50) NOT NULL,
	bookinfo_contents clob NOT NULL,
	-- 책 출간일
	book_publicationdate date,
	book_writer varchar2(20),
	PRIMARY KEY (bookinfo_isbn)
);


CREATE TABLE CheckBoard
(
	-- 중복이면1
	-- 중복아니면 0
	check_checkhits number NOT NULL,
	-- 회원 아이디
	person_id varchar2(20) NOT NULL,
	board_num number NOT NULL,
	-- 중복이면1
	-- 중복아니면 0
	check_checklike number NOT NULL
);


CREATE TABLE Person
(
	-- 회원 아이디
	person_id varchar2(20) NOT NULL,
	person_name varchar2(20) NOT NULL,
	person_password varchar2(20) NOT NULL,
	person_email varchar2(20) NOT NULL,
	person_phone varchar2(20) NOT NULL,
	-- 현재 아이디에 저장되어이는 돈의 액수
	person_cash number,
	PRIMARY KEY (person_id)
);


CREATE TABLE Purchaseinfo
(
	-- 회원 아이디
	person_id varchar2(20) NOT NULL,
	purchaseinfo_rentalperiod date,
	purchase_isbn varchar2(50) NOT NULL,
	PRIMARY KEY (person_id, purchase_isbn)
);


CREATE TABLE Reply
(
	board_num number NOT NULL,
	-- 회원 아이디
	person_id varchar2(20) NOT NULL,
	reply_num  number NOT NULL,
	reply_contents varchar2(2000) NOT NULL,
	-- 리플 작성 일자
	reply_date date default sysdate NOT NULL ,
	PRIMARY KEY (reply_num )
);



/* Create Foreign Keys */

ALTER TABLE CheckBoard
	ADD FOREIGN KEY (board_num)
	REFERENCES Board (board_num)
;


ALTER TABLE Reply
	ADD FOREIGN KEY (board_num)
	REFERENCES Board (board_num)
;


ALTER TABLE Cart
	ADD FOREIGN KEY (person_id)
	REFERENCES Person (person_id)
;


ALTER TABLE Board
	ADD FOREIGN KEY (person_id)
	REFERENCES Person (person_id)
;


ALTER TABLE CheckBoard
	ADD FOREIGN KEY (person_id)
	REFERENCES Person (person_id)
;


ALTER TABLE Purchaseinfo
	ADD FOREIGN KEY (person_id)
	REFERENCES Person (person_id)
;


ALTER TABLE Reply
	ADD FOREIGN KEY (person_id)
	REFERENCES Person (person_id)
;



/* Comments */

COMMENT ON COLUMN Cart.person_id IS '회원 아이디';
COMMENT ON COLUMN Board.board_hits IS '기본값 0';
COMMENT ON COLUMN Board.person_id IS '회원 아이디';
COMMENT ON COLUMN Book.book_publicationdate IS '책 출간일';
COMMENT ON COLUMN CheckBoard.check_checkhits IS '중복이면1
중복아니면 0';
COMMENT ON COLUMN CheckBoard.person_id IS '회원 아이디';
COMMENT ON COLUMN CheckBoard.check_checklike IS '중복이면1
중복아니면 0';
COMMENT ON COLUMN Person.person_id IS '회원 아이디';
COMMENT ON COLUMN Person.person_cash IS '현재 아이디에 저장되어이는 돈의 액수';
COMMENT ON COLUMN Purchaseinfo.person_id IS '회원 아이디';
COMMENT ON COLUMN Reply.person_id IS '회원 아이디';
COMMENT ON COLUMN Reply.reply_date IS '리플 작성 일자';



