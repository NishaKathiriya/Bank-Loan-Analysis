# Bank Loan Analysis

## Overview

The Bank Loan Analysis project leverages SQL and Power BI to analyze loan data and provide insights into various aspects of loan performance, customer demographics, and risk factors. This project aims to assist financial institutions in making informed decisions regarding loan approvals and risk management.

## Project Objectives

- To analyze loan data to identify patterns and trends.
- To determine factors that contribute to loan approval and default.
- To provide visualizations that help in understanding loan performance and risk.
- To offer actionable insights for decision-making in loan management.

## Data Description

The dataset used in this project contains extensive information about loan applications and borrower details. The key fields included are:

### Loan ID
Loan ID is a unique identifier assigned to each loan application or loan account. It serves as a primary key for tracking and managing individual loans. Banks use Loan IDs to efficiently manage and track loans throughout their lifecycle, organize loan records, monitor repayments, and address customer inquiries.

### Address State
Address State indicates the borrower's location. It helps in assessing regional risk factors, compliance with state regulations, and estimating default probabilities. Banks utilize this information to identify regional trends in loan demand, adjust marketing strategies, and manage risk portfolios based on geographic regions.

### Employee Length
Employee Length provides insights into the borrower's employment stability. Longer employment durations may indicate greater job security. Banks consider employment length when assessing a borrower's ability to repay, as stable employment often translates to a lower default risk.

### Employee Title
Employee Title specifies the borrower's occupation or job title. It helps lenders understand the source of the borrower's income. Banks use this field to verify income sources, assess the borrower's financial capacity, and tailor loan offers to different professions.

### Grade
Grade represents a risk classification assigned to the loan based on creditworthiness. Higher grades signify lower risk. Banks use the grade to price loans and manage risk. Higher-grade loans typically receive lower interest rates and are more attractive to investors.

### Sub Grade
Sub Grade refines the risk assessment within a grade, providing additional risk differentiation. Sub Grades offer a finer level of risk assessment, helping banks tailor interest rates and lending terms to match borrower risk profiles.

### Home Ownership
Home Ownership indicates the borrower's housing status. It offers insights into financial stability. Banks use this field to assess collateral availability and borrower stability, as homeowners may have lower default rates.

### Issue Date
Issue Date marks the loan's origination date. It's crucial for loan tracking and maturity calculations. Banks use Issue Dates to track loan aging, calculate interest accruals, and manage loan portfolios.

### Last Credit Pull Date
Last Credit Pull Date records when the borrower's credit report was last accessed. It helps monitor creditworthiness. Banks use this date to track credit history updates, assess credit risk, and make informed lending decisions.

### Last Payment Date
Last Payment Date marks the most recent loan payment received. It tracks the borrower's payment history. Banks use this date to assess payment behavior, calculate delinquency, and project future payments.

### Loan Status
Loan Status indicates the current state of the loan (e.g., fully paid, current, default). It tracks loan performance. Banks use Loan Status to monitor loan health, categorize loans for risk analysis, and determine provisioning requirements.

### Next Payment Date
Next Payment Date estimates the date of the next loan payment. It assists in cash flow forecasting. Banks use this date for liquidity planning and to project revenue from loan portfolios.

### Purpose
Purpose specifies the reason for the loan (e.g., debt consolidation, education). It helps understand borrower intentions. Banks use this field to segment and customize loan offerings, aligning loan terms with borrower needs.

### Term
Term defines the duration of the loan in months. It sets the repayment period. Banks use the term to structure loan agreements, calculate interest payments, and manage loan maturities.

### Verification Status
Verification Status indicates whether the borrower's financial information has been verified. It assesses data accuracy. Banks use this field to gauge data reliability, verify income, and evaluate loan application credibility.

### Annual Income
Annual Income reflects the borrower's total yearly earnings. It assesses repayment capacity. Banks use this income figure to determine loan eligibility, calculate debt-to-income ratios, and evaluate creditworthiness.

### DTI (Debt-to-Income Ratio)
DTI measures the borrower's debt burden relative to income. It gauges the borrower's capacity to take on additional debt. Banks use DTI to assess a borrower's ability to handle loan payments and make responsible lending decisions.

### Instalment
Instalment is the fixed monthly payment amount for loan repayment, including principal and interest. Banks use this field to structure loan terms, calculate amortization schedules, and assess payment affordability.

### Interest Rate
Interest Rate represents the annual cost of borrowing expressed as a percentage. It determines the loan's cost. Banks use interest rates to price loans, manage profit margins, and attract investors.

### Loan Amount
Loan Amount is the total borrowed sum. It defines the principal amount. Banks use Loan Amount to determine loan size and structure loan agreements accordingly.

## Tools and Technologies

- **SQL**: Used for data extraction, transformation, and loading (ETL).
- **Power BI**: Utilized for creating interactive dashboards and visualizations.

## Data Analysis Process

1. **Data Extraction**: The loan data was extracted from the database using SQL queries.
2. **Data Cleaning**: The extracted data was cleaned to remove inconsistencies and missing values.
3. **Data Transformation**: The cleaned data was transformed to derive new metrics and attributes relevant to the analysis.
4. **Data Loading**: The transformed data was loaded into Power BI for visualization.
5. **Visualization**: Interactive dashboards and charts were created in Power BI to present the findings.

## Key Insights

- **Loan Approval Trends**: Analysis of the loan approval rates over different time periods and demographic groups.
- **Default Rates**: Identification of factors contributing to loan defaults.
- **Customer Segmentation**: Segmentation of customers based on income, credit score, and loan type.
- **Risk Analysis**: Assessment of risk factors associated with different loan products.

![image](https://github.com/user-attachments/assets/65c49ea8-9639-46ca-a337-9fb1c4bb1111)

![image](https://github.com/user-attachments/assets/7abebfa6-6d0e-4a6f-83dd-f27b76c4da5d)

![image](https://github.com/user-attachments/assets/f1f7bb4f-c26c-48be-9bc5-45949f415d30)

