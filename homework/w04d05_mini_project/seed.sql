DROP TABLE IF EXISTS review;

CREATE TABLE review (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT,
  img VARCHAR(255)

);

INSERT INTO review (title , body , img) VALUES ('BoS (Bachata on Saturday) Review' , 'The night was quite good, I shall break it down into three ratings: music: 7 dance-level: 7 vibe: 8 Pleasant experience with a good range of music, some salsa and zouk as well as bachata. would like a bit less bachata to mix it up a bit, also some merengue would be nice but overall a decent night out and I recommend it 8/10' , 'bg_white.jpg');
INSERT INTO review (title , body , img) VALUES ('SoS (Salsa on Sunday) Review' , 'Music: 7/10 Dancers: 7/10 Vibe: 7/10 Venue: 9/10 Firstly while the music was good, there was however a problem with the DJ not playing any current music and sticking to classics which is a shame. The dancers are a little uptight but I still had fun but where this night shines is in its venue, the AC is very good and the dance floor very good with a funky design. free water on-point with lemon and limes on the side if you choose and a sophisticated feel. Overall I rate it 7.5/10' , 'venue2');
INSERT INTO review (title , body , img) VALUES ('El Bembe' , 'Music: 8/10 Dancers: 7/10 Vibe: 8/10 Venue: 7/10 The music at El bembe is very good, with a mix of old and new, playing a mix of cuban, Colombian and Puerto Rican Salsa in the main room and standard bachata classics in the bachata room, Sadly no Kizomba but they do throw in the odd reggaeton track every now and then. The biggest problem the venue has is that its not big enough, It does however look very nice inside. Overall 8/10' , 'venue2');
INSERT INTO review (title , body , img) VALUES ('La Pollera Colora (Titos) (Thursdays)' , 'There are two rooms in Titos, one for salsa and one for bachata. Titos is the place to go if you want to learn Salsa Caleña and the music they play is normally very good. The teachers there are well trained, all of them having danced in Cali Colombia for some time. The Bachata is good but there has been problems with the DJ recently and a lot of people have been complaining. I would recommend for Salsa and the bachata classes but the party afterwards is not as good as it used to be because of the DJ. Overall: 6/10' , 'venue2');

