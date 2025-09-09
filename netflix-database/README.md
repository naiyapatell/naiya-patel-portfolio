# 🎬 Netflix Database Project  

## 📌 Overview  
This project was developed as part of **BADM 352: Database Design and Management**.  
Our team designed and implemented a **relational database system** modeled after Netflix to capture customer accounts, profiles, watch history, games, movies, and contracts with production companies.  

The goal was to practice **database modeling, MySQL implementation, and query development** to answer real-world business questions.  

---

## 🛠 Key Features  
- Designed a **12-table relational database** with primary/foreign keys and junction tables.  
- Captured key entities: Accounts, Profiles, Payments, Movies, TV Series, Games, Production Companies, and Contracts.  
- Implemented **business rules** (e.g., accounts can have multiple profiles, content linked to production companies).  
- Wrote MySQL queries to answer business questions such as:  
  - Most popular subscription plan  
  - Top-watched shows by subscription type  
  - Contracts with the highest value  
  - Average game ratings and usage trends  

---

## 💻 Technologies Used  
- **MySQL**  
- Database Design (ER Diagrams, Relational Modeling)  

---

## 📊 Example Queries  

```sql
-- Determine the most popular subscription plan
SELECT account_subscription_type, COUNT(*) AS count
FROM Account
GROUP BY account_subscription_type
ORDER BY count DESC;

-- List the production company and movie with the longest contract
SELECT pc.company_name, m.movie_name, mc.contract_end_date
FROM Movie_Contract mc
JOIN Movies m ON mc.movie_ID = m.movie_ID
JOIN Production_Company pc ON mc.company_ID = pc.company_ID
ORDER BY mc.contract_end_date DESC
LIMIT 1;
```
📄 [Read the Full Project Report (PDF)](Full Netflix Report.pdf)
