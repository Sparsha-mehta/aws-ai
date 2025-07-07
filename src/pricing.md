# Amazon Bedrock Pricing

Now that we understand the basics of Amazon Bedrock, let's explore the pricing options and cost optimization strategies. Amazon Bedrock offers different pricing models to accommodate various use cases and workload patterns.

## **Pricing Models**

### **On-Demand Mode**
- **Pay-as-you-go** with no commitment required
- Pricing structure:
  - **Text models**: Charged for every input and output token processed
  - **Embeddings models**: Charged for every input token processed
  - **Image models**: Charged for every image generated
- Works with **base models only** that are provided as part of Amazon Bedrock.


Now if you want to have some cost savings, you can use the **batch mode**.

### **Batch Mode**
- Make **multiple predictions at a time** with output delivered as a single file in Amazon S3
- **Discounts of up to 50%** compared to on-demand pricing
- **Trade-off**: Responses are delivered later than real-time
- Ideal for cost savings when immediate results aren't required

### **Provisioned Throughput**
- Purchase **model units for a specific time period** (e.g., one month or six months)
- Provides **guaranteed throughput** with maximum number of input and output tokens processed per minute
- Primary benefit: **Maintains capacity and performance**
- Does **not necessarily provide cost savings**
- Works with base models but is **required for**:
  - Fine-tuned models
  - Custom models
  - Imported models
- Note: Cannot use on-demand mode with custom or fine-tuned models

## **Model Improvement Pricing**

Understanding the cost implications of different model improvement approaches:

### **1. Prompt Engineering**
- Uses techniques to improve prompts and model outputs
- **No additional computation or fine-tuning required**
- **Very cheap to implement**
- No further model training needed

### **2. RAG (Retrieval Augmented Generation)**
- Uses external knowledge base to supplement model knowledge
- **Less complex** with no financial model changes
- **No retraining or fine-tuning required**
- Additional costs include:
  - Vector database maintenance
  - System to access the vector database

### **3. Instruction-Based Fine-Tuning**
- Fine-tunes the model with specific instructions
- **Requires additional computation**
- Used to steer how the model answers questions and set the tone
- Uses **labeled data**

### **4. Domain Adaptation Fine-Tuning**
- **Most expensive option**
- Adapts model trained on domain-specific datasets
- Requires creating extensive data and retraining the model
- Uses **unlabeled data** (unlike instruction-based fine-tuning)
- Requires **intensive computation**

## **Cost Savings Strategies**

### **Pricing Model Selection**
- **On-demand pricing**: Great for unpredictable workloads with no long-term commitments
- **Batch mode**: Achieve up to 50% discounts when you can wait for results
- **Provisioned throughput**: Not a cost-saving measure - use for capacity reservation from AWS and providers

### **Model Configuration**
- **Temperature, Top K, and Top P parameters**: Modifying these has **no impact on pricing**
- **Model size**: Smaller models are generally cheaper, but this varies by provider

### **Token Optimization**
The **main driver of cost savings** in Amazon Bedrock is optimizing token usage:
- **Minimize input tokens**: Write prompts as efficiently as possible
- **Minimize output tokens**: Keep outputs concise and short
- Focus on token optimization as the primary cost reduction strategy

---

That's the key information about Amazon Bedrock pricing and cost optimization strategies. The main takeaway is that token usage is the primary cost driver, so optimizing your prompts and outputs is essential for cost management.

Here is the [pdf link](Amazon%20Bedrock%20Pricing%20-%20Simple%20Guide.pdf) for better understanding. **Read this first**