/**************************/
/* Name : Cedric-O jean-Noel*/
/*Class :: CS 3410 */
/* Term: Spring 2025 */
/* Assignment #: 3 */

/*2.28 */
SELECT SKU, SKU_Description , WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0 AND QuantityOnOrder = 0
ORDER BY WarehouseID;

/*2.29*/
SELECT SKU , SKU_Description , WarehouseID , QuantityOnHand
FROM INVENTORY
WHERE QuantityOnHand > 1 AND QuantityOnHand < 10 ;

/*2.30 */
SELECT SKU, SKU_Description , WarehouseID, QuantityOnHand
FROM INVENTORY
WHERE QuantityOnHand BETWEEN 1 AND 10;

/*2.31 */
SELECT DISTINCT SKU , SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE 'Half-Dome';

/* 2.32 */
SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE 'Climb'

/*2.33*/
SELECT SKU, SKU_Description
SELECT 'd' AS third_letter,
COUNT(DISTINCT SKU_Description) AS distinctWord3
FROM INVENTORY
WHERE SKU_Description LIKE '__d@'

/*2.34*/
SELECT 