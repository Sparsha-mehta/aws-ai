# Amazon Bedrock and Generative AI
In this section, we are going to talk about generative AI, and amazon bedrock (which is the main service on AWS that does generative AI). This is actually one of the main topic of the exam and one of the fastest growing AWS service.

## Section 1 : What is GenAI?



## Section 2 : Amazon Bedrock - Overview

## Section 3 : Foundational Model
This section covers the key considerations and trade-offs involved in selecting a **base foundation model** within Amazon Bedrock. The choice of model depends on several factors including:

- performance, 

- token capacity, 

- language support, 

- modality, 

- cost, 

- customization options, and 

- inference speed.

There is no single best option, as each model brings unique strengths and constraints. Therefore, experimentation and alignment with business needs are crucial.

### Factors to Consider When Selecting a Model

Several key parameters influence the choice of a foundation model:

- The required level of **performance** and **capability**

- The **maximum token context window**, which determines how much input data the model can process

- Whether the model supports **multimodal input and output**, such as text, image, audio, or video

- The **cost per 1,000 tokens** or per request

- The ability to perform **fine-tuning** with your own data

- The **licensing agreements**, which may vary across models

- The expected **latency** during inference

Some models are optimized for cost-effectiveness while others are designed to deliver high-accuracy outputs. Multimodal capabilities, in particular, are important for applications involving diverse media formats.

### Amazon Titan and Its Role in the AWS Ecosystem (V Imp for Exam)

Since this course focuses on AWS, special attention is given to **Amazon Titan**, which is Amazon’s High-performing foundation model suite. 

Titan supports **text and image generation**, as well as **multimodal capabilities**. 

The model can be **fine-tuned** with custom datasets using a **unified API** within Amazon Bedrock.

Smaller versions of Titan may be more **cost-effective** but will likely have **reduced knowledge coverage** compared to larger, more capable models. Deciding which version to use is a balance between **cost and quality**.

### Comparing Four Popular Foundation Models

The following comparison covers four commonly available models on Amazon Bedrock:

| Model                           | Max Tokens       | Features                                             | Use Cases                                   | Pricing (per 1K tokens)         |
| ------------------------------- | ---------------- | ---------------------------------------------------- | ------------------------------------------- | ------------------------------- |
| **Amazon Titan (Text Express)** | 8K               | High-performance text model, supports 100+ languages | Content creation, classification, education | Input: $0.0008, Output: $0.0016 |
| **Llama 2 (70B-chat)**          | 4K               | Suited for large-scale tasks and English dialogue    | Text generation, customer service           | Input: $0.0019, Output: $0.0025 |
| **Claude 2.1**                  | 200K             | High-capacity text generation, multilingual          | Analysis, forecasting, document comparison  | Input: $0.008, Output: $0.024   |
| **Stable Diffusion (SDXL 1.0)** | 77 Tokens/Prompt | Image generation only                                | Image creation for advertising, media...    | $0.04–$0.08 per image           |

### Observations Based on the Comparison

- **Claude 2.1** offers the **largest context window** (200K tokens), making it suitable for processing large codebases, books, or documents. This is critical in use cases that require deep memory of long inputs.

- **Amazon Titan** is significantly **cheaper** than both Llama 2 and Claude, while still supporting multilingual capabilities.

- **Llama 2** provides strong performance for conversational and English-based tasks but has a smaller context window and slightly higher cost than Titan.

- **Stable Diffusion** is purely for image-related generation and accepts shorter prompts. Its cost is per image rather than per token, and it supports features like object removal, background replacement, and visual modification.

### Final Thoughts on Model Selection

While all these models are converging toward similar capabilities, the real decision comes down to **testing** each one for your specific needs:

- **Claude** may be preferred for heavy document analysis and large prompt sizes.

- **Titan** offers a strong balance between performance, cost, and multilingual support.

- **Llama 2** is ideal for scalable dialogue and customer-facing tasks.

- **Stable Diffusion** is the go-to for image and creative generation needs.

Pricing is a key differentiator. **Claude is the most expensive**, while **Amazon Titan offers the lowest cost** per token. Rapid cost accumulation is possible with large-scale inference or continuous image generation, so monitoring usage is essential.

## [Foundational Model - Hands On](https://github.com/Sparsha-mehta/aws-ai/blob/main/Foundation%20Models%20Hands%20On.pdf)

## Section 4 : Fine-Tuning a Model

## Section 5 : FM Evaluation

## FM Evaluation - Hands On

## Section 6 : RAG & Knowledge Base

## RAG & Knowledege Base - Hands On

## Section 7 : More GenAI Concepts

## Section 8 : GuardRails

## GuardRails - Hands On

## Section 9 : Agents

## Section 10 : CloudWatch Integration

## CloudWatch Integration - Hands On

## Section 11 : Pricing

## Section 12 : AI Stylist

## Quiz