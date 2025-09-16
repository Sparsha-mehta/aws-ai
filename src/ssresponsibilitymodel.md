# AWS Shared Responsibility Model

This is a **core AWS concept** that shows **who is responsible for what** when using AWS cloud services. It’s often asked in the AWS CCP exam.

You need to think like this:
* When you rent an apartment (like renting AWS services), the **building structure, elevator, security systems** etc., are the landlord’s job.
* But **your furniture, your door lock, and how you use the apartment** — that’s your job.

Now here is how Shared Responsibility Model looks like from AWS Perspective:
<img src="./images-cc/Screenshot 2025-06-07 at 12.34.28 PM.png"  style="width:75%;">

Let us understand the diagram:
#### Customer Responsibilities:
- You are the customer, and you are the one who is responsible for **security** **IN** the cloud
- You manage how you use AWS services.
- You must secure your own:
  - **Customer Data**
  - **Applications**, Identity & Access Management (IAM)
  - **Operating System** Network, & Firewall Configs (if using EC2, etc.)
  - **Client-side Encryption** & Authentication
  - **Server-side Encryption settings**
  - **Network traffic protection** (for your VPC setup)

> 💡 Think of it as: anything you create, configure, or upload = your responsibility.

Now talking about **AWS Responsibilites**:
- AWS is responsible for **security OF the cloud**
- AWS takes care of everything under the hood — basically the infrastructure which involves:
  - Physical hardware infrastructure
  - **Global infrastructure**:
    - Regions 
    - Availability Zones
    - Edge Locations
  - **Software layer** (Compute, Storage, Database, Networking)
  - **Security of hardware, data centers, and AWS services**

**Note that**: the software layer I mentioned about:
1. Compute
2. Storage
3. Database
4. Networking
Those are known as **Core AWS Services** which the Cloud Service Provider has to provide.

#### Another important thing you need to remember for the exam is about AWS Acceptable Use Policy (AUP)
When you use AWS, you're **legally bound** by their **AUP**, which prevents misuse.
You CANNOT:
- Do **illegal, harmful, or offensive** activities
- Perform **security violations**
- Do **network abuse** (e.g., DDoS attacks)
- Send **spam emails or message abuse**

That's it, down below is the section, let's say if you need to understand further but not to remember, it is **example based use case** for better understanding.
## 1st Example from Customer Responsibility Perspective
Imagine you launch an EC2 instance. AWS gives you the *server and networking backbone* — but:
#### You need to install and configure:
- Applications (e.g., Node.js, Django, databases)
- IAM roles or policies for access control
- Your own code on that server

So, if your app gets hacked or has weak IAM permissions (e.g., someone gets admin rights by mistake), it’s your fault, not AWS's.

Let’s say:
- You create a user in AWS IAM called developer1
- You give them AdminAccess by mistake (full access 😱)
If they accidentally delete your EC2 or S3 — it’s on you, not AWS.

## 2nd Example to Understand about Client Side Encryption and Server Side Encryption
First of Encryption = making your data unreadable to unauthorized users.

#### What is Client Side Encryption (Your Responsibility)?
- You encrypt the data before sending it to AWS.
Example: You encrypt a PDF on your laptop, then upload to S3.<br>
💡 AWS only stores encrypted data — it doesn't know what’s inside.

#### What is Server Side Encryption (Your Responsibility)?
- You upload normal data to S3, but check a setting that says:
  - `Enable server-side encryption`
- AWS encrypts it after it reaches S3.
💡 You’re responsible for turning this on and managing keys (sometimes using KMS — Key Management Service)

> ⚠️ If you don’t enable encryption, your data stays unencrypted, and AWS won’t stop you — that’s your call.