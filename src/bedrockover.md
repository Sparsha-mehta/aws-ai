# Amazon Bedrock - Overview

## Introduction to Amazon Bedrock

Now that we've learned about Generative AI and foundation models, it's time to talk about **Amazon Bedrock**, the **main service on AWS used to build generative AI applications**.

Amazon Bedrock is a **fully managed service**, which means you don’t have to worry about managing the underlying infrastructure. It provides a simple way to access and interact with multiple foundation models through a unified interface.

## Key Features of Amazon Bedrock

* **Fully managed service**:
  
  * No need to manage infrastructure
  * AWS handles everything behind the scenes

* **Data privacy**:
  
  * Your data stays **within your AWS account**
  * It is **not used to retrain** the underlying foundation models

* **Pay-per-use pricing model**:
  
  * You only pay for what you use
  * Pricing details will be discussed later

* **Unified API**:
  
  * One standardized method to interact with all foundation models
  * Simplifies application development

* **Multiple foundation models available**:
  
  * Easily choose and configure models from different providers

* **Advanced features** included:
  
  * **RAG** (Retrieval Augmented Generation)
  * **LLM Agents**
  * **Security, privacy, governance, and responsible AI** built-in in Amazon Bedrock

## What type of Foundation Models are Available in Bedrock

Amazon Bedrock offers access to models from various top-tier AI providers:

* **AI21 Labs**
* **Cohere**
* **Stability.ai**
* **Amazon**
* **Anthropic**
* **Meta**
* **Mistral AI**

> 📌 More providers and models will continue to be added over time.

## How Bedrock Handles Models

* When you use a foundation model:
  
  * **Bedrock creates a copy** of the model instance for **your exclusive use**
  * This ensures data isolation and privacy

* In some cases, you can **fine-tune the model with your own data** to better align it with your specific needs

* Again, **none of your data is sent back** to the original model providers

---

## Bedrock Architecture Overview

Let’s visualize how Bedrock works, using a simplified diagram explained during the lecture:

### Core Flow:
![alt text](image-15.png)
1. **Users interact with an interactive playground**
   
   * Users **select the model** to use
   
   * Input a question like:
     
     > *“What is the most popular dish in Italy?”*
   
   * Model responds with an answer, for example:
     
     > *“Pizza and pasta”*

2. We can have **Knowledge Bases / RAG** (Retrieval Augmented Generation)
   
   * This allows fetching **external data** to provide **more accurate and relevant answers** (will be covered in detail in later sections)

3. **Model Fine-Tuning**
   
   * You can upload and apply your **own data** to personalize the foundation model
   * All fine-tuning stays **within your AWS account**

4. **Unified API Access**
   
   * All apps communicate with Bedrock using a **single API format**
   * Bedrock manages model selection and orchestration behind the scenes

## Summary

* Amazon Bedrock makes it easy to **build, test, and deploy** Gen AI applications using various foundation models.
* It gives you **data privacy**, **scalability**, **fine-tuning**, and a **unified developer experience**.
* In the next lecture, we’ll explore **hands-on practice** with Bedrock’s **interactive playground**.

## [Amazon Bedrock - Hands On](https://github.com/Sparsha-mehta/aws-ai/blob/main/Bedrock%20Hands%20On.pdf)