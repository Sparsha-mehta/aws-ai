# AWS Cloud Overview

#### **Introduction: The History and Growth of AWS**

Now let's look at the history of the AWS Cloud.
It was launched in 2002 internally at amazon.com because they realized that the IT departments could be externalized. Their Amazon infrastructure was one of their core strengths, and they said, you know what?
**"Maybe we can do IT for someone else, for other people."**

* **2004** – AWS launched its first public service: **SQS (Simple Queue Service)**.
* **2006** – AWS relaunched with the availability of **SQS**, **S3**, and **EC2**.
* **Expansion** – AWS expanded globally, including to **Europe**.
* Today, AWS powers many popular applications, such as:

  * Dropbox
  * Netflix
  * Airbnb
  * NASA
<img src="./images-cc/Screenshot 2025-05-27 at 10.20.36 PM.png"  style="width:55%;">

---

#### **Current Market Position of AWS**
Now if you look at the Magic Quadrant from Gartner, you can see that, AWS:
* is **Leader** in Gartner’s Magic Quadrant for many years.
* has **\$90 billion** in revenue as of 2023.
* accounts for **31%** market share in Q1 2024.

  * Microsoft follows with **25%**.
* AWS has been a **market leader for 13 consecutive years**.
* It has Over **1 million active users**.
<img src="./images-cc/Screenshot 2025-05-27 at 10.24.18 PM.png"  style="width:55%;">

---

#### **What You Can Build on AWS**

AWS enables the building of sophisticated, scalable applications across many industries.

Examples include:

* Transferring enterprise IT to the cloud.
* Using the cloud for backup and storage.
* Performing big data analytics.
* Hosting websites.
* Creating backends for mobile or social apps.
* Running entire gaming servers entire on the cloud.
<img src="./images-cc/Screenshot 2025-05-28 at 12.27.48 AM.png"  style="width:55%;">

**The applications are endless.**


#### **Global Infrastructure of AWS**

We now begin exploring AWS infrastructure:
Regions, Availability Zones, Data Centers, Edge Locations, and Points of Presence.
<img src="./images-cc/Screenshot 2025-05-28 at 12.30.44 AM.png"  style="width:55%;">

There is an AWS global map available to visualize this.

* **Orange areas** = AWS regions (e.g., Paris, Spain, Ohio, São Paulo, Cape Town, Mumbai). **(Not to remember)**
* **Blue dots within regions** = Availability Zones.**(Not to remember)**
* **White lines** = Private AWS network connecting regions.**(Not to remember)**
<img src="./images-cc/Screenshot 2025-06-07 at 3.58.11 AM.png"  style="width:55%;">

**Key takeaway**: AWS is truly global, and we can leverage that infrastructure to make our applications global too.

---

### **AWS Regions** (Imp)
The first important concept to know is about AWS Regions. Regions are present all around the world.<br>
<img src="./images-cc/Screenshot 2025-06-07 at 4.15.50 AM.png"  style="width:55%;">

**Regions** are fundamental to AWS infrastructure.

* Each region is a **cluster of data centers**.
  * Examples of region codes:

    * US-east-1
    * EU-west-3
<img src="./images-cc/Screenshot 2025-06-07 at 4.13.20 AM.png"  style="width:55%;">

  * Regions shown on the console are mapped with names and codes.

When using AWS services:

* Most services are **region-scoped**.
  * Region Scoped means that if we use a service in one region, and we try to use it in another region, it will be like a new time of using the service.

---

A Question that can come up in the exam, how to choose an AWS Region?

### **Choosing an AWS Region** (IMP)

When launching a new application, choosing the right region depends on several factors:

1. **Compliance**

   * Some countries require data to remain local (e.g., France). So compliance means that your data specifically tied to the country, data never leaves a region without your explicit permission.
2. **Proximity**

   * There is a **concept of latency**. For example: if most of your users are going to be in America, it makes a lot of sense to deploy your application in America, which is close to your users. With this, they will have **reduced latency**. If you deploy your application is Australia and your users are in America, then they will have a **lot of lag** in using your application. 
  
3. **Service Availability**

   * Not all services are available in every region. Meaning that if you are leveraging a service with your application, you need to make sure that the region you are deploying into, is available, and does have that service.
  
4. **Pricing**

   * Prices vary between regions.
   * Check the services pricing page for comparisons.

---

### **Availability Zones (AZs)**

Availability Zones are the components **inside** regions.

* Each region has **3 to 6 Availability Zones**, (usually it is 3, max is 6, minimum is 3).
* Let us take an example: **Sydney Region** (code: ap-southeast-2)

  * Ub Sydney region we have 3 availability Zones, which are:

    * ap-southeast-2A
    * ap-southeast-2B
    * ap-southeast-2C
<img src="./images-cc/Screenshot 2025-06-07 at 4.51.44 AM.png"  style="width:55%;">

Now each AZ:

* Contains **one or more discrete data centers**:
  * Having **redundant power, networking, and connectivity**. Meaning that in southeast-2A, I can have two data centers, similarly I can have 2 data centers for southeast-2b, and 2 data centers for southeast-2c. (AWS will never tell how many datacenters it will be there)
  * These datacenters are **separate from each other**, so that they are **isolated from disasters**. 
  > Let's say if something happens to ap-southeast-2A, we know that it is designed not to cascade into ap-southeast-2B, or ap-southeast-2C
  * Is connected to other AZs via **high-bandwidth, ultra-low latency networking**.

Together, the AZs form a **region**.

---

### **Points of Presence and Edge Locations**

AWS also uses **Points of Presence (PoPs)** and **Edge Locations** to deliver content with low latency.

* AWS has:

  * **400+ Points of Presence**
  * Across **90 cities**
  * In **40 countries**

These will be explained in more detail later in the course.

---

### **Tour of the AWS Console**

AWS services can be:

* **Global-scoped**, such as:

  * IAM
  * Route 53 (DNS Service)
  * CloudFront (Content Delivery Network)
  * WAF (Web Application Firewall)

* Most of the AWS services are **Region-scoped**, such as:

  * EC2 (IaaS)
  * Elastic Beanstalk (PaaS)
  * Lambda (Function as a Services)
  * Rekognition (Software as a Service)

To check if a service is available in a specific region, use the **AWS Region Table**.
