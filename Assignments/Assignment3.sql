/* the instruction for the homeworks can be found under the instructions folder */


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

/*2.35*/
/* The difference is that the sum calculates the total result of all the rows by adding them together
   but the count calculation show the list of all the items in the selected row
 */

/* 2.36*/
SELECT WarehouseID , SUM(QuantityOnHand)
FROM INVENTORY AS
WHERE TotalItemOnHand = SUM(TotalItemOnHand)
GROUP BY WarehouseID
ORDER BY TotalItemOnHand DESC ;

/* 2.27 */
SELECT WarehouseIS , SUM(QuantityOnHand) EXCEPT SUM(QuantityOnHand) => 3
FROM INVENTORY
GROUP BY WarehouseID
WHERE SUM(QuantityOnHand) = TotalItemOnHandLT3
ORDER BY TotalItemOnHandLT3 DESC;

/* 2.38 */
SELECT WarehouseID EXCEPT SUM(QuantityOnHand) >=2 ,
       SUM(QuantityOnHand) EXCEPT SUM(QuantityOnHand) HAVING >= 3
GROUP BY WarehouseID
WHERE SUM(QuantityOnHand) = TotalItemOnHandLT3
ORDER BY TotalItemOnHandLT3 DESC ;

/* 2.39 */
/* i would've applied the having before the where because it you filter out the variables
   first then the logic would be less confusing when it comes to renaming the variable TotalItemOnHand
 */

/* 2.40*/
SELECT SKU, SKU_Description , WarehouseID , WarehouseCity , WarehouseState
FROM INVENTORY JOIN WAREHOUSE
ON INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
WHERE SKU =  ('Atlanta') OR SKU = ('Bangor') OR SKU = ('chicago')
    AND SKU_Description =  ('Atlanta') OR SKU_Description = ('Bangor') OR SKU_Description = ('chicago')
     AND WarehouseID =  ('Atlanta') OR WarehouseID = ('Bangor') OR WarehouseID = ('chicago')
     AND WarehouseCity =  ('Atlanta') OR WarehouseCity = ('Bangor') OR WarehouseCity =('chicago')
     AND WarehouseState =  ('Atlanta') OR WarehouseState = ('Bangor') OR WarehouseState =('chicago');

/* 2.41*/
SELECT SKU, SKU_Description , WarehouseID , WarehouseCity , WarehouseState
FROM INVENTORY JOIN WAREHOUSE
ON INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
WHERE SKU IN ('Atlanta', 'Bangor', 'chicago')
    AND SKU_Description IN  ('Atlanta', 'Bangor', 'chicago')
     AND WarehouseID  IN ('Atlanta', 'Bangor', 'chicago')
     AND WarehouseCity IN ('Atlanta', 'Bangor', 'chicago')
     AND WarehouseState IN ('Atlanta', 'Bangor', 'chicago');

/* 2.42 */
SELECT SKU, SKU_Description , WarehouseID , WarehouseCity , WarehouseState
FROM INVENTORY JOIN WAREHOUSE
ON INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
WHERE SKU <>  ('Atlanta') OR SKU <> ('Bangor') OR SKU <> ('chicago')
    AND SKU_Description <>  ('Atlanta') OR SKU_Description <> ('Bangor') OR SKU_Description <> ('chicago')
     AND WarehouseID <>  ('Atlanta') OR WarehouseID <> ('Bangor') OR WarehouseID = ('chicago')
     AND WarehouseCity <>  ('Atlanta') OR WarehouseCity <> ('Bangor') OR WarehouseCity <> ('chicago')
     AND WarehouseState <>  ('Atlanta') OR WarehouseState <> ('Bangor') OR WarehouseState <> ('chicago');

/* 2.43 */
SELECT SKU, SKU_Description , WarehouseID , WarehouseCity , WarehouseState
FROM INVENTORY JOIN WAREHOUSE
ON INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
WHERE SKU NOT IN ('Atlanta', 'Bangor', 'chicago')
    AND SKU_Description NOT IN  ('Atlanta', 'Bangor', 'chicago')
     AND WarehouseID  NOT IN ('Atlanta', 'Bangor', 'chicago')
     AND WarehouseCity NOT IN ('Atlanta', 'Bangor', 'chicago')
     AND WarehouseState NOT IN ('Atlanta', 'Bangor', 'chicago');

/* 2.44 */
SELECT CONCAT(SKU_Description, 'is in a warehouse in ', WarehouseCity)
FROM INVENTORY JOIN WAREHOUSE
ON INVENTORY.SKU_Description = WAREHOUSE.WarehouseCity;

/* 2.45 */
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE INVENTORYID IN(
    SELECT WarehouseID
    FROM WAREHOUSE
    WHERE WarehouseManager ='Lucille Smith';
    )

/* 2.46 */
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY JOIN WAREHOUSE
ON INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
WHERE WAREHOUSE.WarehouseManager = 'Lucille Smith';

/*2.47*/
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
JOIN INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
AND WAREHOUSE.WarehouseManager = 'Lucille Smith';

/*2.48 */
SELECT WarehouseID , AVG(QuantityOnHand)
FROM INVENTORY
WHERE INVENTORYID IN{
SELECT WarehouseID , AVG(QuantityOnHand)
    FROM WAREHOUSE
        WHERE WarehouseManager = 'Lucille Smith'
}

/*2.49 */
SELECT WarehouseID , AVG(QuantityOnHand)
FROM INVENTORY
JOIN WAREHOUSE WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
AND INVENTORY.WarehouseManager = 'Lucille Smith';

/* 2.50 */
SELECT WarehouseID , AVG(QuantityOnHand)
FROM INVENTORY
JOIN WAREHOUSE ON INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
WHERE INVENTORY.WarehouseManager = 'Lucille Smith';
