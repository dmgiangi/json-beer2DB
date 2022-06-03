CREATE TABLE malt_pairings (
			id_beer integer NOT NULL ,
			id_malt float NOT NULL ,
			amount float NOT NULL 
);

-- 
ALTER TABLE malt_pairings ADD CONSTRAINT nuovo_vincolo_di_univocita PRIMARY KEY (id_beer,id_malt);

CREATE INDEX malt_pairings_index  ON malt_pairings();

CREATE INDEX malt_pairings_id_beer_index  ON malt_pairings(id_beer);

-- 
ALTER TABLE malt_pairings ADD CONSTRAINT malts_foreign_key FOREIGN KEY () REFERENCES malts() ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE malt_pairings ADD CONSTRAINT beer_foreign_key FOREIGN KEY (id_beer) REFERENCES beers(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- CHECK Constraints are not supported in Mysql (as of version 5.x)
-- But it'll parse the statements without error 

CREATE INDEX malt_pairings_id_beer_index  ON malt_pairings(id_beer);

CREATE INDEX malt_pairings_id_malt_index  ON malt_pairings(id_malt);
