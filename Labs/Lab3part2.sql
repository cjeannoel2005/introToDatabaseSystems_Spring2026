/******************************/
/* Namwe : Cedric-O Jean-Noel */
/* Class: CS 3410 */
/* Term : Spring 2021 */
/* Lab #: 2 part 2 */

/* 1) List the name of all products for which an order was placed.*/
 SELECT cid, ordno
 FROM PRODUCTS JOIN ORDERS
 ON PRODUCTS.cid = ORDERS.ordno;

/*2) List the name of customers that ordered product ‘p07’.*/
SELECT cname , pid
FROM CUSTOMERS JOIN PRODUCTS
ON CUSTOMERS.cid = PRODUCTS.pid;

/* 3) List name of agents that placed an order for customer c003 or customer c006.*/
SELECT aname, cid
FROM AGENTS JOIN CUSTOMERS
ON AGENTS.aname = CUSTOMERS.cid;

/* 4) List name of customers that ordered product ‘p01’ through agent 'a01'.*/
SELECT cname
FROM CUSTOMERS
UNION
SELECT pid
FROM PRODUCTS Quantity BETWEEN  p01 AND a01;

/* 5) List the name of each customer that placed an order, the pid of what they ordered.*/
SELECT cid, pid
FROM ORDERS;

/*6) List the name of each customer that placed an order and the product name for each product they
ordered. */
SELECT cid, pid
FROM CUSTOMERS JOIN PRODUCT
    UNION
FROM PRODUCTS JOIN ORDERS
ON CUSTOMERS.cid = PRODUCTS.pid
ON PRODUCTS.pid = ORDERS.pid;

/* 7) List the name of each customer and the total amount ordered by the customers and also list the
customers that did not place an order. */
    SELECT aname
    FROM CUSTOMERS
    UNION
           SELECT SUM(qty)
     CUSTOMERS FULL OUTER JOIN ORDERS




/* 8) List the name and the sum of dollars for each customer that ordered more than $1,000.*/
SELECT cname , SUM(dollars)
FROM CUSTOMERS JOIN ORDERS
GROUP BY CUSTOMERS
HAVING MIN(dollars) > 1000 ;

/* 9) List the agent name, product name and customer name for each product ordered.*/
SELECT aname, pid , cid ,cname
 FROM AGENTS JOIN PRODUCTS
     UNION
  FROM PRODUCTS JOINS CUSTOMERS
  UNION
   FROM CUSTOMERS JOIN ORDERS
ON AGENTS.aname = PRODUCTS.pid
ON PRODUCTS.pid = CUSTOMERS.cid
ON CUSTOMERS.cid = ODERS
GROUP BY PRODUCTS;

/* 10) What would be the result of the following SQL Statement:*/
SELECT *
From CUSTOMERS, PRODUCTS
/* it will show  the attributes of both and show the which product are in the same city as the customers */