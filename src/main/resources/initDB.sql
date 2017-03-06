
CREATE DATABASE carowner
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Russian_Russia.1251'
       LC_CTYPE = 'Russian_Russia.1251'
       CONNECTION LIMIT = -1;
       
DROP TABLE IF EXISTS public.city;
DROP TABLE IF EXISTS public.owner;
DROP TABLE IF EXISTS public.car;
DROP SEQUENCE IF EXISTS global_seq;

CREATE SEQUENCE  public.global_seq START 44;

CREATE TABLE public.city
(
  id integer NOT NULL DEFAULT nextval('global_seq'::regclass),
  name character varying NOT NULL,
  CONSTRAINT city_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.city
  OWNER TO postgres;
  
  
CREATE TABLE public.owner
(
  id integer NOT NULL DEFAULT nextval('global_seq'::regclass),
  name character varying NOT NULL,
  surname character varying NOT NULL,
  patronymic character varying NOT NULL,
  id_city integer NOT NULL,
  CONSTRAINT owner_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.owner
  OWNER TO postgres;

  
CREATE TABLE public.car
(
  id integer NOT NULL DEFAULT nextval('global_seq'::regclass),
  "number" character varying NOT NULL,
  model character varying,
  id_owner integer NOT NULL,
  CONSTRAINT car_pkey PRIMARY KEY (id),
  CONSTRAINT car_id_owner_fkey FOREIGN KEY (id_owner)
      REFERENCES public.owner (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.car
  OWNER TO postgres;
  
  

CREATE TABLE public.users
(
  id integer NOT NULL,
  username character varying NOT NULL,
  password character varying NOT NULL,
  CONSTRAINT id PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.users
  OWNER TO postgres;