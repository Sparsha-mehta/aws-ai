# AWS EC2: Launching Your First Instance 

## Introduction

In this lecture, we will launch our first EC2 instance running Amazon Linux. We'll get a high-level approach to all the various parameters you have when launching an EC2 instance, and you'll see there are many, but we'll learn the most important ones. We will then launch a web server directly on the EC2 instance using a piece of code we will pass to the EC2 instance called "user data." Finally, we'll learn how to start, stop, and terminate our instance.

This demonstrates the power of the Cloud - thanks to the Cloud, you can create an instance or 100 of them very quickly in less than 10 seconds without owning any single server. That is extremely powerful.

## Prerequisites

- AWS account with access to the EC2 console
- Basic understanding that EC2 instances are virtual servers

## Step-by-Step Launch Process

### **1. Access the EC2 Console**

Navigate to the EC2 console, then click on "Instances" and then click "Launch Instances."

[SCREENSHOT: EC2 console main dashboard with Instances section highlighted]

This is where you'll be able to launch your first EC2 instance.

### **2. Configure Name and Tags**

1. Add a name for your instance: **My First Instance**
   - This creates the name tag for your instance
   - If you wanted to add additional tags to tag your instance differently, you could click on the additional tags section, but you don't need to do this
   - Using just the name "My First Instance" is good enough

[SCREENSHOT: Name and tags section with "My First Instance" entered]

### **3. Choose Application and OS Images (Amazon Machine Image)**

This is where you choose a base image for your EC2 instance - this is the operating system of your instance.

1. You'll see there's a full catalog that you can search from, but we're going to use the ones from the Quick Start that are very helpful
2. Select **Amazon Linux 2 AMI** (provided by AWS)
   - As you can see, this one is **free tier eligible**, so we'll leave it as is
3. Choose architecture: **64-bit x86** (leave as default)

[SCREENSHOT: AMI selection screen showing Amazon Linux 2 AMI highlighted with "Free tier eligible" badge]

**Key Learning**: You can create your own AMIs and you can find them in this section as well. But currently, we're just going to use the ones provided by AWS as Quick Start.

### **4. Choose Instance Type**

Instance types are going to differ based on the number of CPUs they have, the amount of memory they have, and how much they cost.

1. Select **t2.micro** (this should be pre-selected)
   - This one is **free tier eligible**, so it will be free to launch one of them during an entire month if we leave it running
2. You can scroll down and look at other types of instances if curious
   - t3.micro is also free tier eligible but that's newer generation
   - Some instances will be free tier eligible, some will not
   - By default, the one that's going to be free tier eligible is t2.micro

[SCREENSHOT: Instance type selection showing t2.micro highlighted with specifications]

**Note**: If you want to compare instance types, you can click on the "Compare instance types" link to see all types of instances as well as how much memory they have.

### **5. Create Key Pair (Login)**

This is necessary if we use the SSH utility to access our instance, and we will be using the SSH utility in this course, therefore it is required for us to create a key pair.

1. Currently there is no key pair selected, and we could proceed without a key pair, but we won't do this
2. Click "Create new key pair"
3. Configure the key pair:
   - **Name**: EC2 Tutorial
   - **Key pair type**: RSA (leave as default)
   - **Key pair format**: Choose based on your operating system:
     - If you have Mac, Linux, or Windows 10: use **.pem format**
     - If you have Windows less than version 10 (Windows 7 or Windows 8): use **PPK** (this is used for PuTTY, which is how you do SSH on Windows 7 and Windows 8)

[SCREENSHOT: Key pair creation dialog with fields filled]

4. Click "Create key pair" - it will be downloaded directly to your computer
5. The key pair is now automatically selected

**Key Takeaway**: Remember - anything other than Windows 7 and Windows 8, choose .pem; otherwise, use PPK.

### **6. Configure Network Settings**

For now, we will not touch most network settings. The instance is going to get a public IP.

**Security Group Configuration:**
We need to connect to our instance, and for this, there is going to be a security group attached to our instance which controls the traffic from and to our instance.

1. The first security group created will be called **launch-wizard-1** (created by the console directly)
2. Configure security group rules:
   - ✅ **Allow SSH traffic from anywhere** (leave this checked)
     - This creates a rule in our security group to allow SSH traffic
   - ✅ **Allow HTTP traffic from the internet** (check this box)
     - This is because we're going to launch a web server on our EC2 instance
   - Leave HTTPS unchecked since we won't be using HTTPS for now

[SCREENSHOT: Security group settings with SSH and HTTP checkboxes selected]

**Key Learning**: Security groups control the traffic from and to our instance, and we can define multiple rules based on what we need our instance to do.

### **7. Configure Storage**

1. You'll see we have an **8 gigabytes gp2 root volume** - leave this as is
2. This is good because in the free tier, we can get up to **30 gigabytes of EBS General Purpose SSD storage**
3. We only need one volume for this tutorial

**Advanced Storage Details** (optional to view):
- If you go into Advanced, you can see more configuration options
- One important thing to note is **"Delete on termination"** - by default, it is enabled to "Yes"
- This means that once we terminate our EC2 instance, that volume is also going to be deleted

[SCREENSHOT: Storage configuration showing 8 GB gp2 root volume]

Leave everything as default and stay in simple mode.

### **8. Advanced Details - User Data**

This is where it gets interesting. Scroll down through the advanced details section all the way to the bottom to find **User Data**.

**What is User Data?**
User data is when we pass a script (some commands) to our EC2 instance to execute on the first launch of our EC2 instance and only the first launch.

1. In the User Data field, paste the following script:

```bash
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
```

[SCREENSHOT: User Data text box with the script pasted in]

**What This Script Does:**
- Updates the system packages
- Installs the HTTPD web server on the machine
- Starts the web server
- Creates an HTML file that will serve as our web page

**Key Learning**: This script is going to be executed when the instance is first started and only once in the whole lifecycle of the instance. You don't need to know code or understand these commands - this is provided to illustrate the power of user data.

### **9. Review and Launch**

1. In the Summary section, confirm you want to start **1 instance**
2. Review all your settings - everything should look good
3. Note the free tier reminder: "In the free tier, we get the first year of 750 hours of t2.micro" (which means running it for one month, every month)
4. If you don't have t2.micro in your region, it will be t3.micro
5. You also get 30 gigabytes of EBS storage included

[SCREENSHOT: Summary section showing all configuration choices]

6. Click "**Launch Instance**"

## **Post-Launch: Instance Management**

### **Instance Status and Information**

1. Click "View all instances" and refresh the page
2. Your instance will initially be in **"pending" state**
3. It takes about 10-15 seconds for the instance to come up

[SCREENSHOT: EC2 instances list showing pending status]

**This demonstrates the power of the Cloud** - you can create instances very quickly without owning any servers.

### **Instance Details to Note**

Once your instance is running, you can see several important pieces of information:

- **Instance name**: My First Instance  
- **Instance ID**: A unique identifier for your instance
- **Public IPv4 address**: What we'll use to access our EC2 instance from the internet
- **Private IPv4 address**: How to access the instance internally on the AWS network (private)
- **Instance state**: Running
- **Instance type**: t2.micro
- **AMI**: Amazon Linux 2
- **Key pair**: EC2 Tutorial

[SCREENSHOT: Instance details panel showing all the above information]

**Security Group Information:**
- Name: launch-wizard-1
- Inbound rules: Port 22 (SSH) accessible from everywhere, Port 80 (HTTP) accessible from everywhere
- Outbound rule: Allows all communication outward (allows instance to access the internet)

**Key Takeaway**: If you don't see these security group rules, start over because you probably missed a step.

## **Testing Your Web Server**

### **Accessing the Web Server**

1. Copy the **Public IPv4 address** from your instance details
2. **Important**: Make sure to use **HTTP** protocol, not HTTPS
   - Correct format: `http://[your-public-ip]`
   - If you use HTTPS, it won't work and will give you an infinite loading screen

[SCREENSHOT: Browser with HTTP URL showing the "Hello World" page]

**What You Should See:**
A webpage displaying "Hello World from [private-ip-address]"

**Key Learning**: Notice that the displayed IP address (like 172.31.33.135) corresponds to the **private IPv4 address**, not the public one. We use the public IP address to access it, but the webpage shows the private IP address because that's what the script programmed.

**Troubleshooting**: If you go too fast after launching, you might get no response. If this happens, wait five minutes, then refresh the page.

## **Instance Lifecycle Management**

### **Stopping an Instance**

When you don't need your instance, you can stop it to save money.

1. Select your instance
2. Go to "**Instance state**" → "**Stop instance**"

[SCREENSHOT: Instance state dropdown menu with Stop instance highlighted]

**Why Stop an Instance?**
- The longer you leave it running, the more you pay
- When you stop an instance, AWS will not bill you for it
- The instance state is kept because you have a volume attached to it, but you're not paying for the compute

**What Happens When Stopped:**
- Your web server will no longer be accessible
- Trying to refresh the webpage will result in infinite loading
- Instance state changes to "stopped"

### **Terminating an Instance**

In the Cloud, it's common to start instances and get rid of them very quickly just to try things out.

1. Go to "**Instance state**" → "**Terminate instance**"
2. You'll get a warning message
3. **Be careful** - termination permanently deletes the instance

[SCREENSHOT: Termination confirmation dialog]

**Warning**: Don't click terminate unless you really want to delete the instance permanently.

### **Restarting a Stopped Instance**

1. Go to "**Instance state**" → "**Start instance**"
2. Wait for the state to change from "pending" to "running"

[SCREENSHOT: Instance starting up, showing pending state]

**Important Discovery About Public IP Addresses:**

When you restart your instance, you'll notice something very important:

- The **public IPv4 address will likely change** (e.g., from 54.x.x.x to 3.250.x.x)
- The **private IPv4 address stays the same**
- You'll need to copy the **new public IPv4 address** to access your web server
- Remember to use HTTP protocol with the new IP address

[SCREENSHOT: Instance details showing the new public IP address after restart]

**Key Takeaway**: If you stop an instance and then start it later, AWS may change its public IPv4 address. The private IP will always stay the same, but the public IPv4 may change.

## **Key Learnings Summary**

This hands-on demonstration shows several fundamental Cloud computing concepts:

1. **Speed and Flexibility**: You can launch virtual servers in seconds without owning hardware
2. **Pay-as-you-go**: Stop instances when not needed to avoid charges
3. **User Data Power**: Automate server configuration with scripts that run on first boot
4. **IP Address Behavior**: Public IPs can change when stopping/starting, private IPs remain constant
5. **Security Groups**: Act as virtual firewalls controlling network access
6. **Free Tier Benefits**: 750 hours of t2.micro instances monthly, plus 30GB of storage

**Next Steps**: This is just scratching the surface of Cloud power. We've launched our first EC2 instance and web server in the Cloud, explored the power of API calls to stop and start instances, and demonstrated the fundamental flexibility that makes Cloud computing so powerful.