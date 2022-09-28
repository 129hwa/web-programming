CREATE TABLE worker (
  num int(11) NOT NULL auto_increment,
  id char(20) NOT NULL,
  name char(10) NOT NULL,
  gender char(1) NOT NULL,
  age int(11) NOT NULL,
  department char(20) NOT NULL,
  phone char(20) NOT NULL,
  address char(100),
  primary key(num)
);


INSERT INTO worker (id, name, gender, age, department, phone, address) VALUES
('chkim', '김창훈', 'M', 28, '총무부', '010-3838-8577', '경기도 용인시'),
('jhjang', '장종훈', 'M', 38, '총무부', '010-3347-7474', '서울시 강동구'),
('jek98', '안달훈', 'M', 25, '인사부', '010-3744-4747', '강원도 정선군'),
('lms2', '이세영', 'F', 48, '경리부', '010-3736-4784', '전라북도 전주시'),
('apple3', '김소영', 'F', 52, '총무부', '010-2845-8978', '전라남도 순천시'),
('sub093', '김수정', 'M', 53, '홍보부', '010-3834-1248', '경상북도 상주시'),
('chulsu', '김철수', 'M', 23, '홍보부', '010-1235-3788', '경기도 오산시'),
('yckim', '김영철', 'M', 32, '인사부', '010-2222-3334', '경기도 용인시'),
('yerin99', '김예린', 'F', 25, '총무부', '010-7777-9999', '서울시 강서구'),
('sjjung', '정수정', 'F', 35, '경리부', '010-3636-3563', '충청남도 아산시'),
('tuttle7', '이예린', 'F', 21, '연구소', '010-3756-9823', '경기도 성남시');



SELECT id, name, address FROM worker WHERE age <= 29 AND age >= 20;


SELECT name, gender, department, phone FROM worker WHERE department='경리부' and name LIKE '%정%';


SELECT name, address, gender, phone FROM worker WHERE address LIKE '%경기도%' ORDER BY age;


SELECT name, gender, id, phone, address FROM worker WHERE gender='F' ORDER BY age DESC;


SELECT name, phone FROM worker WHERE department='홍보부' and gender='M';


SELECT name, phone FROM worker WHERE address LIKE '%용인시%';


UPDATE worker SET phone='010-2222-3333' WHERE name='김영철';


UPDATE worker SET age=33 WHERE id='chulsu';


DELETE FROM worker WHERE id='jhjang';


DELETE FROM worker WHERE department='경리부' and name='이세영';
