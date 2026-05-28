# Dental & Energy Analytics Portfolio
**Amanda Thurman | Healthcare & Energy Data Analyst**

16+ years as a dental hygienist transitioning into data analytics. 
This portfolio contains SQL projects built from real clinical and 
land data experience — dental operations, revenue cycle, DSO 
compliance, and oil & gas title work.

---

## Projects

### 1. DSO Analytics — Compliance Testing
Multi-location dental DSO database tracking providers, patients, 
treatments, locations, and compliance testing. Built from scratch 
including schema design, data insertion, and analytical queries 
covering failure rate analysis, location risk classification, and 
compliance status flagging.

**Files:**
- `dso_portfolio_schema.sql` — full 12-table schema
- `dso_portfolio_queries.sql` — analytical queries

---

### 2. Treatment Analytics — Decline Reasons
Three-table database connecting providers, patient treatments, and 
decline reasons using a foreign key. Built to identify why patients 
decline treatment by procedure type and what providers should do 
differently to improve case acceptance and recover lost production.

**Files:**
- `treatment_analytics_schema.sql` — full schema, 3 tables
- `treatment_analytics_queries.sql` — decline reason analysis

---

### 3. Treatment Analytics — DSO Portfolio Database
Comprehensive 12-table dental analytics database built to simulate 
real DSO operations. Tables cover the full patient lifecycle from 
scheduling through billing and collections. Used to practice CTEs, 
multi-table JOINs, CASE WHEN logic, subqueries, and location-level 
analysis.

**Key queries built:**
- No-show rate by location using CTE and CASE WHEN
- Location production vs practice average using window functions
- Treatment acceptance vs decline by procedure category
- Provider performance scorecard with rank and average comparison
- Decline reason analysis with recommended actions

**Files:**
- `dso_portfolio_schema.sql` — full 12-table schema
- `dso_portfolio_queries.sql` — analytical queries
- `sqlserver_queries.sql` — SQL Server versions of key queries
- `treatment_analytics_queries.sql` — additional treatment analysis

---

### 4. Oil & Gas Analytics — Title Document Quality Flag
SQL Server query built against a simulated oil and gas title 
documents database. Uses CASE WHEN logic to surface chain of title 
issues including missing grantors, missing grantees, and defective 
document status — records that appear filed and complete but contain 
data quality problems that could cloud ownership.

Built from active contract work as a Land Data Analyst validating 
and extracting data from legal land documents — including original 
patents dating to the 1800s. Completed first tract of 110 documents 
6 weeks ahead of deadline.

**Files:**
- `title_document_quality_flag.sql` — chain of title quality query

---

### 5. Revenue Cycle — AR Aging Report
Identifies pending insurance claims over 30 days old using a CTE,
DATEDIFF, and CASE WHEN aging buckets (31-60, 61-90, 90+ days).
Built to surface priority collections for DSO revenue cycle teams.

**File:** `revenue_cycle_ar_aging.sql`


---

## Skills
- **SQL** — SQL Server Express, CTEs, subqueries, JOINs, CASE WHEN,
  GROUP BY, HAVING, aggregate functions, window functions
- **Excel** — pivot tables, dashboards, compliance tracking
- **Power BI** — dashboards and visuals (in progress)
- **Industries** — dental operations, DSO analytics, revenue cycle,
  oil & gas land data
- **Domain expertise** — 16+ years clinical dental experience

---

## Connect
[LinkedIn](https://linkedin.com/in/amandakate67)

*Note: All data in this portfolio is simulated for analytical 
purposes.*

