DROP TABLE IF EXISTS review;

CREATE TABLE review (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT

);

INSERT INTO review (title , body) VALUES ('review 1' , 'Body text 1');
INSERT INTO review (title , body) VALUES ('review 2' , 'Body text 2');
INSERT INTO review (title , body) VALUES ('review 3' , 'Body text 3');
INSERT INTO review (title , body) VALUES ('review 4' , 'Body text 4');

