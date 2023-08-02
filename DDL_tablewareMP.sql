DROP DATABASE IF EXISTS tableware_MP;
CREATE DATABASE tableware_MP;
USE tableware_MP;

DROP TABLE IF EXISTS companies;
CREATE TABLE companies (
	id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    org_form ENUM('АО', 'ООО', 'ЗАО') COMMENT 'Организационная форма',
    ITN VARCHAR(100) COMMENT 'ИНН',
    email VARCHAR(100) UNIQUE,
    password_hash varchar(100),
    phone BIGINT,
    is_deleted bit default b'0',
    INDEX companies_name_ITN_idx(name, ITN)
);

DROP TABLE IF EXISTS buyers;
CREATE TABLE buyers (
	id SERIAL PRIMARY KEY, 
    firstname VARCHAR(100),
    lastname VARCHAR(100) COMMENT 'Фамилия',
    email VARCHAR(100) UNIQUE,
    password_hash varchar(100),
    phone BIGINT,
    is_deleted bit default b'0',
    INDEX buyers_firstname_lastname_idx(firstname, lastname)
);

DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
	buyer_id SERIAL PRIMARY KEY,
    gender CHAR(1),
    birthday DATE,
	photo_id BIGINT UNSIGNED,
    created_at DATETIME DEFAULT NOW(),
    hometown VARCHAR(100),
    
    FOREIGN KEY (buyer_id) REFERENCES buyers(id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS product_types;
CREATE TABLE product_types (
  id SERIAL PRIMARY KEY,
  name ENUM('Комплекты плоские', 'Комплекты трехпредметные', 'Комплекты 4-хпредметные', 'Вазы декоравторативные', 'Сервизы чайные', 'Сервизы кофейные', 'Сервизы столовые', 'Бокалы с блюдцем', 'Бокалы без блюдца', 'Кружки', 'Чашки с блюдцем', 'Тарелки столовые', 'Вазы для конфет и варенья', 'Вазы для фруктов и морожного', 'Кофейники', 'Розетки', 'Сахарницы', 'Сливочники', 'Сухарницы', 'Чайники доливочные', 'Чайники заварные', 'Чайницы', 'Блюда столовые', 'Вазы для салфеток', 'Масленки', 'Салатники', 'Соусники')
  COMMENT 'Название товарной категории'
);

DROP TABLE IF EXISTS sections;
CREATE TABLE sections (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела сайта маркет-плейса',
  product_section_id BIGINT UNSIGNED,
  UNIQUE unique_name(name(50)),
  
  FOREIGN KEY (product_section_id) REFERENCES product_types(id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  desription TEXT COMMENT 'Описание',
  price DECIMAL (10,2) COMMENT 'Цена',
  product_type_id BIGINT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_product_type_id (product_type_id),
  
  FOREIGN KEY (product_type_id) REFERENCES product_types(id) ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT = 'Позиции посуды';

DROP TABLE IF EXISTS product_characteristics;
CREATE TABLE product_characteristics (
  id SERIAL PRIMARY KEY,
  product_id BIGINT UNSIGNED,
  product_name VARCHAR(255),
  material ENUM('Фарфор', 'Стекло', 'Фаянс', 'Пластик', 'Металл', 'Дерево'),
  shape_name VARCHAR(255),
  decor_name VARCHAR(255),
  manufacturer_id BIGINT UNSIGNED,
  manufacturer_name VARCHAR(255),
  author_name VARCHAR(255),
  capacity_ml INT,
  diameter_mm INT,
  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  FOREIGN KEY (product_id) REFERENCES products(id) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (manufacturer_id) REFERENCES companies(id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  buyer_id BIGINT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_buyer_id(buyer_id),
  
  FOREIGN KEY (buyer_id) REFERENCES buyers(id) ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT = 'Заказы';

DROP TABLE IF EXISTS ordered_products;
CREATE TABLE ordered_products (
  id SERIAL PRIMARY KEY,
  order_id BIGINT UNSIGNED,
  product_id BIGINT UNSIGNED,
  total INT UNSIGNED DEFAULT 1 COMMENT 'Количество позиций посуды в заказе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  FOREIGN KEY (order_id) REFERENCES orders(id) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES products(id) ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT = 'Содержание заказа';

DROP TABLE IF EXISTS stores;
CREATE TABLE stores (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название склада',
  company_id BIGINT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  FOREIGN KEY (company_id) REFERENCES companies(id) ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT = 'Склады компаний-продавцов';

DROP TABLE IF EXISTS products_in_stores;
CREATE TABLE products_in_stores (
  id SERIAL PRIMARY KEY,
  store_id BIGINT UNSIGNED,
  product_id BIGINT UNSIGNED,
  value INT UNSIGNED COMMENT 'Доступный остаток товарной позиции на складе продавца',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  FOREIGN KEY (store_id) REFERENCES stores(id) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES products(id) ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT = 'Запасы на складе продавца';

DROP TABLE IF EXISTS discounts;
CREATE TABLE discounts (
  id SERIAL PRIMARY KEY,
  buyer_id BIGINT UNSIGNED,
  product_id BIGINT UNSIGNED,
  discount FLOAT UNSIGNED COMMENT 'Размер скидки в виде коэффициента в диапазоне от 0.0 до 1.0',
  started_at DATETIME,
  finished_at DATETIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_buyer_id(buyer_id),
  KEY index_of_product_id(product_id),
  
  FOREIGN KEY (buyer_id) REFERENCES buyers(id) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES products(id) ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT = 'Скидки';
