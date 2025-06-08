# Amazon Bedrock and Generative AI
In this section, we are going to talk about generative AI, and amazon bedrock (which is the main service on AWS that does generative AI). This is actually one of the main topic of the exam and one of the fastest growing AWS service.

## Section 1 : What is GenAI?
### Introduction to Generative AI

Now that we are about to dive into **Amazon Bedrock**, which is a service for Generative AI (Gen AI) on AWS, let’s take a step back and understand **what Gen AI actually is**.

Generative AI is a **subset of deep learning**, which is itself a **subset of machine learning**, and in turn, a subset of **artificial intelligence (AI)**.


### What is Generative AI?

* Gen AI is used to **generate new data** that resembles the data it was trained on.
* It can be trained on **various types of data**:

  * Text
  * Images
  * Audio
  * Code
  * Video
  * And more

**Example**:
If we train a Gen AI model on a lot of dog images and also on hand-drawn cartoons, then ask it to generate a “cartoon dog,” it will combine its understanding of both to create a new, unique cartoon-style dog.

* This is the **power of Gen AI**: it **combines its knowledge in creative, unique ways**.


### Foundation Models

* We start with a large amount of **unlabeled data** to train what's called a **foundation model**.
* Foundation models are:

  * Broad and capable of **multiple general tasks**
  * Able to **generate text**, **summarize**, **extract info**, **generate images**, **act as a chatbot**, etc.

**Training foundation models:**

* Requires **millions of dollars**, massive computing resources, and a lot of data.
* Typically built by **large companies** like:

  * **OpenAI** – (e.g., GPT-4o)
  * **Meta**
  * **Amazon**
  * **Google**
  * **Anthropic**


### Open Source vs Commercial Models

* Some foundation models are **open source** (free to use):

  * Example: Meta’s open-source efforts, Google’s BERT
* Others are **commercially licensed**:

  * Example: OpenAI’s GPT models, Anthropic models

### Large Language Models (LLMs)

* LLMs are a **type of AI** that rely on foundation models and are designed to **generate human-like text**.
* Example: **ChatGPT** using **GPT-4**

**How it works:**

1. LLMs are trained on large text datasets: books, websites, articles, etc.
2. They can perform:

   * Translation
   * Summarization
   * Q\&A
   * Content creation

**Interaction:**

* You **send a prompt**, like: *“What is AWS?”*
* The LLM uses internal knowledge to **generate a relevant response**.


### Non-Determinism in LLMs

* Generated text is **non-deterministic**:

  * Same prompt may give **different answers** each time.
  * Responses are **statistically generated**, not fixed.

**Example**:
Prompt – *"After the rain, the streets were..."*
LLM may choose:

* Wet (0.4 probability)
* Flooded (0.25)
* Slippery (0.15), etc.

An algorithm selects the next word based on **probabilities**, not certainty.


### Gen AI for Images

#### 1. **Text-to-Image Generation**

* Input: *"Generate a blue sky with white clouds and 'Hello' written in the sky"*
* Output: An image generated matching the prompt.

#### 2. **Image-to-Image Transformation**

* Input image: Someone playing piano
* Prompt: *“Transform this image to Japanese anime style”*
* Output: Stylized image in manga style

#### 3. **Image-to-Text**

* Input: Picture with an apple and an orange
* Prompt: *“How many apples do you see?”*
* Output: *“One apple and the other fruit is an orange.”*


### Diffusion Models for Image Generation

Used by models like **Stable Diffusion**

**How it works:**

1. **Forward Diffusion (Training):**

   * Start with an image (e.g., a cat)
   * Add noise step-by-step until it becomes pure noise

2. **Reverse Diffusion (Generation):**

   * Start with random noise
   * De-noise it step-by-step using the trained model
   * Final output: A generated image, e.g., *“cat with a computer”*


### Summary of Key Concepts

* **Gen AI** creates new content (text, images, audio) from training data.
* **Foundation models** are trained on vast, diverse data to support multiple tasks.
* **LLMs** generate human-like text and are based on probability, not fixed rules.
* **Non-deterministic output** ensures variability in responses.
* **Diffusion models** generate images by reversing a noise process.