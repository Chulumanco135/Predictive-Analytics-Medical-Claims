#Install packages 
install.packages("tidyverse")
install.packages("lubridate")
install.packages("janitor")

#Load libraries
library(tidyverse)
library(lubridate)
library(janitor)

#Upload data

> claims <- read_excel(
+   "C:/Users/user/Downloads/LAHEALTH.ORIGINAL.xlsx"
+ )

Convert date columns

> claims$`Invoice Date` <- as.Date(
+   claims$`Invoice Date`
+ )
> claims$`Capture Date` <- as.Date(
+   claims$`Capture Date`
+ )

Create processingDays variable
> claims$ProcessingDays <- as.numeric(
+ 
+   claims$`Capture Date` -
+   claims$`Invoice Date`
+ 
+ )

Creating Binary Target Variable
claims$DelayStatus <- ifelse(
  claims$ProcessingDays > 30,
  1,
  0
)

Save work to laptop
> write_xlsx(
+   claims,
+   "C:/Users/user/Downloads/LAHEALTH_DELAY_ANALYTICS.xlsx"
+ )

Remove Variables
> claims_clean <- claims %>%
+   select(
+     
+     -`Invoice Number`,
+     -`Medical Aid Number`,
+     -`Patient Name`,
+     -`Main Member`,
+     
+     -`Invoice Date`,
+     -`Capture Date`,
+     
+     -`Latest Capture Date`,
+     
+     -`Total Cashflow`,
+     -`Total Journals`,
+     
+     -`Treating Doctor`,
+     -`Referring Doctor Name`
+     
+   )

Change variable format
> names(claims) <- gsub(
+   " ",
+   "_",
+   names(claims)

Remove duplicates
> claims <- distinct(claims)

Save Gender to only M and F 
> claims$Gender <- toupper(
+   claims$Gender
+ )
> claims$Gender <- ifelse(
+   claims$Gender %in% c("FEMALE", "F"),
+   "F",
+ 
+   ifelse(
+     claims$Gender %in% c("MALE", "M"),
+     "M",
+     NA
+   )
+ )

Remove all missing values and NA 
> claims <- na.omit(claims)
> colSums(is.na(claims))
> claims <- claims %>%
+   mutate(
+     across(
+       where(is.character),
+       ~na_if(trimws(.), "")
+     )
+   )
> 
> claims <- na.omit(claims)

Save data
> write_xlsx(
+   claims,
+   "C:/Users/user/Downloads/LAHEALTH_FINAL_CLEANED.xlsx"
+ )


> # Load packages
> library(readxl)
> library(dplyr)
> 
> # Load dataset
> data <- read_excel("C:/Users/user/Videos/LAHEALTH_FINAL_CLEANED.xlsx")

-
/

> 
> # Examine dataset structure
> str(data)

> # Dataset dimensions
> dim(data)
[1] 1986   34
> 
> # Variable names
> names(data)

#Descriptive statistics
> # Load package
> library(psych)

> # Select numerical variables
> numeric_data <- data %>%
+   select(ProcessingDays,
+          Total_Turnover,
+          Total_Cashflow,
+          Total_Outstanding)
> 
> # Generate descriptive statistics
> describe(numeric_data)

# Distribution of categorial variables
> # Frequency tables
> table(data$Gender)

   F    M 
1231  755 
> 
> table(data$DelayStatus)

   0    1 
1394  592 
> 
> table(data$CONTRACTED)
< table of extent 0 >
Warning message:
Unknown or uninitialised column: `CONTRACTED`.

# Percentage distributions
> prop.table(table(data$DelayStatus))*100

       0        1 
70.19134 29.80866 
> 
> # Bar chart for DelayStatus
> ggplot(data, aes(x = as.factor(DelayStatus))) +
+   geom_bar() +
+   labs(title = "Distribution of Delay Status",
+        x = "Delay Status")
> 
> # Bar chart for Gender
> ggplot(data, aes(x = Gender)) +
+   geom_bar() +
+   labs(title = "Gender Distribution")

#Exploratory Data Analysis
> #Distribution of processing days
> ggplot(data, aes(x = ProcessingDays)) +
+   geom_histogram(bins = 30) +
+   labs(title = "Distribution of Processing Days",
+        x = "Processing Days",
+        y = "Frequency")
> 
> #Boxplot Analysis of financial Variables
> # Boxplot for Total Turnover
> ggplot(data, aes(y = Total_Turnover)) +
+   geom_boxplot() +
+   labs(title = "Boxplot of Total Turnover")
> 
> # Boxplot for Total Cashflow
> ggplot(data, aes(y = Total_Cashflow)) +
+   geom_boxplot() +
+   labs(title = "Boxplot of Total Cashflow")

#Correlation
> # Load package
> library(corrplot)
> 
> # Select variables
> cor_data <- data %>%
+   select(ProcessingDays,
+          Total_Turnover,
+          Total_Cashflow,
+          Total_Outstanding)
> 
> # Correlation matrix
> cor_matrix <- cor(cor_data,
+                   use = "complete.obs")
> 
> # Plot correlation matrix
> corrplot(cor_matrix,
+          method = "color",
+          addCoef.col = "black")
> 
> #Scatter plot
> ggplot(data,
+        aes(x = Total_Turnover,
+            y = Total_Outstanding)) +
+   geom_point() +
+   labs(title = "Turnover vs Outstanding")
> save.image("C:\\Users\\user\\Videos\\My descriptive")

