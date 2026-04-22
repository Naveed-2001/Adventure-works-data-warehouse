// ============================================
// AdventureWorks Graph Database
// Author: Naveed Ahmed
// Description: Neo4j Cypher queries for
// customer-product-sales relationship analysis
// ============================================

// ============================================
// QUERY 1 — Products sold in North America
// Returns product key, name and category
// for sales territories in US, Canada, Mexico
// ============================================
MATCH (st:SalesTerritory)-[:SHIPPED_TO]->(s:Sales)-[:CONTAINS_PRODUCT]->(p:Product)
WHERE st.Country IN ["United States", "Canada", "Mexico"]
RETURN DISTINCT p.ProductKey, p.Product, p.Category
ORDER BY p.Product;

// ============================================
// QUERY 2 — Products shipped to Europe
// Germany, France, UK, Italy, Spain
// ============================================
MATCH (st:SalesTerritory)-[:SHIPPED_TO]->(s:Sales)-[:CONTAINS_PRODUCT]->(p:Product)
WHERE st.Country IN ["Germany", "France", "United Kingdom", "Italy", "Spain"]
RETURN DISTINCT p.ProductKey, p.Product;

// ============================================
// QUERY 3 — Products sold in fiscal year 2018
// ============================================
MATCH (d:Date)<-[:ORDERED_ON]-(s:Sales)-[:CONTAINS_PRODUCT]->(p:Product)
WHERE d.FiscalYear = "FY2018"
RETURN DISTINCT p.ProductKey, p.Product
ORDER BY p.Product;

// ============================================
// QUERY 4 — Total number of customers
// ============================================
MATCH (c:Customer)
RETURN COUNT(c) AS NumberOfCustomers;

// ============================================
// QUERY 5 — Top 5 most expensive products
// Ranked by list price descending
// ============================================
MATCH (p:Product)
RETURN p.Product AS Product, p.ListPrice AS ListPrice
ORDER BY p.ListPrice DESC
LIMIT 5;

// ============================================
// QUERY 6 — Top 4 products by extended sales amount
// ============================================
MATCH (s:Sales)-[:CONTAINS_PRODUCT]->(p:Product)
RETURN p.Product AS Product, s.ExtendedAmount AS ExtendedAmount
ORDER BY s.ExtendedAmount DESC
LIMIT 4;

// ============================================
// QUERY 7 — Sample of 25 sales transactions
// with their sales territories
// ============================================
MATCH (sale:Sales)-[:SHIPPED_TO]->(territory:SalesTerritory)
RETURN sale, territory
LIMIT 25;