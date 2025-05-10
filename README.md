# ⚽ Soccer Match Management System

A comprehensive database system for managing soccer teams, players, matches, and results with advanced SQL queries and views.<br />
***Developed by**: Fiona Ang, Smriti Kohli, Christopher O'connell*

## 💡 Learning Outcomes
This project demonstrates:
1. Complex SQL query construction
2. Database design principles
3. Multi-table joins and aggregations
4. View creation for data abstraction
5. Constraint implementation (CHECK, FOREIGN KEY)

## ✨ Key Features
- **Complete Team Management**: Track teams, coaches, and player positions
- **Match Tracking**: Record match dates, participants, and results
- **Advanced Analytics**: Views for coach-specific teams and player position analysis
- **Data Integrity**: Enforced through constraints and relationships

## 📊 Database Structure
### Core Tables

| Table     | Description                          | Key Columns                     |
|-----------|--------------------------------------|---------------------------------|
| Teams     | Team names and coaches               | ID, Name, Coach_Name           |
| Position  | Player positions (roles)             | ID, Name                       |
| Players   | Player details with positions        | ID, Name, Position_ID, Team_ID |
| Matches   | Scheduled matches between teams      | ID, Match_Date, Team_1_ID, Team_2_ID |
| Results   | Match outcomes and scores            | Match_ID, Score_Team_1, Score_Team_2, Winner_Team_ID |

### Relationships
- Teams (1) → (M) Players
- Teams (1) → (M) Matches (as Team_1 or Team_2)
- Position (1) → (M) Players
- Matches (1) → (1) Results


## 🚀 Getting Started
1. Clone this repository
2. Execute the DDL statements to create tables
3. Load the sample data
4. Explore the example queries

```bash
psql -U your_username -d your_dbname -a -f ddl.sql
psql -U your_username -d your_dbname -a -f data.sql
```
