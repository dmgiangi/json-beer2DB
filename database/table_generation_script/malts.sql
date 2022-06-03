CREATE TABLE malts (
			id integer NOT NULL ,
			name varchar(50) NOT NULL 
);

CREATE INDEX malts_id_index  ON malts(id);
ALTER TABLE malts CHANGE id id integer   NOT NULL AUTO_INCREMENT ;

-- 
ALTER TABLE malts ADD CONSTRAINT nuovo_vincolo_di_univocita PRIMARY KEY (id);

-- CHECK Constraints are not supported in Mysql (as of version 5.x)
-- But it'll parse the statements without error 

CREATE INDEX malts_id_index  ON malts(id);

CREATE INDEX malts_name_index  ON malts(name);
