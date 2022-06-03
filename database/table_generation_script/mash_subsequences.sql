CREATE TABLE mash_subsequences (
			id integer NOT NULL ,
			temperature integer NOT NULL ,
			duration integer NOT NULL 
);

CREATE INDEX mash_subsequences_id_index  ON mash_subsequences(id);
ALTER TABLE mash_subsequences CHANGE id id integer   NOT NULL AUTO_INCREMENT ;

-- 
ALTER TABLE mash_subsequences ADD CONSTRAINT nuovo_vincolo_di_univocita PRIMARY KEY (id);

-- CHECK Constraints are not supported in Mysql (as of version 5.x)
-- But it'll parse the statements without error 

CREATE INDEX mash_subsequences_id_index  ON mash_subsequences(id);
