CREATE TABLE foods (
			id integer NOT NULL ,
			name varchar(255) NOT NULL 
);

CREATE INDEX foods_id_index  ON foods(id);
ALTER TABLE foods CHANGE id id integer   NOT NULL AUTO_INCREMENT ;

-- 
ALTER TABLE foods ADD CONSTRAINT nuovo_vincolo_di_univocita PRIMARY KEY (id);

-- CHECK Constraints are not supported in Mysql (as of version 5.x)
-- But it'll parse the statements without error 

CREATE INDEX foods_id_index  ON foods(id);

CREATE INDEX foods_name_index  ON foods(name);
