SELECT
    count(productkey)
FROM
    dimproduct_mart
GROUP BY
    productkey
HAVING
    count(productkey) > 1