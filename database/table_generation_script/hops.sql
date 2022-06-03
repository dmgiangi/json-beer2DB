CREATE TABLE hops (
			id integer NOT NULL ,
			name varchar(50) NOT NULL ,
			attribute varchar(50) NOT NULL 
);

CREATE INDEX hops_id_index  ON hops(id);
ALTER TABLE hops CHANGE id id integer   NOT NULL AUTO_INCREMENT ;

-- CHECK Constraints are not supported in Mysql (as of version 5.x)
-- But it'll parse the statements without error 

CREATE INDEX hops_id_index  ON hops(id);

CREATE INDEX hops_name_index  ON hops(name);
