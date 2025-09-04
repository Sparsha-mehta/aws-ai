# Amazon EC2 

Now that we're ready to dive into AWS services, we will create our first website on AWS using EC2.

## **What is Amazon EC2?**

EC2 is one of the most popular AWS offerings and is used everywhere. EC2 stands for **Elastic Compute Cloud**, and this is the way to do infrastructure as a service on AWS.

EC2 is not just one service - it's composed of many components at a high level:

- **EC2 instances** - Virtual machines you can rent
- **EBS volumes** - Virtual drives to store data
- **Elastic Load Balancer** - Distribute load across machines
- **Auto Scaling Group (ASG)** - Scale services automatically

Don't worry, we will see all of these in depth during this course.

Knowing how to use EC2 in AWS is fundamental to understanding how the cloud works. As mentioned before, the cloud is about being able to rent compute resources whenever you need them on demand, and EC2 is just that.

## **EC2 Instance Configuration Options**

When setting up our virtual servers that we rent from AWS, we can choose several key components:

### **Operating System**
Three main options available:
- **Linux** - Most popular choice
- **Windows**
- **Mac OS**

### **Compute Resources**
- **CPU** - How much compute power and cores you want
- **RAM** - How much random access memory you need

### **Storage Options**
- **Network-attached storage** - EBS or EFS (attached through the network)
- **Hardware-attached storage** - EC2 instance store

We have a whole section on storage, so don't worry about the details yet.

### **Network Configuration**
- **Network card speed** - Do you want a fast network card?
- **Public IP type** - What kind of public IP do you want?
- **Security groups** - Firewall rules for your EC2 instance

### **Bootstrap Script**
- **EC2 User Data** - Script to configure the instance at first launch

As you'll see in the hands-on exercises, there are even more options at other certification levels that you need to know about EC2 instances. But at the core, what you need to remember is that you can choose pretty much how you want your virtual machine to be, and you can rent it from AWS. That is the power of the cloud - you can do this in the blink of an eye.

## **EC2 User Data (Bootstrapping)**

It is possible to bootstrap our instances using the EC2 User Data script.

### **What is Bootstrapping?**
Bootstrapping means launching commands when the machine starts. The script runs only once when the instance first starts and will never run again.

### **Purpose of EC2 User Data**
The EC2 User Data has a very specific purpose: **to automate boot tasks**. Hence the name bootstrapping.

### **Common Boot Tasks to Automate**
- Install updates
- Install software
- Download common files from the internet
- Anything you can think of

Just know that the more you add into your User Data script, the more your instance has to do at boot time.

### **Important Note**
The EC2 User Data script runs with the **root user**, so any command you have will have sudo rights.

---

This was a short introduction to EC2. Don't worry, it's going to get very practical very soon.