# AWS Lambda Study Notes

Now let's talk about AWS Lambda and how it differs from EC2 instances. When we use an EC2 instance, we have a virtual server in the cloud, but we are bounded by the amount of memory and CPU power we give it. It is continuously running, even though sometimes we don't use it. If we want to scale, we can use an Auto Scaling group, but that means we need to add or remove servers over time, which may be slow or sometimes very complicated to implement.

**With Lambda, this is a new way to think about computing.** In this case, we don't have servers - we just have virtual functions. These functions are limited by time, so they're intended for shorter type of executions. They will run on demand, which means that whenever we run a function, it will be there to be run. But whenever we don't need a function, it will not be run and we will not be billed for it. In case we need scaling, it's already automated as part of the Lambda service, and this is why Lambda is a very popular service from AWS.

## Benefits of AWS Lambda

The benefits of using AWS Lambda include:

• **Simple pricing** - You pay per request and per compute time, with a very generous free tier
• **Free tier allowance** - 1 million Lambda invocations and 400,000 gigabyte seconds of compute time every month
• **AWS integration** - Integrated with the whole AWS suite of services we've seen so far
• **Event-driven** - Functions only get invoked by AWS when something happens, when an event happens, or when needed (making Lambda a reactive type of service)
• **Multi-language support** - Fully integrated with many programming languages
• **Easy monitoring** - Through CloudWatch (AWS's monitoring solution)
• **Scalable resources** - Easy to get more resources per function, up to 10 gigabytes of RAM per function, and increasing RAM also improves CPU and network quality

## Supported Programming Languages

AWS Lambda can run many languages including:

• Node.js or JavaScript
• Python  
• Java
• C# (.NET Core or PowerShell)
• Ruby
• Many other languages through the Custom Runtime API (such as Rust or Golang)

**Container Support:** You also have the option to use containers on Lambda using container images, but you must implement the Lambda Runtime API. However, from an exam perspective, remember that there are services named ECS or Fargate, and to run container images (especially Docker images), it is always preferred to run them on ECS or Fargate versus Lambda, even though Lambda supports running some level of customized Docker images.

The most important languages to remember are Node.js and Python.

## Common Use Cases

### 1. Serverless Thumbnail Creation Service

Here is a very common use case of Lambda - creating a serverless thumbnail creation service:

1. Users upload a beach image into an S3 bucket
2. The S3 bucket triggers a Lambda function once the image is uploaded
3. The Lambda function takes that image and creates a thumbnail (smaller version)
4. It pushes the thumbnail back into Amazon S3
5. It also pushes metadata about the thumbnail into DynamoDB (image size, name, creation dates, etc.)

This is fully event-driven and fully serverless. With S3, we don't provision servers. With Lambda, we don't provision servers, and with DynamoDB, we also don't provision any servers. This serverless thumbnail creation will scale really, really well, and we don't need to worry about provisioning servers to make it scale.

### 2. Serverless CRON Job

Another very common use case for Lambda is creating a serverless CRON job. CRON allows you to define a schedule (every hour, every day, or every Monday) and based on that schedule, run a script. By default, a CRON job runs on a Linux AMI (Linux machine).

But since we are serverless, we cannot provision an EC2 instance. Instead, we use something called CloudWatch Events or EventBridge. This service will trigger our Lambda function every hour to perform a task. Effectively, we have no servers because CloudWatch Events is serverless and Lambda is serverless, so we're launching a script every hour through a Lambda function.

## Lambda Pricing

Lambda pricing is very simple and can be found at the AWS pricing URL:

**Pay per call:**
• First 1 million Lambda invocations are free
• Then $0.20 per 1 million requests thereafter

**Pay for duration:**
• Free tier: 400,000 gigabyte seconds of compute time
  - This equals 400,000 seconds if the function has 1 gigabyte of RAM
  - Or 3.2 million seconds if the function has 128 megabytes of RAM
• After free tier: $1 for 600,000 gigabyte seconds

**Bottom line:** It's very cheap to run Lambda on AWS, making it a very popular service for serverless applications and websites.

## Key Exam Points

For the CCP exam, remember that **Lambda pricing is based on calls and duration**. Lambda represents the trigger for serverless functions in the cloud.