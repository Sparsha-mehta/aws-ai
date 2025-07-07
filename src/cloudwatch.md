# Amazon Bedrock & CloudWatch Integration

Now let's talk about the integration of Amazon Bedrock and a service called CloudWatch. CloudWatch is a way for you to do cloud monitoring. CloudWatch has many services, but you can have metrics, alarms, logs and so on in CloudWatch and view them all. Many services and areas have integration with CloudWatch.

![Image: CloudWatch integration overview showing the flow from model invocation through Bedrock to CloudWatch Logs and Amazon S3](image-54.png)


## **Model Invocation Logging**

For Amazon Bedrock, you can do model invocation logging, and that's something that can come up at the exam. The idea is that you want to send all the invocations - so all the inputs and the outputs of model invocations - into either:

- **CloudWatch Logs**
- **Amazon S3**

### **What Can Be Logged:**
- Text
- Images  
- Embeddings

### **Benefits:**
- You get a history of everything that happened within Bedrock
- You can analyze the data further and build alerting on top of it
- Thanks to **CloudWatch Logs Insights**, which is a service that allows you to analyze the logs in real time from CloudWatch Logs

The idea here is that we get full tracing and monitoring of Bedrock, thanks to CloudWatch Logs.

## **CloudWatch Metrics**

The other integration is CloudWatch Metrics. The idea is that Amazon Bedrock is going to publish a lot of different metrics to CloudWatch, and then they can appear in CloudWatch Metrics.

### **Types of Metrics:**
- **General usage metrics** for Bedrock
- **Guardrails-related metrics**

### **Key Metric Example:**
- **ContentFilteredCount** - helps you understand if some content was filtered from a guardrail

### **Building Alarms:**
Once you have these metrics in CloudWatch Metrics, you can build CloudWatch Alarms on top of them to get alerted when:
- Something is caught by a guardrail
- Amazon Bedrock is exceeding a specific threshold for a specific metric

![Image Placeholder: CloudWatch Metrics flow diagram showing Bedrock publishing ContentFilteredCount metric to CloudWatch Metrics](image-55.png)

## **Exam Importance**

Model invocation logging and CloudWatch metrics are very important in Amazon Bedrock and they are topics that can appear in the exam.