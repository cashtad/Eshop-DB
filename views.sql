-- Список всех продуктов в категории "Electronics"
SELECT * FROM item
JOIN category cat ON item.category_category_id = cat.category_id
WHERE cat.name = 'Electronics';

CREATE VIEW ElectronicsView AS
SELECT
    item.*,
    category.name AS category_name
FROM
    item
JOIN
    category ON item.category_category_id = category.category_id
WHERE
    category.name = 'Electronics';



-- Количество товаров в каждой категории
SELECT cat.name AS 'Name', COUNT(item.item_id) AS 'Items count'
FROM category cat
JOIN item ON item.category_category_id = cat.category_id
GROUP BY cat.name;

CREATE VIEW CategoryItemsCount AS
SELECT
    cat.name AS Name,
    COUNT(item.item_id) AS "Items count"
FROM
    category cat
JOIN
    item ON item.category_category_id = cat.category_id
GROUP BY
    cat.name;


-- Список всех пользователей, несовершивших заказ
SELECT user_id, name, email
FROM user
WHERE user_id NOT IN (SELECT DISTINCT user_user_id FROM order_table);

CREATE VIEW UsersWithoutOrders AS
SELECT
    user_id,
    name,
    email
FROM
    user
WHERE
    user_id NOT IN (SELECT DISTINCT user_user_id FROM order_table);