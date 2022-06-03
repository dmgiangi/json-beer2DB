CREATE TABLE food_pairings (
			food_id integer NOT NULL ,
			beer_id integer NOT NULL 
);

-- 
ALTER TABLE food_pairings ADD CONSTRAINT nuovo_vincolo_di_univocita PRIMARY KEY (food_id,beer_id);

CREATE INDEX food_pairings_beer_id_index  ON food_pairings(beer_id);

CREATE INDEX food_pairings_food_id_index  ON food_pairings(food_id);

-- 
ALTER TABLE food_pairings ADD CONSTRAINT beer_foreign_key FOREIGN KEY (beer_id) REFERENCES beers(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE food_pairings ADD CONSTRAINT food_foreign_key FOREIGN KEY (food_id) REFERENCES foods(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- CHECK Constraints are not supported in Mysql (as of version 5.x)
-- But it'll parse the statements without error 

CREATE INDEX food_pairings_food_id_index  ON food_pairings(food_id);

CREATE INDEX food_pairings_beer_id_index  ON food_pairings(beer_id);
ALTER TABLE food_pairings ADD CONSTRAINT  FOREIGN KEY () REFERENCES beers ();
ALTER TABLE food_pairings ADD CONSTRAINT  FOREIGN KEY () REFERENCES foods ();
