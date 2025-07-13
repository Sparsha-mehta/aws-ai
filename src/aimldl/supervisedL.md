# Supervised Learning Course Notes

Now that we have learned about data, let's talk about supervised learning. In this context of supervised learning, we're trying to figure out a mapping function for our model that can predict the output for new unseen input data. To do supervised learning, you need labeled data. That means it's going to be very powerful, but as mentioned, it's going to be very difficult to have labeled data for millions of data points.

## **Regression**

### **Linear Regression Example: Height and Weight**
- We can perform regression on humans who have both height and weight measurements
- Each human can be represented as crosses on a diagram with weight and height coordinates
- We try to find a straight line (linear regression) that covers the trend of these data points
- The line isn't perfect since some humans can be very tall and light, while others can be tiny and heavy
- But it's one algorithm we can apply to these datasets

![alt text](image-8.png)

### **Making Predictions with Regression**
Once we have the red line that crosses our datasets, we can ask the algorithm questions like "What is the weight of a person that is 1.6 meters tall?"

The process works as follows:
1. Look at the 1.6 value on the height axis
2. Go up to where it meets the red line
3. Read the corresponding weight value (60 kilograms in this example)

### **Regression Summary**
- **Purpose**: Predict a numeric value based on input data
- **Output**: Continuous variable that can take any value within a range
- **Use case**: Predicting quantities or real values

**Examples of regression applications:**
- Predicting house prices based on house size
- Stock price prediction
- Weather forecasting

*Note: The examples shown are two-dimensional regressions, but in practice, regressions can be much more complicated, non-linear, and work in more than two dimensions.*

## **Classification**

### **Classification Example: Animal Identification**
- Using heights and weights to classify animals (dogs, cats, giraffes)
- This creates a very diverse dataset where dogs and cats might have similar heights but different weights
- Giraffes are clearly differentiated as they are very tall and heavy
- When asked "What animal is this?" with input of 4.5 meters height and 800 kilograms weight, the classification model responds "giraffe"

### **Classification Summary**
- **Purpose**: Predict the categorical label of input data
- **Output**: Discrete variable with distinct values, where each value is a specific category or class
- **Use case**: Predicting categories between different options

**Examples of classification applications:**
- Fraud detection
- Image classification
- Customer retention
- Diagnostics

### **Types of Classification**

**1. Binary Classification**
- Example: Email spam detection (spam or not spam)
- Process:
  - Train a classification model using labeled emails (known spam and non-spam)
  - The model learns what makes an email spam or not spam
  - When a new email arrives, the model classifies it based on learned patterns
  - This is how spam filters work nowadays

**2. Multi-class Classification**
- More than two categories
- Example: Mammal, bird, reptile classifications

**3. Multi-label Classification**
- Multiple labels can be attached to one output
- Example: A movie can be both action and comedy

**Common Algorithm**: K-nearest neighbors (k-NN) model used for classification

## **Data Splitting for Supervised Learning**

### **Training, Validation, and Test Sets**

**Training Set (60-80% of data)**
- Used to train the model
- Example: 800 labeled images out of 1,000 total images
- The algorithm learns from these labeled examples

**Validation Set (10-20% of data)**
- Used to tune model parameters and validate performance
- Helps optimize the algorithm for best performance
- Example: 100 labeled images used for tuning

**Test Set (10-20% of data)**
- Used to test and evaluate final model performance
- Contains data not used for training or validation
- Tests the model's accuracy on completely new data
- Example: Submit an image of a cat, expect "cat" as output

## **Feature Engineering**

Feature engineering is the process of using domain knowledge to select and transform raw data into meaningful features that help enhance the performance of machine learning models.

### **Example: Birth Date to Age Conversion**
- Original dataset has a "birth date" column that is sparse and not easily usable
- Through feature engineering, convert birth date to "age" column
- Age is easier to use from a machine learning perspective and provides more valuable information

### **Feature Engineering Techniques**

**1. Feature Extraction**
- Derive new features from existing data
- Example: Extract age from date of birth

**2. Feature Selection**
- Select a subset of relevant features
- Choose only the important features in datasets

**3. Feature Transformation**
- Transform data to change values for better model performance
- Ensure all features are on the same range so algorithms converge faster

### **Feature Engineering Applications**

**Structured Data Example: House Price Prediction**
- Input features: Size, location, number of rooms
- **Feature Creation**: Create new column "price per square foot"
- **Feature Selection**: Identify important features like location or number of bedrooms
- **Feature Transformation**: Normalize features to same range for faster algorithm convergence

**Unstructured Data Examples:**
- **Text Data**: 
  - Sentiment analysis of customer reviews to extract sentiment features
  - TF-IDF technique to convert text into numerical features
- **Image Data**: 
  - Extract features like edges or textures using neural networks
  - Create meaningful features for image data to feed into other algorithms

Feature engineering is essential for creating new input labels that help machine learning algorithms perform better.