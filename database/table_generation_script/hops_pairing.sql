CREATE TABLE hops_pairing (
			add varchar(50) NOT NULL ,
			quantity float NOT NULL ,
			id_beer integer NOT NULL ,
			id_hops integer NOT NULL 
);

-- 
ALTER TABLE hops_pairing ADD CONSTRAINT nuovo_vincolo_di_univocita PRIMARY KEY (id_beer,id_hops);

CREATE INDEX hops_pairing_add_index  ON hops_pairing(add);

CREATE INDEX hops_pairing_id_hops_index  ON hops_pairing(id_hops);

-- 
ALTER TABLE hops_pairing ADD CONSTRAINT beer_foreign_key FOREIGN KEY (add) REFERENCES beers(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- 
ALTER TABLE hops_pairing ADD CONSTRAINT hops_foreign_key FOREIGN KEY (id_hops) REFERENCES hops(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- CHECK Constraints are not supported in Mysql (as of version 5.x)
-- But it'll parse the statements without error 

CREATE INDEX hops_pairing_id_beer_index  ON hops_pairing(id_beer);

CREATE INDEX hops_pairing_id_hops_index  ON hops_pairing(id_hops);
