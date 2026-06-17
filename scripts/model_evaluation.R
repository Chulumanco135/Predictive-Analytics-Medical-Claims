Model Evaluation Result
The predictive models were evaluated using:

	
1.1.1 Decision tree	
# Training	
Misclassification Rate	0.184	
ROC Index (AUC)		0.84	
Gini Coefficient	0.94	
# Validation	
Misclassification Rate	0.175	
ROC Index (AUC)	0.82	
Gini Coefficient	0.63

1.1.2 Logistic regression
#Training	
Misclassification Rate	0,091
ROC Index (AUC)	0.97	
Gini Coefficient	0.95
#Validation	
Misclassification Rate	0.159
ROC Index (AUC)	0.85
Gini Coefficient 0.71

1.1.3 Stepwise Logistic Regression
#Training	
Misclassification Rate 0.093
ROC Index (AUC)	0.97
Gini Coefficient 0.94
#Validation	
Misclassification Rate	0.159
ROC Index (AUC)	0.85
Gini Coefficient 0.71

The Stepwise Logistic Regression model demonstrated the strongest overall predictive performance among the model evaluated. 
It achieved the lowest validation misclassification rate of 0.159, together with a high ROC Index (AUC) of 0.85 and a Gini Coefficient of 0.71.
These results indicate that the model was highly effective in distinguishing between delayed and non-delayed healthcare claims and exhibited strong generalization performance on unseen data. 
Consequently, the Stepwise Logistic Regression model was identified as the best performing model for predicting delayed healthcare claims in this study

