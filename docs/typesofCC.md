# Types of Cloud Computing
1. **Infrastructure as a Service (IaaS)**
  - There are the building blocks for Cloud IT
  - With the IaaS, we are going to provide networking, computers, and data storage space in its raw form
  - Using this building blocks (like Legos), we will get High Level of Flexibility
  - With this, we can easily migrate from Traditional on Premises-IT to Cloud
2. **Platform as a Service (PaaS)**
  - In this, we are going to remove the need for your organization to manage the underlying infrastructure &
  - You can focus on the deployment and management of your applications
3. **Software as a Service (SaaS)**
  - This is a completed product that is going to be run and managed by the Service Provider

#### So if you want to compare all of these things:
Let us take an example -> **On premises** you are going to manage everything. This will involved your:<br>
1. Applications <br>
2. Data<br>
3. Runtime <br>
4. Middleware<br>
5. the OS (Operating System)<br>
6. Virtualization<br>
7. Servers <br>
8. Storage<br>
9. Networking<br>

With the **IaaS** (Infrastructure as a Service), we are going to manage the:<br>
1. Application<br>
2. Data<br>
3. Runtime<br>
4. Middleware &<br>
5. OS<br>

But all of the:<br>
6. Virtualization<br>
7. Servers<br>
8. Storage &<br>
9. Networking<br>
are going to be managed by others (In our case AWS)<br>

With the **PaaS** (Platform as a Service), we manage even less, so everything from the runtime to the networking is managed by AWS and the only thing we care about when we use a platform as a service is our application and our data, meaning:<br>
1. Application (we will manage this)<br>
2. Data (we will manage this)<br>
3. Runtime (AWS will handle it)<br>
4. Middleware (AWS will handle it)<br>
5. OS (AWS will handle it)<br>
6. Virtualization (AWS will handle it)<br>
7. Servers (AWS will handle it)<br>
8. Storage (AWS will handle it)<br>
9. Networking (AWS will handle it)<br>

See the image below for better understanding:<br>
![alt text](image.png)

Finally if you are using Software as a service (SaaS), Everything is going to be managed by the AWS 
![alt text](image-1.png)

## Examples of Cloud Computing Types
Well with the **IaaS**, we can use:<br>
1. EC2 (With AWS)<br>
2. GCP, Azure, Rackspace, Digital Ocean, Linode<br>

With **PaaS**, also exists on AWS, and example include:<br>
1. Elastic Beanstalk (on AWS)<br>
2. Outside of AWS, the examples include:  Heroku, Google App Engine (GCP), Windows Azure (Microsoft)

For **SaaS**, we will also have this on AWS, that represents many services:<br>
1. Rekognition for ML (AWS service)<br>
2. Real world applications like Gmail (Google App), Dropbox, Zoom for Meetings

## Pricing of the Cloud
- AWS has 3 pricing fundamentals. It will follow the pay-as-you-go pricing model 
- For Compute: (Since for compute, it is involved in various services)<br>
  - We are going to pay for exact compute time<br>
![alt text](image-2.png)
- For Storage:<br>
  - We are going to pay for the exact amount of the data stored in the cloud<br>
![alt text](image-3.png)
- For Networking:<br>
  - We are going to only pay when the data leaves the cloud. <br>
  - Any data that goes into the cloud is **Free**. (This solves the expensive issue of Traditional IT)