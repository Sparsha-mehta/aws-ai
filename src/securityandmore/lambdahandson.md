# AWS Lambda Hands-On

In this tutorial, we'll practice working with AWS Lambda by exploring the Lambda console interface, understanding how Lambda functions work with different event sources, creating our first function, testing it, and examining the monitoring and configuration options available. This hands-on approach will show you the core concepts of serverless computing with Lambda through practical examples.

## **Getting Started with Lambda Console**

### Accessing the Lambda Console Interface

1. Navigate to the Lambda console in AWS
2. If you encounter the standard console screen, modify the URL by adding `/begin` to the end
   
   **Teaching Note**: The instructor prefers this specific UI because it provides a better visual diagram to demonstrate how Lambda works conceptually before diving into the technical details.

[SCREENSHOT: Lambda console with /begin interface showing Lambda function diagram]

### **Understanding Lambda's Multi-Language Support**

The console interface shows that Lambda functions can be written in several programming languages:
- .NET
- Java  
- Node.js
- Python
- Ruby
- Custom runtime (for other languages not natively supported)

**Key Learning**: This flexibility allows developers to use the language they're most comfortable with or the one best suited for their specific use case.

## **Demonstrating Lambda's Event-Driven Architecture**

### Exploring Event Sources and Scaling

3. Select Node.js as the runtime and click "Run"
   - **Result**: The function executes and returns "Hello from Lambda"

4. Click on "Lambda Responds to Events" to explore the event-driven model

[SCREENSHOT: Interactive diagram showing various event sources connecting to Lambda]

**What This Demonstrates**: The interface shows multiple event sources that can trigger Lambda functions:
- Streaming analytics sending data
- Mobile phones sending data to mobile/IoT backends  
- Photos being dropped into S3 buckets
- Camera inputs
- And many other AWS services

### **Observing Automatic Scaling in Action**

5. Click on multiple event sources (mobile phone, camera, etc.) repeatedly
   
   **What You'll See**: Initially, there's only one pair of cogs representing compute capacity, but as you click more triggers, Lambda scales up automatically to 8 or 9 instances.

**Key Takeaway**: This visual demonstration shows Lambda's core value proposition - you get seamless scalability without managing any servers. The more events that come in, the more Lambda instances automatically spin up to handle the load.

### **Understanding Lambda Pricing Model**

The interface demonstrates Lambda's cost structure:
- **Free Tier**: Initial invocations are free thanks to AWS's generous free tier
- **Pay-per-Use**: As invocations increase, costs accumulate based on actual usage
- **Cost Consideration**: While Lambda can be a cheap service, it's important to estimate your workload to understand potential costs

**Teaching Point**: Lambda pricing is based on the number of invocations and execution time, making it cost-effective for many use cases, but requiring careful estimation for high-volume applications.

## **Creating Your First Lambda Function**

### **Setting Up a Hello World Function**

6. Click "Create a Function" in the interface
7. Choose "Use a blueprint" option
8. Select the "hello world" blueprint
9. Choose Python as the runtime (any Python version available)
10. Name the function "HelloWorld"

[SCREENSHOT: Function creation form with blueprint selection]

### **Configuring the Execution Role**

**Important Concept**: Every Lambda function needs an execution role, similar to how you would set a role on an EC2 instance, but specifically designed for Lambda functions.

11. For the execution role, select "Create a new role with basic Lambda permissions"

**What This Does**: This creates an IAM role that gives your Lambda function the minimum permissions it needs to execute and write logs to CloudWatch.

### **Understanding the Function Code**

The blueprint automatically generates function code with these key components:

```python
def lambda_handler(event, context):
    # Function logic here
    value1 = event['key1']
    value2 = event['key2'] 
    value3 = event['key3']
    return event['key1']
```

**Code Explanation**: 
- `lambda_handler` is the entry point that gets invoked when an event is passed to the function
- The function receives an event object containing data
- In this example, it extracts three values and returns the first key's value

**Teaching Note**: You don't need to be a coding expert to understand this - the key point is that this code executes whenever the Lambda function is triggered.

12. Click "Create this function"

## **Testing and Debugging Your Lambda Function**

### **Running Function Tests**

13. Once the function is created, locate the code editor in the console
14. Click the "Test" button

[SCREENSHOT: Lambda function code editor with Test button highlighted]

**Test Results**: 
- The function executes successfully
- Returns "value1" as the result
- Shows execution logs and statistics

### **Understanding Test Input and Output**

**Input JSON Structure**:
```json
{
  "key1": "value1",
  "key2": "value2", 
  "key3": "value3"
}
```

This hello-world template data gets passed as JSON to your Lambda function, demonstrating how real-world events would be structured.

### **Demonstrating Error Handling**

15. To show what happens with errors, temporarily remove one of the keys from the test JSON
16. Run the test again

**What Happens**: The code fails because it's trying to access a key that doesn't exist, and there's no exception handling in place.

**Teaching Point**: This demonstrates the importance of proper error handling in production Lambda functions.

17. Restore the missing key and test again to confirm it works
18. Save the test event as "HelloWorld event" for future use

**Why This Matters**: Saving test events allows you to repeatedly test your function with consistent input data during development.

## **Monitoring and Logging**

### **Accessing Function Metrics**

19. Navigate to the "Monitor" tab in your Lambda function

[SCREENSHOT: Lambda monitoring dashboard showing CloudWatch metrics]

**What You'll Find**: 
- Invocation statistics from CloudWatch
- Performance metrics
- Error rates and duration statistics

**Note**: Metrics take some time to populate, so you may need to run your function a few times and wait before seeing data.

### **Examining CloudWatch Logs**

20. Click "View CloudWatch Logs" 
21. Select a log stream to examine detailed execution logs

**Log Contents**:
- Successful execution records showing the values passed in
- Any error messages from failed executions
- Debugging information for troubleshooting

**Key Learning**: CloudWatch logs are essential for debugging Lambda functions in production. Every execution creates log entries that help you understand what happened during function execution.

## **Configuring Lambda Function Settings**

### **General Configuration Options**

22. Navigate to the "Configuration" tab
23. Explore the "General configuration" section

[SCREENSHOT: Lambda configuration settings panel]

**Available Settings**:
- **Memory allocation**: Can be set very high or very low depending on function needs
- **Ephemeral storage**: Temporary disk space available during execution
- **Timeout**: Maximum execution time before the function fails
- **Execution role**: The IAM role governing function permissions

### **Understanding the Execution Role**

24. Click on the execution role link to examine its permissions

**What You'll See**: The basic Lambda execution role with permissions focused on CloudWatch Logs access.

**Role Permissions Include**:
- CloudWatch log creation and writing
- Three specific actions for log management
- No other AWS service permissions by default

**Teaching Point**: To interact with other AWS services like S3, DynamoDB, or SES, you would need to modify this IAM role to add the appropriate permissions.

## **Exploring Advanced Features**

### **Examining Function Permissions**

25. Navigate to the "Permissions" section in Configuration

**Permission Summary Shows**:
- Current IAM role assignments  
- Allowed CloudWatch Logs actions
- View options by resource or by action

### **Understanding Event Triggers**

26. Navigate to the "Triggers" section
27. Click "Add trigger" to explore available options

[SCREENSHOT: Trigger selection dropdown showing various AWS services]

**Available Trigger Sources**:
- Amazon S3 (one of the most common use cases)
- API Gateway
- CloudWatch Events
- DynamoDB streams
- Kinesis streams
- SQS queues
- SNS topics
- Many other AWS services and partner integrations

**Example Configuration**: For S3 triggers, you would need to:
- Select a specific S3 bucket
- Choose event types (object creation, deletion, etc.)
- Define any filtering rules

**Teaching Note**: The instructor mentions this is too advanced for the current tutorial but emphasizes the wide range of services that can trigger Lambda functions.

## **Key Takeaways**

**What We Accomplished**:
- Explored the Lambda console interface and understood its visual representations
- Witnessed Lambda's automatic scaling capabilities in action
- Created a basic Lambda function using a blueprint
- Tested the function and examined its logs
- Configured basic function settings
- Explored monitoring capabilities through CloudWatch
- Examined the IAM role structure for Lambda functions
- Surveyed the extensive trigger options available

**Important Concepts Covered**:
- **Serverless Architecture**: No server management required
- **Event-Driven Execution**: Functions respond to various AWS service events
- **Automatic Scaling**: Capacity adjusts automatically based on demand  
- **Pay-per-Use Pricing**: Cost based on actual function invocations
- **Multi-Language Support**: Flexibility in development language choice
- **IAM Integration**: Security through role-based permissions
- **CloudWatch Integration**: Built-in logging and monitoring

**Next Steps**: This tutorial provides a solid foundation for understanding Lambda basics. The service offers much more advanced functionality that can be explored as you become more comfortable with these fundamental concepts.