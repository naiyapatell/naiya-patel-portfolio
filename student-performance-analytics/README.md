# 🎓 Student Performance Analytics  

## 📌 Overview  
This project was completed in **Google Colab** to analyze factors that impact **student performance**.  
The notebook demonstrates skills in **data cleaning, exploratory data analysis (EDA), visualization, and predictive modeling**.  
The goal was to uncover patterns in academic performance and build models to predict outcomes.  

---

## 🛠 Key Features  
- Cleaned and prepared student performance dataset for analysis.  
- Conducted **exploratory data analysis (EDA)** to identify trends (e.g., study time, attendance, socio-economic factors).  
- Created **visualizations** to highlight relationships between variables and performance.  
- Built **predictive models** (e.g., Linear Regression, Logistic Regression, Decision Trees) to estimate student success.  
- Evaluated models using accuracy scores and error metrics.  

---

## 💻 Technologies Used  
- **Python** (Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn)  
- **Google Colab**  
- **Jupyter Notebook environment**  

---

## 📊 Example Code  

```python
import pandas as pd
import seaborn as sns
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score

# Load dataset
df = pd.read_csv("student_performance.csv")

# Quick look at correlations
sns.heatmap(df.corr(), annot=True, cmap="coolwarm")

# Train/test split
X = df[['studytime', 'absences', 'G1', 'G2']]
y = df['pass_fail']
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Logistic Regression Model
model = LogisticRegression()
model.fit(X_train, y_train)

# Evaluate
y_pred = model.predict(X_test)
print("Accuracy:", accuracy_score(y_test, y_pred))
