-- Создание таблицы category
CREATE TABLE CATEGORY (
    category_id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(500)
);
 
ALTER TABLE CATEGORY ADD CONSTRAINT category_pk PRIMARY KEY (category_id);
 
-- Создание таблицы item
CREATE TABLE ITEM (
    item_id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(500),
    price INT NOT NULL,
    available CHAR(1) NOT NULL,
    category_category_id INT NOT NULL
);
 
ALTER TABLE ITEM ADD CONSTRAINT item_pk PRIMARY KEY (item_id);
 
-- Создание таблицы items_list
CREATE TABLE ITEMS_LIST (
    items_list_id INT NOT NULL,
    order_order_id INT NOT NULL,
    item_item_id INT,
    amount INT NOT NULL
);
 
ALTER TABLE ITEMS_LIST ADD CONSTRAINT items_list_pk PRIMARY KEY (items_list_id);
 
-- Создание таблицы order
CREATE TABLE ORDER_TABLE (
    order_id INT NOT NULL,
    date_creation DATE NOT NULL,
    status VARCHAR(50) NOT NULL,
    user_user_id INT,
    total_cost INT
);
 
ALTER TABLE ORDER_TABLE ADD CONSTRAINT order_pk PRIMARY KEY (order_id);
 
-- Создание таблицы review
CREATE TABLE REVIEW (
    text VARCHAR(500),
    rating SMALLINT NOT NULL,
    user_user_id INT NOT NULL,
    item_item_id INT NOT NULL
);
 
ALTER TABLE REVIEW ADD CONSTRAINT review_pk PRIMARY KEY (user_user_id, item_item_id);
 
-- Создание таблицы user
CREATE TABLE USER (
    user_id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    address VARCHAR(50) NOT NULL,
    registration_date DATE NOT NULL,
    password INT NOT NULL
);
 
ALTER TABLE USER ADD CONSTRAINT user_pk PRIMARY KEY (user_id);
 
-- Добавление внешних ключей
ALTER TABLE ITEM
    ADD CONSTRAINT item_category_fk FOREIGN KEY (category_category_id)
    REFERENCES CATEGORY (category_id);
 
ALTER TABLE ITEMS_LIST
    ADD CONSTRAINT items_list_item_fk FOREIGN KEY (item_item_id)
    REFERENCES ITEM(item_id);
 
ALTER TABLE ITEMS_LIST
    ADD CONSTRAINT items_list_order_fk FOREIGN KEY (order_order_id)
    REFERENCES ORDER_TABLE (order_id);
 
ALTER TABLE ORDER_TABLE
    ADD CONSTRAINT order_user_fk FOREIGN KEY (user_user_id)
    REFERENCES USER (user_id);
 
ALTER TABLE REVIEW
    ADD CONSTRAINT review_item_fk FOREIGN KEY (item_item_id)
    REFERENCES ITEM (item_id);
 
ALTER TABLE REVIEW
    ADD CONSTRAINT review_user_fk FOREIGN KEY (user_user_id)
    REFERENCES USER (user_id);
 
 
-- Вставка данных в таблицу user
INSERT INTO USER (user_id, name, email, address, registration_date, password) VALUES
(1, 'John Doe', 'john@example.com', '123 Main St', '2022-01-01', 123456),
(2, 'Jane Smith', 'jane@example.com', '456 Oak St', '2022-02-01', 654321),
(3, 'Bob Johnson', 'bob@example.com', '789 Pine St', '2022-03-01', 987654);
 
-- Вставка данных в таблицы
-- Вставка данных в таблицу category
INSERT INTO CATEGORY (category_id, name, description) VALUES
(1, 'Electronics', 'Electronic gadgets and devices'),
(2, 'Clothing', 'Fashion and apparel'),
(3, 'Books', 'Literary works and publications');
 
-- Вставка данных в таблицу item
INSERT INTO ITEM (item_id, name, description, price, available, category_category_id) VALUES
(1, 'Smartphone', 'Latest model with advanced features', 800, 'Y', 1),
(2, 'Laptop', 'Powerful laptop for professional use', 1200, 'Y', 1),
(3, 'T-shirt', 'Cotton T-shirt for casual wear', 20, 'Y', 2),
(4, 'Jeans', 'Classic denim jeans', 50, 'Y', 2),
(5, 'Book', 'Bestseller novel', 15, 'Y', 3);
 
-- Вставка данных в таблицу order
INSERT INTO ORDER_TABLE (order_id, date_creation, status, user_user_id, total_cost) VALUES
(1, '2023-01-01', 'Pending', 1, NULL),
(2, '2023-01-02', 'Shipped', 2, 100);
 
-- Вставка данных в таблицу items_list
INSERT INTO ITEMS_LIST (items_list_id, order_order_id, item_item_id, amount) VALUES
(1, 1, 1, 2),
(2, 1, 3, 3),
(3, 2, 2, 1);
 
-- Вставка данных в таблицу review
INSERT INTO REVIEW (text, rating, user_user_id, item_item_id) VALUES
('Great product!', 5, 1, 1),
('Fast shipping, good quality', 4, 2, 2),
('Nice book, highly recommend', 5, 3, 5);