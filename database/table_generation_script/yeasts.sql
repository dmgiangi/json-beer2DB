CREATE TABLE yeasts (
			id integer NOT NULL ,
			name varchar(100) NOT NULL 
);

CREATE INDEX yeasts_id_index  ON yeasts(id);
ALTER TABLE yeasts CHANGE id id integer   NOT NULL AUTO_INCREMENT ;

-- 
ALTER TABLE yeasts ADD CONSTRAINT nuovo_vincolo_di_univocita PRIMARY KEY ();

-- CHECK Constraints are not supported in Mysql (as of version 5.x)
-- But it'll parse the statements without error 

CREATE INDEX yeasts_id_index  ON yeasts(id);

CREATE INDEX yeasts_name_index  ON yeasts(name);
