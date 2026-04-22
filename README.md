# Adventure Works Data Warehouse

An end-to-end enterprise data warehouse project built on the AdventureWorks bicycle manufacturer dataset, implementing a full BI stack from schema design to interactive dashboards.

## Project Overview
- Designed and implemented a star-schema data warehouse in SQL Server
- Built 5 automated ETL pipelines using SSIS
- Created 4 analytical reports using SSRS
- Built an interactive Tableau dashboard with 4 visualizations
- Modelled a graph database in Neo4j with 7 Cypher queries

## Tech Stack
- SQL Server (SSMS) — Database design and implementation
- SSIS (SQL Server Integration Services) — ETL pipelines
- SSRS (SQL Server Reporting Services) — Analytical reports
- Neo4j — Graph database and Cypher queries
- Tableau — Interactive dashboard

## Schema Design
Star schema with 1 central fact table and 5 dimension tables:
- Fact_Sales_Data — Central fact table with sales metrics
- Dim_Customer — Customer demographics and location
- Dim_Product — Product details, category, pricing
- Dim_Reseller — Reseller information and business type
- Dim_SalesTerritory — Sales region, country, and group
- Dim_Date — Full date dimension (2017-2020)

## ETL Pipelines (SSIS)
5 SSIS packages automating data extraction, transformation and loading:
- Dim_Customer.dtsx
- Dim_Product.dtsx
- Dim_Reseller.dtsx
- Dim_SalesTerritory.dtsx
- Fact_Sales.dtsx

## SSRS Reports
4 analytical reports built in SQL Server Reporting Services:
1. Sales Data Report — Year, category, subcategory breakdown
2. Ratio of Product Category — Donut chart (Bikes 84.62%, Components 12.82%)
3. Product Category Sales Report — Bar chart by category
4. Month-wise Sales Report — Line chart tracking monthly revenue trends

## Neo4j Graph Database
Graph model with 5 node types (Customer, Product, Sales, Date, SalesTerritory) and 5 relationship types (SHIPPED_TO, CONTAINS_PRODUCT, ORDERED_ON, PURCHASED_BY, SOLD_BY).

7 Cypher queries including:
- Products sold by sales territory and region
- Fiscal year product analysis
- Top 5 most expensive products
- Top 4 products by extended sales amount
- Total customer count (18,485 customers)

## Tableau Dashboard
Interactive dashboard with 4 visualizations:
- Sales by Customer State (geographic map)
- Sales Trend by Year (2017-2020, growth from $12M to $34M)
- Sales by Sales Region (bar chart across 9 regions)
- Sales Ratio by Product Category (Bikes dominate at 84.62%)

## Key Findings
- Bikes account for 84.62% of total sales revenue
- Sales grew from $12M in 2017 to $34M in 2019
- Southwest region leads in sales volume
- 18,485 total customers in the database