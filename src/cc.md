# What is Cloud Computing?

- <u>Cloud computing is the on-demand delivery of compute power, database storage, application,  
  and other IT resources.</u>

- The very important keyword here is **on-demand**.

- **On-demand** means you get it when you need it.

- Then through a cloud services platform, you are going to get **pay-as-you-go pricing**.

- **Pay-as-you-go** pricing means that you are going to pay for what you have requested, when you  
  have requested it and as you are using it. When you are done using it, you are not going to pay  
  anymore.

- In cloud computing, you are going to exactly provision exactly the right type and size of  
  computing resources that you need.

  - For example: Do you need a big server?
    - We have that for you
  - Do you want a small one?
    - We have that for you
  - Do you want 10 servers?
    - Yes, We have that for you
  - Do you need 2 of them?
    - Of course, We have that for you

- The cloud really allows you to adapt to the **type** and **size** that you need.

- Then you can access all of these resources (not with 24 hours’ notice, not with 2 hours’ notice)  
  but instantly.

  - Whenever you want a server, you will have it within seconds

- Then the cloud will also give you a really nice interface so that you can easily access your servers,  
  your storage, databases, and set of application services.

##### Something about Cloud (Specifically to AWS)

- Amazon Web Services owns and maintains the <u>network-connected hardware</u> required for these  
  application services, while <mark>you</mark> provision and use what you need via a <mark>web application</mark>.

---

##### Now let’s go back to our traditional IT:

- We have our office or our garage,
<img src="./images-cc/Screenshot 2025-05-27 at 11.03.15 AM.png"  style="width:55%;">

- But now instead of building our own data center we are going to use the cloud
<img src="./images-cc/Screenshot 2025-05-27 at 11.03.26 AM.png"  style="width:55%;">

- And in the cloud, which is also a data center (it is not just our data center), we are going to have servers 1, 2, 3,… as we need
<img src="./images-cc/Screenshot 2025-05-27 at 11.03.36 AM.png"  style="width:55%;">

- And we need and as we go, we are just going to pay for exactly for what we are using.


### You have been using some Cloud Services (Cloud Examples)

- You have been using some cloud even without knowing it because it is omnipresent, but not necessarily visible

- So if you are using web client such as **GMAIL** it's an email cloud service
<img src="./images-cc/Screenshot 2025-05-27 at 11.03.51 AM.png"  style="width:55%;">

  - You're going to <u>pay only for the emails you stored</u>. (No Infrastructure involved in it)
  - You're not provisioning servers when you use Gmail, you just use it

- Maybe you've stored some data on the cloud, for example: Google Drive, Dropbox, Google Photos, iCloud. But for **Dropbox**:
<img src="./images-cc/Screenshot 2025-05-27 at 11.03.59 AM.png"  style="width:55%;">
  - It is cloud storage service, meaning that you are going to put your files on Dropbox.
  - Dropbox was built on AWS

- **Netflix**, it is huge:
<img src="./images-cc/Screenshot 2025-05-27 at 11.04.10 AM.png"  style="width:55%;">
  - It is built entirely on AWS
  - It provides you cloud service, which is to get **Video-on-demand**
<br>
Now, obviously these cloud services are very different from AWS, but we'll learn what it goes behind  
these services and how AWS can help you build these kinds of cloud services. So let us go one step  
further.

## Different Kinds of Clouds:

There are different kinds of clouds out there.

##### - Private Cloud
- The first one is called a private cloud and the provider is **Rackspace**.
- This is cloud services used by a single organization, and are not exposed to the public
- So you can get your own private cloud, your own private data center, it's just managed  
  by someone else
- You still have <u>complete control over it</u> and
- You <u>have more security for sensitive application</u>, which may meet some specific business needs.
<img src="./images-cc/Screenshot 2025-05-27 at 11.04.18 AM.png"  style="width:55%;">
> Private cloud is out of the scope for this course but still good to mention it.

##### - Public Cloud
- The 3 famous cloud providers that are public are:
  - Microsoft Azure
  - Google Cloud
  - Amazon Web Services (this is what we are learning it from course point of view)

- In this case, the cloud resources are owned and operated by a third party cloud service provider (CSP).

- These services are delivered over the internet.

- We will look over to **6 advantages of using cloud computing**.
<img src="./images-cc/Screenshot 2025-05-27 at 11.04.58 AM.png"  style="width:55%;">

##### - Hybrid Cloud
- So with hybrid, we're actually getting the mix of private and public clouds, meaning that  
  we're going to keep some servers on premises and we'll extend some of the capabilities  
  we need into the cloud.

- For example, we can have a hybrid of our own infrastructure and the AWS cloud.

- We'll have control over sensitive assets in your private infrastructure

- We will have flexibility and the cost effectiveness of using public cloud.

<img src="./images-cc/Screenshot 2025-05-27 at 11.05.05 AM.png"  style="width:55%;">

## The 5 Characteristics of Cloud Computing

1. <span style="color: blue;font-weight:bold">On-demand self service</span>
   - Users will be able to provision resources and use them without having anyone from the service provider (AWS in our case) intervene.

2. <span style="color: blue;font-weight:bold">Broad network access</span> 
   - We will be having access to a broad network, the resources will be available over the  
     network, and it can be accessed by diverse client platforms.

3. <span style="color: blue;font-weight:bold">Multi-tenancy and resource pooling</span>
   - It means that, it is not just us but other customers from AWS can share the same  
     infrastructure and applications while still having security and privacy.  
   - These multiple customers are serviced from the same physical resources. Meaning that  
     like me, you and other customers are going to share this entire same data center of the  
     cloud.

4. <span style="color: blue;font-weight:bold">Rapid Elasticity and scalability</span>
   - We can automatically and quickly acquire and dispose the resources when we need.  
   - That means that we can quickly and easily scale based on demand. And that is a major  
     advantage of the cloud.

5. <span style="color: blue;font-weight:bold">Measured service</span> 
   - Usage is measured and the users have to pay correctly for what they have used.

## Six Advantages of Cloud Computing

1. <span style="color: blue;font-weight:bold">Trade capital expense (CAPEX) for operational expense (OPEX)</span>  
   - We are going to trade capital expenses for operational expenses  
   - That means, we don’t own the hardware, and you are going to pay-on-demand, which  
     will reduce your total cost of ownership (your TCO) and your operational expense.  
   - Meaning that you don’t buy hardware in advance, you are just going to rent it from AWS.

2. <span style="color: blue;font-weight:bold">Benefit from massive economies of scale</span> 
   - The price would be lower because we are using AWS, not just us, but other customers  
     and so many people are using it, then the prices will be reduced by AWS over time  
     because AWS will be more efficient at running due to its large scale.

3. <span style="color: blue;font-weight:bold">Stop guessing capacity</span>  
   - We also need to stop guessing the capacity.  
   - Before we had to plan and buy servers in advance and hope that it would meet the  
     capacity, but now we can actually scale automatically (due to AWS) based on the actual  
     measured usage for our application. (MEASURING IS DONE BY AWS & USAGE)

4. <span style="color: blue;font-weight:bold">Increase speed and agility</span> 
   - Because everything is on-demand, we have increased speed and agility.  
   - We can create, operate and do stuff right away….No blockers for us to become efficient.

5. <span style="color: blue;font-weight:bold">Stop spending money running and maintaining data centers</span>

6. <span style="color: blue;font-weight:bold">Go global in minutes: leverage the AWS global infrastructure</span>
   - This allows a team of 5 people to create a global application in minutes, thanks to  
     leveraging this AWS global infrastructure that is going to be worldwide


## Problems Solved by the Cloud
<img src="./images-cc/Screenshot 2025-05-27 at 12.01.10 PM.png"  style="width:55%;">

For **high availability and fault tolerance** → Since the AWS data center is built worldwide, there is low  
latency and the applications can be deployed from nearby datacenter from the location we are living.