DROP TABLE IF EXISTS review;

CREATE TABLE review (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT,
  img VARCHAR(255)

);

INSERT INTO review (title , body , img) VALUES ('review 1' , 'Body text 1' , '/assets/bg_white.jpg');
INSERT INTO review (title , body , img) VALUES ('review 4' , 'Body text 4' , 'venue2');

