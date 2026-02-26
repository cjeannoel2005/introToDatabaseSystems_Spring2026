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
WHERE SKU , SKU_Description, WarehouseID , WarehouseCity  WarehouseState = 'Atlanta', 'Bangor', 'chicago'
