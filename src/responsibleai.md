# Responsible AI 

It's time for us to talk about responsible AI and how we can implement it effectively in our projects.

## **Core Dimensions of Responsible AI**

There are eight key dimensions we need to consider when building responsible AI systems:

- **Fairness** - We want to promote inclusion and prevent discrimination in our models

- **Explainability** - We need to understand how our models make decisions (we'll explore this in greater detail)

- **Privacy and Security** - Individuals should control when and if their data is used by our models

- **Transparency** - We need clear visibility into how our systems work

- **Veracity and Robustness** - Our systems should be reliable even in unexpected situations

- **Governance** - We need proper oversight and management processes (we'll examine this in greater detail)

- **Safety** - We want to make sure algorithms are safe and beneficial for individuals and society as a whole

- **Controllability** - We need the ability to align our models to human values and intentions

## **AWS Services for Responsible AI**

AWS provides several services to help us implement responsible AI practices:

### **Amazon Bedrock**
- On Amazon bedrock, we can have **human** or **automatic model evaluation** to ensure quality against benchmarks
- We can setup **Guardrails for Amazon Bedrock** to 
  - filter content, 
  - redact personal information (PII), 
  - enhance safety and privacy, 
  - block undesirable topics, and 
  - filter harmful content

### **SageMaker Clarify**
- With SageMaker Clarify, we can do **Foundational model evaluation** on:
  -  accuracy, 
  -  robustness, and 
  -  toxicity
- Bias detection (for example, finding that your data is skewed towards middle-aged people)

### **SageMaker Data Wrangler**
- With <u>Sagemaker Data Wrangler</u>, we can **Fix bias** by balancing datasets using the **"Augment Data"** feature
  - The idea is that you will **Generate new instances of data** for underrepresented groups
    - For example, if you don't have many young people in your dataset but have a little bit, you can augment this data by copying and modifying it to balance your datasets

### **SageMaker Model Monitor**
- Sagemaker Model Monitor helps you to do **Quality analysis of models** in production

### **Amazon Augmented AI (A2I)**
- The idea is that, you can get **Human review** of machine learning predictions when they have **low confidence**

### **Governance Tools**
- **SageMaker Role Manager** - We have Sagemaker Role Manager which can <u>Implement security on the user level in SageMaker</u>
- **Model Cards** - We have Model Cards for <u>Documentation for your models</u>
- **Model Dashboard** - to be able to <u>View all deployed models at once and ensure everything is running properly</u>

Also, AWS has implemented something, we called <mark>AWS AI Service Cards</mark>:

### **AWS AI Service Cards**
AWS has implemented AI Service Cards for services like **Amazon Textract** and **Amazon Rekognition**. These provide responsible AI documentation (you can check the documentation on AWS website) that includes:
- Service understanding and features
- Intended use cases and limitations
- Responsible AI design choices
- Deployment and performance optimization best practices

So it is a good thing to follow, if you wanted to document your own models as well!!

## **Interpretability and Explainability**

Now that we understand the tools available, let's dive deeper into interpretability and explainability concepts.

### **What is Interpretability?**
Interpretability means that a human can understand the cause of a decision made by a machine learning model. We need access into the system and the ability to interpret the model's outputs to answer "why" and "how" questions.

### **The Performance vs. Interpretability Trade-off**
There's an important relationship between model interpretability and performance:

• **High interpretability = Poor performance** (simple models like linear regression)
• **Poor interpretability = High performance** (complex models like neural networks)

**Examples:**
• **Linear Regression** - Very easy to interpret (it's just a line), but has poor performance because not much real-world data follows a linear curve
• **Neural Networks** - Very good performance, but very hard to interpret because of the many layers making it impossible to understand what the network is actually doing

### **What is Explainability?**
Explainability is the understanding of the nature and behavior of your machine learning model. It means being able to look at inputs and outputs and explain how the model came to its conclusion without understanding exactly how it works internally. This is different from interpretability, but sometimes explainability can be enough from a responsible AI perspective.

## **High-Interpretability Example: Decision Trees**

Decision trees are supervised learning algorithms used for classification and regression tasks. Here's how they work:

### **Example: Credit Risk Assessment**
Let's say we want to determine someone's risk profile based on their income and credit history:

1. **Income Branches:**
   • More than $50,000 per year
   • Between $20,000 and $50,000 per year  
   • Less than $20,000 per year

2. **Credit History Evaluation:**
   • Good credit history
   • Bad credit history
   • Unknown credit history

3. **Decision Making:**
   • If income is very low → high risk of credit default
   • Combine income branch with credit history to determine low risk, moderate risk, etc.

### **Key Characteristics of Decision Trees:**
• Very easy to read and interpret
• Split data based on feature values using simple rules like "Is the feature greater than five?"
• Creating optimal trees requires complex algorithms, but the results are easily interpretable
• Too many branches can lead to overfitting
• Provide clear visual representation of how the machine learning algorithm works

## **Partial Dependence Plots (PDP)**

When your model is not easily interpretable, we can still use partial dependence plots to understand how variables impact your model.

### **How PDPs Work:**
• Focus on a single feature and make it vary while holding all other features constant
• Observe how it influences the predicted outcome
• Particularly helpful when your model is a black box (like neural networks)

### **Example: Loan Approval Probability**
• Y-axis: Predicted loan approval probability (0 to 1)
• X-axis: Income levels
• Results show strong correlation between income growth from $50,000 to $125,000 and loan approval probability
• After $125,000, additional income has less impact on approval probability

## **Human-Centered Design for Explainable AI (HCD)**

The idea is to design AI systems that prioritize human needs through several approaches:

### **1. Design for Amplified Decision Making**
• Use AI in stressful or high-pressure environments while minimizing risk and errors
• Focus on clarity, simplicity, and usability
• Allow people to think about their decision process and be accountable for their decisions

### **2. Design for Unbiased Decision Making**
• Ensure the decision process is free from bias
• As a decision maker using AI, recognize and mitigate biases
• Understand that datasets can never be 100% bias-free
• Maintain critical thinking about potential model biases

### **3. Design for Human and AI Learning**
• **Cognitive Apprenticeship** - AI systems learn from human instructors and experts (like RLHF - reinforcement learning with human feedback)
• When humans learn from AI systems, ensure personalization to meet individual needs and preferences

### **4. User-Centered Design**
• Ensure a wide range of users can access and benefit from your AI model

That concludes our exploration of responsible AI principles and implementation strategies. These concepts form the foundation for building ethical and effective AI systems.