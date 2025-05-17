# AI-Based Cardiac Pathology Detection

![Machine Learning](https://img.shields.io/badge/-Machine%20Learning-blue)
![MATLAB](https://img.shields.io/badge/-MATLAB-orange)
![Cardiology](https://img.shields.io/badge/-Cardiology-red)
![Data Science](https://img.shields.io/badge/-Data%20Science-purple)

This project implements machine learning techniques in MATLAB to detect cardiac pathologies from medical data. The system compares different classification methods and employs feature selection to optimize performance.

## 🚀 Features

- Three classification methods compared: k-NN, Decision Tree, and Naive Bayes
- Data preprocessing including missing value removal and z-score normalization
- Feature selection using Chi-square and PCA dimensionality reduction
- Performance evaluation through loss calculation and confusion matrices
- Fall detection dataset analysis with k-means clustering

## 📊 Dataset

The project uses two datasets:
1. `Heart_Pathology_Dataset.csv` - Contains cardiac pathology data with 13 features
2. `falldetection_dataset.csv` - Used for additional analysis

## 🧠 Methodology

### 1. Data Preprocessing
- Removal of rows with missing values
- Data standardization using z-score normalization

### 2. Classification Methods
- 80/20 train-test split
- Implemented classifiers:
  - k-Nearest Neighbors (k-NN)
  - Decision Tree
  - Naive Bayes

### 3. Feature Reduction
- Principal Component Analysis (PCA)
- Chi-square feature selection to identify top 5 most significant features

### 4. Performance Evaluation
- Loss calculation for each model
- Confusion matrices for classification results
- Silhouette analysis for k-means clustering

## Code Structure

```plaintext
1. Data Loading & Cleaning
   - Load datasets
   - Remove missing values

2. Classification
   - Train-test split (80-20)
   - Model training (k-NN, Decision Tree, Naive Bayes)
   - Prediction and evaluation

3. Feature Reduction
   - PCA implementation
   - Chi-square feature selection

4. Fall Detection Analysis
   - k-means clustering
   - Silhouette analysis
