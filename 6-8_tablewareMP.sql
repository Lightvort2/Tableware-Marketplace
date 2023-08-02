USE tableware_MP;

# 6. скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные таблицы);

#6.1. Определить кто больше сделал заказов (всего): мужчины или женщины.

SELECT 
	(SELECT gender FROM profiles WHERE orders.buyer_id = profiles.buyer_id) AS 'Gender',
	COUNT(id) AS Number_of_orders
FROM orders 
GROUP BY Gender
LIMIT 1;

#6.2. Определить количество заказов от пользователей младше 30 лет.

SELECT
	COUNT(id) AS Number_of_orders
FROM orders 
	WHERE buyer_id = (SELECT buyer_id FROM profiles WHERE (orders.buyer_id = profiles.buyer_id) AND (YEAR(NOW())-YEAR(birthday)) < 30)
;

#6.3. Топ-5 почтовых адресов покупателей с наибольшим количеством заказов

SELECT 
	email,
	firstname,
	lastname,
	COUNT(*) AS Orders_count
  FROM buyers b 
    JOIN orders o ON b.id = o.buyer_id
  GROUP BY b.id
  ORDER BY Orders_count DESC
  LIMIT 5;

#6.4. Количество продуктов у производителей.

SELECT 
	name,
	org_form,
	COUNT(*) AS Total_products
  FROM companies c 
    JOIN product_characteristics pc ON c.id = pc.manufacturer_id
  GROUP BY c.id
  ORDER BY Total_products DESC;
 
#6.5. Среднее количество продуктов у всех производителей.
 
 SELECT AVG(Total_products) AS Average_products
  FROM (SELECT c.name, c.org_form, COUNT(*) AS total_products
	  FROM companies c 
	    JOIN product_characteristics pc ON c.id = pc.manufacturer_id
	  GROUP BY c.id
	  ORDER BY Total_products DESC
  ) AS list;
 
#6.6. Количество продуктов на складах.

SELECT 
	name,
	COUNT(*) AS Total_products
  FROM stores s  
    JOIN products_in_stores pis ON s.id = pis.store_id
  GROUP BY s.id
  ORDER BY Total_products DESC;
  
#7. Представления
 
#7.1. Представление, которое выводит email покупателя и id его заказа.
 
DROP VIEW IF EXISTS email_order;
 CREATE VIEW email_order AS
	SELECT
		b.email AS 'Buyers email',
		o.id 
	FROM buyers b 
		LEFT JOIN orders o ON b.id = o.buyer_id
;
		
SELECT * FROM email_order;

#7.2. Представление, которое выводит id заказа и его общую стоимость.
 
DROP VIEW IF EXISTS order_summ;
 CREATE VIEW order_summ AS
	SELECT
		op.order_id,
		op.total * p.price AS 'Order total'
	FROM ordered_products op  
		LEFT JOIN products p ON op.product_id = p.id 
	GROUP BY op.order_id
;
		
SELECT * FROM order_summ;

#7.3. Представление, которое выводит email покупателя и дату его рождения

DROP VIEW IF EXISTS email_birthday;
 CREATE VIEW email_birthday AS
	SELECT
		b.email AS 'Buyers email',
		p.birthday 
	FROM buyers b 
		LEFT JOIN profiles p ON b.id = p.buyer_id
;
		
SELECT * FROM email_birthday;

#8. хранимые процедуры / триггеры;

#8.1. Создаем процедуру, которая генерирует заказ для задаваемого пользователя

DROP PROCEDURE IF EXISTS sp_add_order;
DELIMITER //
CREATE PROCEDURE sp_add_order(buyer_id INT)
BEGIN 
	INSERT INTO orders 
				(buyer_id)
			VALUES
				(buyer_id);
END//
DELIMITER ;

CALL sp_add_order(10);

#8.2. Создаем процедуру, которая будет добавлять тип продукта.

DROP PROCEDURE IF EXISTS sp_add_store;
DELIMITER //
CREATE PROCEDURE sp_add_store(sto_name VARCHAR(255))
BEGIN 
	INSERT INTO stores  
				(name)
			VALUES
				(sto_name);
END//
DELIMITER ;

CALL sp_add_store('test-store');

#8.3. Создаём таблицу с логами для фиксации создания новых заказов. И триггер, который будет заносить в неё записи.

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  table_name VARCHAR(255),
  foreighn_id BIGINT UNSIGNED NOT NULL
) ENGINE ARCHIVE;

DROP TRIGGER IF EXISTS add_log_orders;
DELIMITER //
//
CREATE TRIGGER add_log_orders AFTER INSERT ON orders
FOR EACH ROW 
BEGIN 
	IF (NEW.id) 
			THEN
				INSERT INTO logs
					(table_name, foreighn_id)
				VALUES
					('orders', NEW.id);
	END IF;
END//
DELIMITER ;

#8.4. Создаем триггер, который больше не даст добавлять склады без названия или без присвоения связи с компанией. 

DROP TRIGGER IF EXISTS not_null;
DELIMITER //
//
CREATE TRIGGER not_null BEFORE INSERT ON stores
FOR EACH ROW 
BEGIN 
	IF (ISNULL(NEW.name) OR ISNULL(NEW.company_id)) 
			THEN
				SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Сработал ТРИГГЕР! Поля "name" или "company_id" не могут быть пустыми! Добавление записи отменено';
	END IF;
END//
DELIMITER ;

# Проверяем:

CALL sp_add_store('test-3-store');

INSERT INTO stores 
				(name, company_id)
			VALUES
				(NULL, 3);
 