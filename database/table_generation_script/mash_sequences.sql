CREATE TABLE mash_sequences (
			id_mash integer NOT NULL ,
			id_beer integer NOT NULL 
);

-- 
ALTER TABLE mash_sequences ADD CONSTRAINT nuovo_vincolo_di_univocita PRIMARY KEY (id_mash,id_beer);

CREATE INDEX mash_sequences_id_mash_index  ON mash_sequences(id_mash);

CREATE INDEX mash_sequences_id_beer_index  ON mash_sequences(id_beer);

-- 
ALTER TABLE mash_sequences ADD CONSTRAINT mash_foreign_key FOREIGN KEY (id_mash) REFERENCES mash_subsequences(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE mash_sequences ADD CONSTRAINT beers_foreign_key FOREIGN KEY (id_beer) REFERENCES beers(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- CHECK Constraints are not supported in Mysql (as of version 5.x)
-- But it'll parse the statements without error 

CREATE INDEX mash_sequences_id_mash_index  ON mash_sequences(id_mash);

CREATE INDEX mash_sequences_id_beer_index  ON mash_sequences(id_beer);
