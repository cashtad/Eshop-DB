START TRANSACTION;
SAVEPOINT SAVE;

SET @user_id = 666;

INSERT INTO user (user_id, name, email, address, registration_date, password) VALUES
(@user_id, 'Den Denov', 'den@example.com', '66 Second St', "2023-12-18", 123456);

SET @order_id = 666;

INSERT INTO order_table (order_id, date_creation, status, user_user_id, total_cost) VALUES
(@order_id, "2023-12-19", 'Pending', @user_id, NULL);

INSERT INTO items_list (items_list_id, order_order_id, item_item_id, amount) VALUES
(111, @order_id, 1, 2),
(222, @order_id, 4, 1);



SET @total_price = (
    SELECT SUM(item.price * items_list.amount)
    FROM item
    JOIN items_list ON items_list.item_item_id = item.item_id
    WHERE items_list.order_order_id = @order_id
);

UPDATE order_table 
SET total_cost = @total_price
WHERE order_table.order_id = @order_id;

SELECT * 
FROM order_table ord
WHERE ord.order_id = @order_id;

ROLLBACK TO SAVE;


START TRANSACTION;
SAVEPOINT SAVE;

SELECT item_id, name, description, price, available FROM item ORDER BY price DESC;

UPDATE item SET price = price - 250 WHERE item_id = 2;

UPDATE item SET price = price + 200 WHERE item_id = 1;

SELECT item_id, name, description, price, available FROM item ORDER BY price DESC;

ROLLBACK TO SAVE;