# Multi-Source ETL Pipeline: Excel, REST API and SQL Server (SSIS)

An SSIS ETL pipeline that consolidates data from multiple Excel files and an external REST API into a SQL Server data warehouse, with a Fact table, automated data profiling, retry logic and email notifications.

## Overview

Sales data arrives from two kinds of sources: Excel files and a REST API. This project extracts both, loads them into SQL Server, and produces a clean Fact table ready for reporting. The package is built to run unattended: it retries failed steps and emails the result of every run.

## Features

- **Multi-source extraction:** multiple Excel files plus an external REST API
- **Fact table:** consolidated sales fact table in the SQL Server warehouse
- **Data profiling:** automated Data Profiling task to check source data quality before loading
- **Retry logic:** failed steps are retried automatically before the run is marked failed
- **Notifications:** success and failure email notifications for every run

## Tech Stack

| Area | Tool |
| --- | --- |
| ETL | SQL Server Integration Services (SSIS) |
| Database | SQL Server, T-SQL |
| Sources | Excel files, REST API |
| IDE | Visual Studio (SSDT), SSMS |

## Architecture

```text
Excel files ──┐
              ├──> SSIS package ──> Staging ──> Fact table (SQL Server)
REST API ─────┘        │
                       ├── Data Profiling
                       ├── Retry logic
                       └── Email notification (success / failure)
```

> Add a screenshot of the Control Flow and Data Flow here, for example `docs/control-flow.png`.

## Pipeline Steps

1. Read each Excel file and call the REST API to extract raw data.
2. Run the Data Profiling task to check nulls, types and value distribution.
3. Load the data into staging tables in SQL Server.
4. Transform and load the consolidated Fact table.
5. Send a success or failure email with the run result.

## Project Structure

```text
.
├── SSIS-Package/        # SSIS solution (.sln, .dtsx)
├── SQL/                 # table creation and T-SQL scripts
├── Sample-Data/         # sample Excel files
└── docs/                # screenshots and diagrams
```

> Update this tree to match your actual folders.

## How to Run

1. Open the solution in Visual Studio with SSIS (SSDT) installed.
2. Run the scripts in `SQL/` to create the database and tables.
3. Set the connection managers (SQL Server, Excel path, API URL, SMTP) to your environment.
4. Run the package from Visual Studio, or deploy it to the SSISDB catalog and schedule it with SQL Server Agent.

## What I Learned

- Combining file and API sources in one SSIS package
- Using the Data Profiling task to catch data quality problems early
- Building reliable pipelines with retries and run notifications

## Author

**Yusuf Kamal**  
[LinkedIn](https://linkedin.com/in/yusuf-kamal) | [GitHub](https://github.com/yusuf-kamal) | [Portfolio](https://yusuf-kamal.github.io/Portfolio)
