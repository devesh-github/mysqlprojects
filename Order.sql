DROP TABLE OrderTable;

CREATE TABLE OrderTable (
	product_id VARCHAR ( 50 ) NOT NULL,
	tran_id VARCHAR ( 50 ) NOT NULL,
	user_id VARCHAR ( 50 ) NOT NULL,
	amount INT NOT NULL,
	tran_date DATE NOT NULL
);

select * from OrderTable;

INSERT INTO OrderTable (product_id,tran_id,user_id,amount,tran_date) VALUES ('P1', 'T1', 'U1', 100, '2022-01-01');
INSERT INTO OrderTable (product_id,tran_id,user_id,amount,tran_date) VALUES ('P2','T1', 'U1',200, '2022-01-01');

INSERT INTO OrderTable (product_id,tran_id,user_id,amount,tran_date) VALUES ('P3', 'T1', 'U1', 100, '2022-01-01');
INSERT INTO OrderTable (product_id,tran_id,user_id,amount,tran_date) VALUES ('P4', 'T1', 'U1', 100, '2022-01-01');
INSERT INTO OrderTable (product_id,tran_id,user_id,amount,tran_date) VALUES ('P5', 'T1', 'U1', 100, '2022-01-01');
INSERT INTO OrderTable (product_id,tran_id,user_id,amount,tran_date) VALUES ('P1', 'T1', 'U1', 100, '2022-01-01');

select tran_date,product_id, sum(amount) from OrderTable group by tran_date,product_id order by sum(amount) desc limit 3