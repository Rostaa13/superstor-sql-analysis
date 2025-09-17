# 📊 Superstore Sales Analysis (Oracle SQL)

![GitHub last commit](https://img.shields.io/github/last-commit/USERNAME/superstore-sql-analysis)
![GitHub repo size](https://img.shields.io/github/repo-size/USERNAME/superstore-sql-analysis)
![GitHub stars](https://img.shields.io/github/stars/USERNAME/superstore-sql-analysis?style=social)

## 📝 Description
Ce projet utilise le **Superstore Sales Dataset** pour analyser les ventes, les profits et les comportements clients.  
Il démontre des compétences en :  
- **SQL (Oracle Database 12c)** : création de tables, import de données, requêtes analytiques.  
- **PL/SQL** : procédures, fonctions et triggers *(à venir)*.  
- **Data Analysis** : mise en évidence d’insights sur les ventes, clients et remises.  
- **BI (Power BI)** : création d’un tableau de bord interactif *(à venir)*.

---

## 📂 Structure du projet
superstore-sql-analysis/
│── README.md # Documentation du projet
│── superstore_sales.sql # Script de création de la table Oracle et requêtes SQL analytiques
│── dataset/ # Fichier CSV (optionnel, si licence autorise)
│── plsql/ # Scripts PL/SQL (à venir)
│── dashboard/ # Captures d’écran Power BI (à venir )

---

## 🏗️ Modélisation de la base
```sql
CREATE TABLE superstore_sales (
    row_id         NUMBER PRIMARY KEY,
    order_id       VARCHAR2(20) NULL,
    order_date     DATE NULL,
    ship_date      DATE NULL,
    ship_mode      VARCHAR2(50) NULL,
    customer_id    VARCHAR2(20) NULL,
    customer_name  VARCHAR2(100) NULL,
    segment        VARCHAR2(50) NULL,
    country        VARCHAR2(50) NULL,
    city           VARCHAR2(100) NULL,
    state          VARCHAR2(100) NULL,
    postal_code    VARCHAR2(20) NULL,
    region         VARCHAR2(50) NULL,
    product_id     VARCHAR2(30) NULL,
    category       VARCHAR2(50) NULL,
    sub_category   VARCHAR2(50) NULL,
    product_name   VARCHAR2(200) NULL,
    sales          NUMBER(12,2) NULL,
    quantity       NUMBER(5) NULL,
    discount       NUMBER(3,2) NULL,
    profit         NUMBER(12,4) NULL
);
```

## 📊 Analyses SQL incluses

- Ventes totales par année

- Top 10 produits les plus vendus

- Clients les plus rentables

- Profit moyen par catégorie

- Analyse par région et année

- Impact des remises sur le profit

Toutes les requêtes sont disponibles dans superstore_sales.sql.


## 📈 Insights principaux

- Les fortes remises (> 50%) entraînent souvent des pertes.

- Les segments Corporate et Home Office sont plus profitables que Consumer.

- Les régions West et East génèrent le plus de ventes.

- Quelques clients et produits génèrent une grande partie du chiffre d’affaires.

## 🚀 Améliorations futures

- Ajout de procédures PL/SQL pour automatiser les rapports mensuels.

- Création de triggers pour suivre les mises à jour de prix et remises.

- Développement d’un dashboard Power BI connecté à Oracle.

## 👨‍💻 Auteur
👤 Taha Rostoume
🎯 SQL Developer junior | PL/SQL Developer junior | Data Analyst Junior
🔗 LinkedIn : https://www.linkedin.com/in/taha-rostoume
