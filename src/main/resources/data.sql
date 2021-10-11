CREATE TABLE USER (
	id INT PRIMARY KEY auto_increment,
	username VARCHAR(50) NOT NULL UNIQUE,
	password VARCHAR(20) NOT NULL
);

CREATE TABLE CONSUMER (
    id INT PRIMARY KEY auto_increment,
    name VARCHAR(50) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    phone VARCHAR(10) NOT NULL,
    birth_date DATE NOT NULL
);

INSERT INTO USER(username, password) VALUES('ADMIN', 'ADMIN');
INSERT INTO CONSUMER(name, address,phone,birth_date)
VALUES('kacem', 'benkhirane', '0611212496', '1991-01-05');
