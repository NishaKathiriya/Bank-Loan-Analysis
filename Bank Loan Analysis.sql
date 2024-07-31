select * from bank_loan_data

select count(id) as Total_Loan_Applications from bank_loan_data

select count(id) as MTD_Total_Loan_Applications from bank_loan_data
where MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

select count(id) as PMTD_Total_Loan_Applications from bank_loan_data
where MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

SELECT SUM(loan_amount) as total_funded_amount from bank_loan_data

SELECT SUM(loan_amount) as MTD_total_funded_amount from bank_loan_data
where MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021 

SELECT SUM(loan_amount) as PMTD_total_funded_amount from bank_loan_data
where MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021 

SELECT SUM(total_payment) as total_amount_received from bank_loan_data

SELECT SUM(total_payment) as MTD_Total_Amount_Received from bank_loan_data
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021

SELECT SUM(total_payment) as PMTD_Total_Amount_Received from bank_loan_data
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021

select ROUND(AVG(int_rate),4)*100 as Avg_Interest_Rate from bank_loan_data

select ROUND(AVG(int_rate),4)*100 as MTD_Avg_Interest_Rate from bank_loan_data
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021

select ROUND(AVG(int_rate),4)*100 as PMTD_Avg_Interest_Rate from bank_loan_data
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021

SELECT ROUND(AVG(dti),4) * 100 as Avg_DTI from bank_loan_data

SELECT ROUND(AVG(dti),4) * 100 as MTD_Avg_DTI from bank_loan_data
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021

SELECT ROUND(AVG(dti),4) * 100 as PMTD_Avg_DTI from bank_loan_data
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021

SELECT loan_status from bank_loan_data

--Good Loan Application Percentage
SELECT 
	(COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END)*100)
	/
	count(id) as Good_Loan_percentage
from bank_loan_data

--Good Loan Applications

select COUNT(id) as Good_Loan_Applications from bank_loan_data
where loan_status= 'Fully Paid' or loan_status= 'Current'

--Good Loan Funded Amount
select SUM(loan_amount) as Good_Loan_Funded_Amount from bank_loan_data
where loan_status= 'Fully Paid' or loan_status= 'Current'

--Good Loan Received Amount
select SUM(total_payment) as Good_Loan_Recieved_Amount from bank_loan_data
where loan_status= 'Fully Paid' or loan_status= 'Current'

--Bad Loan Application Percentage
SELECT 
	(COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END)*100.0)
	/
	count(id) as Bad_Loan_percentage
from bank_loan_data

--Bad Loan Applications

select COUNT(id) as Bad_Loan_Applications from bank_loan_data
where loan_status= 'Charged Off'

--Bad Loan Funded Amount
select SUM(loan_amount) as Bad_Loan_Funded_Amount from bank_loan_data
where loan_status= 'Charged Off'

--Bad Loan Received Amount
select SUM(total_payment) as Bad_Loan_Recieved_Amount from bank_loan_data
where loan_status= 'Charged Off'

--Loan Status Grid View

select 
	 loan_status,
	 count(id) As Total_Loan_Applications,
	 sum(total_payment) as Toatal_Amont_Received,
	 sum(loan_amount) as Total_Funded_Amount,
	 avg(int_rate * 100) as Interest_Rate,
	 avg(dti * 100) as DTI
  from 
		bank_loan_data
  GROUP BY
		loan_status


select 
	loan_status, 
	SUM(total_payment) as MTD_Total_Amount_Received,
	SUM(loan_amount) as MTD_Total_Funded_amount
from bank_loan_data
where MONTH(issue_date) = 12 
Group By loan_status

--Monthly trend by issue date
select 
	MONTH(issue_date) as Month_NUmber,
	DATENAME(MONTH, issue_date) AS Month_Name,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_amount,
	SUM(total_payment) as Total_Received_Amount
From bank_loan_data
GROUP BY MONTH(issue_date),DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)

--regional analysis by state
select 
	address_state,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_amount,
	SUM(total_payment) as Total_Received_Amount
From bank_loan_data
GROUP BY address_state
ORDER BY SUM(loan_amount) desc

--loan term analysis
select 
	term,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_amount,
	SUM(total_payment) as Total_Received_Amount
From bank_loan_data
GROUP BY term
ORDER BY term

--Employee length analysis
select 
	emp_length,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_amount,
	SUM(total_payment) as Total_Received_Amount
From bank_loan_data
GROUP BY emp_length
ORDER BY COUNT(id) desc

--loan purpose breakdown
select 
	purpose,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_amount,
	SUM(total_payment) as Total_Received_Amount
From bank_loan_data
GROUP BY purpose
ORDER BY COUNT(id) desc


--Home Ownership Analysis
select 
	home_ownership,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_amount,
	SUM(total_payment) as Total_Received_Amount
From bank_loan_data
where grade='A' AND address_state= 'CA' 
GROUP BY home_ownership
ORDER BY COUNT(id) desc



