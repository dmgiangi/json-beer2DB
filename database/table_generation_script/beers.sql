CREATE TABLE beers (
			id integer NOT NULL ,
			name varchar(100) NOT NULL ,
			tagline char(255),
			first_brewed date NOT NULL ,
			abv float NOT NULL ,
			ibu float NOT NULL ,
			description varchar(1000) NOT NULL ,
			image_url varchar(1000) NOT NULL ,
			target_fg float NOT NULL ,
			target_og float NOT NULL ,
			ebc float NOT NULL ,
			srm float NOT NULL ,
			ph float NOT NULL ,
			attenuation_level float NOT NULL ,
			volume integer NOT NULL ,
			boil_volume integer NOT NULL ,
			fermentation_temperature integer NOT NULL ,
			twist varchar(255),
			brewers_tips varchar(1000) NOT NULL ,
			contributed_by varchar(255) NOT NULL ,
			yeast_id integer NOT NULL 
);

CREATE INDEX beers_id_index  ON beers(id);
ALTER TABLE beers CHANGE id id integer   NOT NULL AUTO_INCREMENT ;

-- 
ALTER TABLE beers ADD CONSTRAINT nuovo_vincolo_di_univocita PRIMARY KEY (id);

CREATE INDEX beers_yeast_id_index  ON beers(yeast_id);

-- 
ALTER TABLE beers ADD CONSTRAINT yeast_foreign_key FOREIGN KEY (yeast_id) REFERENCES yeasts(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

-- CHECK Constraints are not supported in Mysql (as of version 5.x)
-- But it'll parse the statements without error 

CREATE INDEX beers_id_index  ON beers(id);

CREATE INDEX beers_name_index  ON beers(name);
ALTER TABLE beers ADD CONSTRAINT  FOREIGN KEY () REFERENCES yeasts ();
