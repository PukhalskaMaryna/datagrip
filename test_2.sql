-- за таблиці клієнтів відбери всі клієнти, які мають більше 2 замовлень
SELECT c.*
FROM clients c
JOIN orders o ON c.id = o.client_id
GROUP BY c.id
HAVING COUNT(o.id) > 2;