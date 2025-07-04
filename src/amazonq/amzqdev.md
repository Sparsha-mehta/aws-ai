# Amazon Q Developer

Now, let's talk about Amazon Q Developer. Amazon Q Developer is a service that has two sides, offering different capabilities for AWS developers and users.

## **AWS Account Management and Documentation**

The first side is about answering questions about AWS documentation and helping you select the right AWS service. It can also answer questions about the resources in your AWS accounts.

For example, as developers we can say, "Hey, list all of my Lambda functions." Lambda is a service in AWS, and we may have created many Lambda functions, but we don't know what they are or where they are. Amazon Q Developer will respond, "Yes, you have five AWS Lambda resources in the region us-east-1 and here are the names of them."

This is pretty cool because now we can talk to our AWS accounts using natural language.

### Key Capabilities:
- **CLI Command Suggestions**: It can suggest Command Line Interface commands to run and make changes to your accounts
- **AWS Bill Analysis**: It can analyze your AWS bill
- **Error Resolution**: It can resolve errors and do troubleshooting
- **Continuous Improvement**: It's going to become more and more powerful over time

### Examples in Action:

**Example 1 - Lambda Function Management:**
When we ask Amazon Q: "Change the timeout of a Lambda function Test API1 in the Singapore region to 10 seconds."

Right now Amazon Q cannot do this for us directly, but what it can do is set up a command for us. It will create the command, and then we can run this command to actually change the timeout. This is pretty cool because this is a step that we don't have to figure out - the command is going to be perfectly executed when we run it.

**Example 2 - Cost Analysis:**
We can ask Amazon Q: "What were the top three highest cost services in Q1 from my accounts?"

It will automatically respond with something like: "Well, you had Amazon SageMaker, you had Amazon Elastic Container Service and AWS Config" and give us a cost analysis. This is pretty cool because this type of data analysis would maybe take us a little bit of time, but Amazon Q is doing it for us by using the data from our own AWS accounts.

## **AI Code Companion**

The other side of Amazon Q Developer is an AI code companion - very different from the first side. The idea is that you can code new applications similarly to GitHub Copilot, and it's specialized of course for AWS-based development.

### Code Generation Example:
We can say: "Write me Python code to list all the files in a given Amazon S3 bucket. It will accept one parameter named bucket_name and return a list of files in that S3 bucket."

Amazon Q Developer will then generate Python code that fits this purpose.

### Language Support:
Amazon Q Developer supports many languages:
- Java
- JavaScript  
- Python
- TypeScript
- C#

It's going to add more languages over time in terms of support.

### Additional Features:
- **Real-time Code Suggestions**: Provides suggestions while you code in your code editor
- **Security Scanning**: Scans your code for security vulnerabilities
- **Software Agent**: There's even a software agent from Amazon Q that can:
  - Implement features
  - Generate documentation in your code
  - Bootstrap new projects (creating the base files for new projects to get started)

### IDE Integration:
The AI Code Assistant works with several IDEs (Integrated Development Environments - software used to create code):
- Visual Studio Code
- Visual Studio
- JetBrains

### Development Capabilities:
- Answer questions about AWS development
- Code completion and code generation
- Scan code for security vulnerabilities
- Debugging optimizations and improvements

The idea is that using Amazon Q Developer, you can really enhance the way you write code. This is a very popular thing right now in the AI space - getting a code companion. You have GitHub Copilot, which is the most popular one, but we also have Amazon Q Developer, which is very helpful when you want to do specialized things on AWS.