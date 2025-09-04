# AWS S3 Storage Classes - Hands-on Demo

## Overview
In this hands-on demonstration, we'll explore AWS S3 storage classes by creating a new bucket, uploading objects with different storage classes, manually changing storage classes, and setting up automated lifecycle rules to move objects between storage tiers. This exercise will give you practical experience with all the available S3 storage options and show you how to optimize costs based on access patterns.

## Step-by-Step Procedure

### **Creating the Demo Bucket**

1. **Create a new S3 bucket**
   - Navigate to the S3 service in the AWS Console
   - Create a new bucket and name it "s3-storage-classes-demos-2022"
   - Create the bucket in any region of your choice
   - Click "Create bucket" to finalize the setup

[SCREENSHOT: S3 bucket creation screen showing bucket name field]

### **Uploading an Object and Exploring Storage Classes**

2. **Upload a test object**
   - Back in your newly created bucket, click "Upload" to add an object
   - Click "Add files" and select a test file (in this example, we're using "coffee.JPEG")
   - Before completing the upload, let's examine the storage class options

3. **Examine the available storage classes**
   
   Look at the properties of the object you're about to upload. Under the storage class section, you'll see a wide range of AWS storage class options. Here's what each one offers:

   **Key Learning**: Each storage class is designed for different use cases, with varying levels of durability, availability zones, minimum storage duration, minimum billable object size, and monitoring fees.

   **Available Storage Classes:**

   - **S3 Standard**: The basic storage class that's selected by default
   - **Intelligent Tiering**: Perfect when you don't know your data access patterns - AWS automatically performs data tiering for you based on usage
   - **Standard-IA (Infrequent Access)**: For data that needs to be infrequently accessed but still requires low latency when accessed
   - **One Zone-IA**: Stores data in only one Availability Zone - use this only for data you can recreate, as you run the risk of losing the object if that AZ is destroyed
   - **Glacier Instant Retrieval**: First level of glacier archival storage
   - **Glacier Flexible Retrieval**: Second level of glacier archival storage
   - **Glacier Deep Archive**: The deepest level of archival storage with the lowest cost
   - **Reduced Redundancy**: A deprecated storage tier that's no longer recommended (not covered in detail)

   [SCREENSHOT: Storage class selection dropdown showing all available options with their specifications]

4. **Select a storage class and upload**
   - For this demonstration, select "Standard-IA" instead of the default Standard class
   - Complete the upload process by clicking "Upload"

### **Verifying and Changing Storage Classes**

5. **Confirm the storage class assignment**
   - Return to your bucket view
   - You'll see that your uploaded object now shows "Standard-IA" as its storage class

   **Teaching Point**: This demonstrates that you can specify storage classes at upload time, allowing you to immediately place objects in the most cost-effective tier for their intended use pattern.

6. **Manually change storage classes**
   - Select your uploaded object and go to "Properties"
   - Scroll down to find the storage class section
   - Click "Edit" to change the storage class

   **Why This Matters**: You're not locked into your initial storage class choice. AWS allows you to move objects between storage classes as your access patterns change or as data ages.

7. **Practice changing between storage classes**
   - Change the object from Standard-IA to "One Zone-IA"
   - Click "Save changes"
   - Notice how the object's storage class updates in the bucket view
   
   **Key Learning**: When you move to One Zone-IA, the object will now be stored in only one availability zone, which reduces cost but increases risk.

8. **Continue experimenting with storage classes**
   - Try changing to "Glacier Instant Retrieval" - this will archive the object
   - Or switch to "Intelligent Tiering" to let AWS automatically manage the optimal tier based on access patterns

   [SCREENSHOT: Object properties screen showing storage class edit options]

### **Automating Storage Class Transitions with Lifecycle Rules**

**Teaching Context**: While manual storage class changes are useful, the real power comes from automating these transitions based on object age and access patterns. This is where lifecycle rules become essential for cost optimization.

9. **Navigate to lifecycle management**
   - Go back to your bucket's main view
   - Click on the "Management" tab
   - Select "Create lifecycle rule"

10. **Configure the lifecycle rule**
    - Name your rule "DemoRule" (or any descriptive name)
    - Choose to apply this rule to all objects in the bucket
    - Select "Move current versions between storage classes"

    **Key Concept**: Lifecycle rules allow you to automatically transition objects through different storage classes as they age, optimizing costs without manual intervention.

11. **Set up transition timeline**
    
    Configure your automated transitions with a logical progression:
    - **Move to Standard-IA after 30 days**: Objects that haven't been accessed recently move to lower-cost infrequent access storage
    - **Move to Intelligent Tiering after 60 days**: Let AWS optimize placement based on actual access patterns
    - **Move to Glacier Flexible Retrieval after 180 days**: Archive older data that's rarely accessed

    **Teaching Point**: This creates a natural progression where data becomes less expensive to store as it ages and becomes less frequently accessed.

12. **Review and create the rule**
    - Review all the transitions you've configured
    - The system will show you a summary of all planned transitions
    - Create the lifecycle rule to activate automatic transitions

    [SCREENSHOT: Lifecycle rule configuration screen showing transition timeline]

## Key Takeaways

**Storage Class Power**: S3 storage classes provide tremendous flexibility for optimizing costs based on how frequently you access your data and how quickly you need to retrieve it.

**Automation Benefits**: Lifecycle rules eliminate the need for manual storage class management, automatically moving objects through cost-optimization tiers as they age.

**Risk vs. Cost Trade-offs**: Options like One Zone-IA offer cost savings but come with increased risk - understanding these trade-offs is crucial for making informed storage decisions.

**Dynamic Management**: Storage classes aren't permanent - you can change them manually or automatically as your needs evolve, giving you complete control over your storage strategy.

## Final Note

This demonstration shows everything you need to know about S3 storage classes in a practical, hands-on way. You now understand how to select appropriate storage classes at upload time, change them manually when needed, and set up automated lifecycle rules for ongoing cost optimization.