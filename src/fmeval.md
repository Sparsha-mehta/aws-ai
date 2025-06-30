# Fine Tuning Evaluation
When you want to choose a model, you may want to evaluate that model and bring some level of rigor when you evaluate that model. Amazon Bedrock provides comprehensive evaluation capabilities to help you assess model quality and performance.

## **Automatic Evaluation on Amazon Bedrock**

Amazon Bedrock offers Automatic Evaluation for quality control of your models. This system allows you to evaluate models by giving them specific tasks and calculating scores automatically.

### **Built-in Task Types**
- Text summarization
- Question and answer
- Text classification
- Open-ended text generation

### **Prompt Datasets**
You can either:
- Add your own prompt datasets
- Use built-in, curated prompt datasets from AWS on Amazon Bedrock

## **How Automatic Evaluation Works**

The automatic evaluation process follows a structured workflow:

1. **Benchmark Questions and Answers**
   - You can bring your own benchmark questions or use AWS provided ones
   - Benchmark answers represent the ideal answer to your benchmark question

2. **Model Evaluation Process**
   - Submit all benchmark questions to the model being evaluated
   - The model generates answers using GenAI
   - Compare benchmark answers to generated answers

3. **Judge Model Assessment**
   - Another GenAI model acts as a judge model
   - The judge model compares benchmark answers and generated answers
   - It determines if the answers are similar or not
   - Provides a grading score using methods like BERTScore or F1

## **Benchmark Datasets**

Benchmark datasets are curated collections of data designed specifically to evaluate the performance of language models. They can cover many different topics, complexities, or linguistic phenomena.

### **Benefits of Using Benchmark Datasets**
- **Measure accuracy** of your model
- **Speed and efficiency** assessment
- **Scalability** testing by throwing many requests simultaneously
- **Bias detection** - quickly detect potential discrimination against groups of people
- **Low administrative effort** for model evaluation

### **Custom Benchmark Datasets**
You can create your own benchmark datasets specific to your business if you need specific business criteria.

## **Human Evaluations**

Human evaluations follow the same concept as automatic evaluation but involve human reviewers instead of judge models.

### **Human Evaluators**
- Employees from your work team
- Company employees
- Subject matter experts (SME)

### **Human Evaluation Process**
- Humans review benchmark answers and generated answers
- They determine if answers look correct or not correct
- More flexibility in task creation since humans are evaluating

### **Human Evaluation Metrics**
- Thumbs up or thumbs down
- Ranking systems
- Various grading scores

## **Foundation Model Evaluation Metrics**

There are several metrics you can use to evaluate the output of a Foundation Model from a generic perspective:

### **ROUGE (Recall-Oriented Understudy for Gisting Evaluation)**
- **Purpose**: Evaluate automatic summarization and machine translation systems
- **ROUGE-N**: Measures the number of matching n-grams between reference and generated text
  - N can be 1, 2, 3, or 4 usually
  - 1-gram = individual words
  - 2-gram = combination of two words
  - Higher n-grams require exact matching sequences
- **ROUGE-L**: Computes the longest common subsequence between reference and generated text
- Easy to compute and understand

### **BLEU (Bilingual Evaluation Understudy)**
- **Purpose**: Evaluate quality of generated text, especially for translation
- Considers both precision and penalizes for too much brevity
- Looks at combination of n-grams with advanced formula
- Gives bad scores for translations that are too short
- More advanced than ROUGE

### **BERTScore**
- **Purpose**: Measure semantic similarity between generated texts
- Compares the actual meaning of text rather than just words
- Uses model to compare embeddings of both texts
- Computes cosine similarity between embeddings
- Looks at context and nuance, not individual words
- More advanced because it leverages AI capabilities

### **Perplexity**
- **Purpose**: Measures how well the model predicts the next token
- **Lower is better**
- Less perplexed models are more confident about next token prediction
- More accurate models have lower perplexity

## **Business Metrics for Model Evaluation**

Beyond technical metrics, you may have business metrics to evaluate models, which are more difficult to assess but equally important:

### **Key Business Metrics**
- **User Satisfaction**: Gather user feedback and assess satisfaction with model responses
- **Average Revenue Per User**: Monitor if GenAI app success increases this metric
- **Cross-domain Performance**: Assess if model performs across varied tasks in different domains
- **Conversion Rates**: Monitor desired outcomes and conversion improvements
- **Efficiency**: Evaluate model cost, resource utilization, and computational efficiency

## **Feedback Loop Integration**

All evaluation metrics can be incorporated back into a feedback loop to:
- Retrain the model
- Get better outputs
- Improve quality based on scoring metrics
- Continuously enhance model performance