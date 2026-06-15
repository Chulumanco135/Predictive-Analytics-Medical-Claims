# Predictive Analytics for Medical Scheme Claims Processing

## Project Overview

This project investigates factors influencing delayed healthcare claim payments within South Africa's private healthcare sector using predictive analytics and machine learning techniques.

The study utilizes healthcare claims data from LA Health to identify operational, financial, demographic, and clinical factors associated with claim processing delays. The objective is to support healthcare providers, medical bureaus, and policymakers with data-driven insights that can improve claims management efficiency and reduce payment delays.

## Business Problem

Healthcare providers rely on timely claim reimbursements from medical schemes. However, administrative inefficiencies, claim verification procedures, coding complexity, and financial factors often contribute to payment delays.

This project applies predictive modelling to:

* Predict delayed healthcare claims
* Identify key factors contributing to delays
* Improve operational decision-making
* Support proactive claims management

## Tools & Technologies

* R Programming
* SAS Enterprise Miner
* Microsoft Excel
* Power BI
* CRISP-DM Framework

## Methodology

The project follows the CRISP-DM methodology:

1. Business Understanding
2. Data Understanding
3. Data Preparation
4. Exploratory Data Analysis
5. Predictive Modelling
6. Model Evaluation

## Data Preparation

Key preprocessing activities included:

* Missing value treatment
* Duplicate removal
* Data standardization
* Feature engineering
* Creation of ProcessingDays variable
* Creation of DelayStatus target variable

## Exploratory Data Analysis

Analysis included:

* Descriptive statistics
* Delay status distribution
* Processing days histogram
* Correlation analysis
* Financial trend analysis
* Scatterplot visualizations

## Models Developed

### Full Logistic Regression

Used all available predictor variables to estimate the probability of delayed claims.

### Stepwise Logistic Regression

Applied automatic variable selection to identify the most significant predictors.

### Decision Tree

Developed using Gini splitting criterion to generate business-friendly decision rules.

## Model Performance

| Model                        | Validation AUC | Validation Gini | Misclassification Rate |
| ---------------------------- | -------------- | --------------- | ---------------------- |
| Decision Tree                | 0.82           | 0.63            | 0.175                  |
| Logistic Regression          | 0.85           | 0.71            | 0.167                  |
| Stepwise Logistic Regression | 0.85           | 0.71            | 0.159                  |

The Stepwise Logistic Regression model achieved the strongest overall performance and was selected as the final model.

## Key Findings

The strongest predictors of delayed healthcare claims were:

* ICD-10 Diagnosis Categories
* Medical Specialties
* Service Centres
* Total Outstanding Amount
* Total Turnover
* PMB Status
* Contracted Status

## Business Impact

The findings demonstrate how predictive analytics can:

* Identify high-risk claims before submission
* Reduce claim processing delays
* Improve reimbursement efficiency
* Support proactive healthcare claims management
* Enhance operational decision-making

## Dashboard

The Power BI dashboard provides interactive insights into:

* Claim processing trends
* Delayed claims analysis
* Financial exposure
* Healthcare service centre performance
* Medical specialty performance

## Author

**Chulumanco Hlalukana**

Postgraduate Diploma in Data Analytics & Business Intelligence

University of the Western Cape

