/*********************************/
/*Name: Cedric-O Jean-Noel      */
/*Class: Cs 3410               */
/*Assignment:2                */


/* 2.17 */ 
SELECT 
  SKU,
  SKU_Descrription
FROM
  dbo.Cape_Codd
WHERE
  SKU_Data ='SKU, SKU_Description'
ORDER BY 
  SKU, SKU_Description;

/*  2.18 */ 

SELECT 
  SKU_Description,
  SKU
FROM
  dbo.Cape_Codd
WHERE
  INVENTORY ='SKU_Description ,SKU'
ORDER BY 
 SKU_Description , SKU ;

 /* 2.19 */ 

 SELECT 
  Warehouse_ID
FROM
  dbo.Cape_Codd
WHERE
  IVENTORY ='WarehouseID'
ORDER BY 
  WarehouseID;

  /* 2.20 */
  /* UNIQUE WAREHOUSE ID'S*/
 SELECT 
  Warehouse_ID
FROM
  dbo.Cape_Codd
WHERE
  IVENTORY ='INVENTORY_PK'
ORDER BY 
  WarehouseID;

  /* 2.21 */
  SELECT
  WarehouseID,
	SKU,
	SKU_Description ,
	QuantityOnHand,
	QuantityOnOrder
  FROM
   Cape_Codd.INVENTORY;

  /* 2.22  */ 
  SELECT *
  from dbo.INVENTORY;

  /* 2.23 */
  SELECT * 
  FROM INVENTORY 
  WHERE QuantityOnHand > 0;

  /* 2.24 */ 
  SELECT 
    SKU,
	SKU_Description
  FROM INVENTORY
  WHERE QuantityOnHand = 0;


  /* 2.25 */ 
  SELECT 
  SKU,
  SKU_Description,
  WarehouseID
  FROM INVENTORY
  WHERE QuantityOnHand =0
  ORDER BY
    WarehouseID, SKU_Description, SKU ;


	/* 2.26 */
	SELECT 
	 SKU,
  SKU_Description,
  WarehouseID
  FROM INVENTORY
  WHERE QuantityOnHand = 0 AND QuantityOnOrder > 0;
  ORDER BY
    WarehouseID, SKU_Description, SKU ;







