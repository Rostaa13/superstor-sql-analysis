--------------------------------------------------------------------------------
-- Superstore Sales Analysis
-- auteur : Taha Rostoume-
-- objectif : Demontrer des competences SQL pour un projet de Data Analyst et/ou Developpeur SQL
--------------------------------------------------------------------------------

-- partie 1 : creation d'une BD

create table superstore_sales (
Row_ID          NUMBER PRIMARY KEY,
Order_ID        VARCHAR2(20),
Order_Date      DATE,
Ship_Date       DATE,
Ship_Mode       VARCHAR2(50),
Customer_ID     VARCHAR2(20),
Customer_Name   VARCHAR2(100),
Segment         VARCHAR2(50),
Country         VARCHAR2(50),
City            VARCHAR2(100),
State           VARCHAR2(100),
Postal_Code     VARCHAR2(20),
Region          VARCHAR2(50),
Product_ID      VARCHAR2(30),
Category        VARCHAR2(50),
Sub_Category    VARCHAR2(50),
Product_Name    VARCHAR2(200),
Sales           NUMBER(12,2) null,
Quantity        NUMBER(5),
Discount        NUMBER(3,2) null,
Profit          NUMBER(12,4) null
);


/* partie 2 : importation des donnees via un fichier CSV
ps : attention au format des valeurs dans le fichier */


-- partie 3 : exemples de requetes 

-- 1) top 10 produits les plus vendues

SELECT * 
FROM (
    SELECT product_name,
        SUM(sales) as total_sales
    FROM superstore_sales
    GROUP BY product_name
    ORDER BY total_sales DESC
)
WHERE ROWNUM <= 10;


-- 2) Ventes totales par annee

SELECT EXTRACT( YEAR FROM order_date) as year,
       ROUND(SUM(sales), 2) as total_sales,
       ROUND(SUM(profit), 2) as total_profit
FROM superstore_sales
GROUP BY EXTRACT( YEAR FROM order_date)
ORDER BY year;

-- 3) Profit moyen par categorie 

SELECT category,
       ROUND(AVG(profit),2) as average_profit
FROM superstore_sales
GROUP BY category
ORDER BY average_profit DESC;

-- 4) Clients les plus rentables 

SELECT customer_name,
       SUM(profit) as total_profit
FROM superstore_sales
GROUP BY customer_name
ORDER BY total_profit DESC
FETCH FIRST 5 ROWS ONLY;

-- 5) Analyse par region et annee

SELECT region,
      EXTRACT(YEAR FROM order_date) as year,
      SUM(sales) as total_sales,
      SUM(profit) as total_profit
FROM superstore_sales
GROUP BY region, EXTRACT(YEAR FROM order_date)
ORDER BY region, year;

-- 6) impact des remises sur le profits

SELECT discount,
    ROUND(AVG(profit), 2) as avg_profit,
    COUNT(*) as num_orders
FROM superstore_sales
GROUP BY discount
ORDER BY discount;
    