SELECT pt.stock_code
FROM price_today pt
INNER JOIN price_tomorrow ptom
ON pt.stock_code = ptom.stock_code
WHERE ptom.price > pt.price
ORDER BY stock_code;
