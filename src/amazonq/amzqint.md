# Amazon Q Integration with AWS Services

Amazon Q is a layer of intelligence that is slowly starting to be included in other AWS services, and these integrations can come up on the exam. Let's explore the key services where Amazon Q has been integrated.

## **Amazon Q for QuickSight**

Amazon QuickSight is a way for you to create dashboards and visualize your data. Traditionally, when you work in Amazon QuickSight, it's drag and drop - you select your axes and configure your visualizations manually.

But you can also now use Amazon Q with QuickSight. With Amazon Q, you simply:
- Upload your dataset
- Ask natural language questions to your data
- Automatically generate graphs based on your questions

For example, you can ask for "sales by city and product as a map," and automatically, the map is created with the correct measures and configurations, which is very helpful.

Now to create dashboards in QuickSight, you can use Amazon Q and dictate what you want. You can:
- Get executive summaries of your data
- Ask and answer questions about your data
- Generate and edit visuals for your dashboards

## **Amazon Q for EC2**

EC2 instances are virtual servers that you can start in AWS, and they are very important. Amazon Q for EC2 helps you choose which EC2 instance type you're going to need for your workload.

For example, you can ask: "Hey, I have a web service and I would like to run it to serve 1,000 users. Which EC2 instance type do you recommend?"

The system might recommend instance types like M7g and C7g, and provide information explaining why these are suitable choices. You can also keep talking to Amazon Q to:
- Add more requirements
- Get a better understanding if these requirements fit the selected EC2 instance type
- Determine if you need to change your selection

It's a dialog-based approach, and we'll see Amazon EC2 instances geared for AI and ML workloads later on in this course.

## **Amazon Q for AWS Chatbot**

AWS Chatbot is a way for you to deploy a chatbot from AWS in a chat application, for example, Slack or Microsoft Teams. This chatbot knows about your AWS accounts, so you can even ask it to run commands for you, and it will execute them.

It's a way for you to never leave your chat application and still use AWS. Thanks to this AWS chatbot, you can:
- Troubleshoot issues
- Receive notifications for alarms
- Get security findings
- Receive billing alerts
- Create support requests directly from the chats

Amazon Q is integrated with AWS Chatbot, allowing you to directly access Amazon Q through the AWS Chatbot. This will accelerate your ability to:
- Understand services
- Troubleshoot issues
- Identify remediation paths

## **Amazon Q Developer for Glue**

Glue is an ETL service - that means extract, transform, and load. It's used to move data across places on your cloud and from databases or storage options.

You may not know what Glue is or know how Glue works, but you may want to use it, and Amazon Q can be very helpful in that instance.

Amazon Q Developer can help with Glue in several ways:

1. **General Support**: Chat to answer general questions about Glue and provide links to documentation

2. **Code Generation**: Generate code for AWS Glue, including generating code or answering questions about specific ETL scripts that you find in Glue

3. **Error Resolution**: In case you have errors in your Glue jobs, Amazon Q Developer has been trained to understand these errors and provide you step-by-step instructions to root cause and resolve your issues

## **Summary**

That's it for Amazon Q for other services. This lecture will continue to be updated if there are new services that come up, but so far, you should be good for the exam with this knowledge of Amazon Q integrations.