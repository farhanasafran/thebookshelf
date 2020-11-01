CREATE TABLE USERS(
	user_id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(40) NOT NULL,
    password CHAR(40) NOT NULL,
    register_date DATE NOT NULL,
    PRIMARY KEY(user_id)
);


CREATE TABLE BOOK(
	book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(225) NOT NULL,
    author VARCHAR(225) NOT NULL,
    coverpage VARCHAR(225)  NULL,
    date_added DATE NOT NULL,
    owner INT NOT NULL,
    PRIMARY KEY (book_id),
    FOREIGN KEY (owner) REFERENCES USERS(user_id)
);

SELECT 
	title, 
	author AS auth, 
	coverpage AS cp,  
	DATE_FORMAT(date_added, '%M %d, %Y') AS da 
FROM 
	BOOK 
ORDER BY 
	date_added DESC;
	
DELETE 