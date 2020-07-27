CREATE DATABASE logistikGudang;
USE logistikGudang;

CREATE TABLE location (
    id VARCHAR(36) NOT NULL PRIMARY KEY ,
	location_name VARCHAR(100) NOT NULL
);

CREATE TABLE type (
    id VARCHAR(36) NOT NULL PRIMARY KEY ,
    type_name VARCHAR(20) NOT NULL
);

CREATE TABLE warehouse (
    id VARCHAR(36) NOT NULL PRIMARY KEY ,
    warehouse_name VARCHAR(50) NOT NULL ,
    type_id VARCHAR(36) NOT NULL ,
    location_id varchar(36) NOT NULL ,
    capacity INT NOT NULL ,
    status_del INT DEFAULT 0
);

CREATE TABLE goods (
    id VARCHAR(36) NOT NULL PRIMARY KEY ,
    goods_name VARCHAR(50) NOT NULL ,
    type_id VARCHAR(36) NOT NULL ,
    status_del INT DEFAULT 0
);

CREATE TABLE warehouse_detail (
    warehouse_id VARCHAR(36) NOT NULL,
    goods_id VARCHAR(36) NOT NULL ,
    quantity INT DEFAULT 1 ,
    status_del INT DEFAULT 0
);

INSERT INTO location
VALUES ('9fb41905-bff4-11ea-8207-1c3e84e5e819', 'Bandung'),
	   ('9fb422b9-bff4-11ea-8207-1c3e84e5e819', 'Jakarta');

INSERT INTO type
VALUES ('a1a6f66e-bff4-11ea-8207-1c3e84e5e819', 'Frozen'),
	   ('a1a6f930-bff4-11ea-8207-1c3e84e5e819', 'Dry');

INSERT INTO warehouse
VALUES ('05526b9c-bff5-11ea-8207-1c3e84e5e819', 'Gudang Frozen', 'a1a6f66e-bff4-11ea-8207-1c3e84e5e819', '9fb422b9-bff4-11ea-8207-1c3e84e5e819', 3, 0),
	   ('05526fd0-bff5-11ea-8207-1c3e84e5e819', 'Gudang Dry', 'a1a6f930-bff4-11ea-8207-1c3e84e5e819', '9fb41905-bff4-11ea-8207-1c3e84e5e819', 2, 0);

INSERT INTO goods
VALUES ('98118e20-bff5-11ea-8207-1c3e84e5e819', 'Daging Sapi', 'a1a6f66e-bff4-11ea-8207-1c3e84e5e819', 0),
	   ('9811950d-bff5-11ea-8207-1c3e84e5e819', 'Daging Ayam', 'a1a6f66e-bff4-11ea-8207-1c3e84e5e819', 0),
	   ('981196aa-bff5-11ea-8207-1c3e84e5e819', 'Meja Kayu', 'a1a6f930-bff4-11ea-8207-1c3e84e5e819', 0),
	   ('9811974d-bff5-11ea-8207-1c3e84e5e819', 'Kursi Besi', 'a1a6f930-bff4-11ea-8207-1c3e84e5e819', 0);

INSERT INTO warehouse_detail
VALUES ('05526b9c-bff5-11ea-8207-1c3e84e5e819', '98118e20-bff5-11ea-8207-1c3e84e5e819', 1, 0),
	   ('05526b9c-bff5-11ea-8207-1c3e84e5e819', '9811950d-bff5-11ea-8207-1c3e84e5e819', 2, 0),
	   ('05526fd0-bff5-11ea-8207-1c3e84e5e819', '981196aa-bff5-11ea-8207-1c3e84e5e819', 1, 0),
	   ('05526fd0-bff5-11ea-8207-1c3e84e5e819', '9811974d-bff5-11ea-8207-1c3e84e5e819', 1, 0);
