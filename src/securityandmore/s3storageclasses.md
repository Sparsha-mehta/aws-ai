# Amazon S3 Storage Classes

Now let's discuss the different storage classes we have for Amazon S3. These are the storage classes you need to know for the exam, and we'll learn about all of them in depth in this lecture.

## **Available Storage Classes**

• **Amazon S3 Standard (General Purpose)**
• **Amazon S3 Infrequent Access (IA)**
• **Amazon S3 One Zone-Infrequent Access (One Zone-IA)**
• **Glacier Instant Retrieval**
• **Glacier Flexible Retrieval**
• **Glacier Deep Archive**
• **Amazon S3 Intelligent-Tiering**

When you create an object in Amazon S3, you can choose its storage class. You can also modify its storage class manually, or as we'll see, you can use Amazon S3 Lifecycle configurations to move objects automatically between all these storage classes.

## **Understanding Durability and Availability**

Before we dive into the storage classes, let's define the concepts of durability and availability.

**Durability** represents how many times an object is going to be lost by Amazon S3. Amazon S3 has very high durability - it's called "11 nines" (99.999999999%). This means that on average, if you store 10 million objects on Amazon S3, you can expect to lose a single object once every 10,000 years. The durability is the same for all storage classes in Amazon S3.

**Availability** represents how readily a service is available, and this depends on the storage class. For example, S3 Standard has 99.99% availability, which means that about 53 minutes a year, the service is not going to be available and you'll get some errors when you interact with the service. You need to take this into account when you develop your applications.

<h2>
  <strong>S3 Standard (General Purpose)</strong>
  <img src="image-14.png" alt="icon" width="50" style="vertical-align: middle; float: right;" />
</h2>

- **Availability:** 99.99%
- **Use case:** Frequently accessed data
- **Characteristics:** 
  - Default storage class
  - Low latency and high throughput
  - Can sustain two concurrent facility failures on the AWS side

- **Common use cases:**
  - Big data analytics
  - Mobile and gaming applications
  - Content distribution

## **S3 Infrequent Access (IA)**

• **Availability:** 99.9% (slightly less than Standard)
• **Use case:** Data that is less frequently accessed but requires rapid access when needed
• **Characteristics:**
  - Lower cost than S3 Standard
  - You pay a cost for retrieval
• **Common use cases:**
  - Disaster recovery
  - Backups

## **S3 One Zone-Infrequent Access (One Zone-IA)**

• **Availability:** 99.5% (even lower availability)
• **Characteristics:**
  - High durability within a single Availability Zone only
  - Data will be lost if the AZ is destroyed
• **Common use cases:**
  - Store secondary copies of backups
  - On-premises data backups
  - Data you can recreate

## **Glacier Storage Classes**

Glacier gets its name because it's "very cold" - it's low-cost object storage meant for archiving and backup. The pricing model is that you pay for storage plus you pay for retrieval costs.

### **1. Amazon S3 Glacier Instant Retrieval**
• **Retrieval time:** Milliseconds
• **Minimum storage duration:** 90 days
• **Best for:** Data accessed once a quarter that needs instant access (backup data you need within milliseconds)

### **2. Glacier Flexible Retrieval**
Previously called "Amazon S3 Glacier," but renamed as they added more tiers. This class offers three flexibility options:

• **Expedited:** 1-5 minutes retrieval
• **Standard:** 3-5 hours retrieval  
• **Bulk:** 5-12 hours retrieval (free option)
• **Minimum storage duration:** 90 days

The name explains it well: "instant" means you retrieve data instantly, while "flexible" means you're willing to wait up to 12 hours to retrieve your data.

### **3. Glacier Deep Archive**
• **Purpose:** Long-term storage with the lowest cost
• **Retrieval options:**
  - **Standard:** 12 hours
  - **Bulk:** 48 hours
• **Minimum storage duration:** 180 days
• **Best for:** Data you're ready to wait a long time to retrieve but want the absolute lowest storage cost

## **S3 Intelligent-Tiering**

This storage class allows you to move objects between access tiers based on usage patterns automatically. You incur a small monthly monitoring and auto-tiering fee, but there are no retrieval charges in S3 Intelligent-Tiering.

### **Automatic Tiers:**
1. **Frequent Access tier** - Default tier (automatic)
2. **Infrequent Access tier** - For objects not accessed for 30 days (automatic)
3. **Archive Instant Access tier** - For objects not accessed for 90 days (automatic)

### **Optional Tiers (You Can Configure):**
4. **Archive Access tier** - Configurable from 90 days to 700+ days
5. **Deep Archive Access tier** - Configurable for objects not accessed between 180 days to 700+ days

S3 Intelligent-Tiering is really designed to allow you to just sit back and relax while S3 moves objects for you automatically.

## **Key Takeaways**

When comparing all storage classes, remember that durability is 11 nines everywhere. As availability goes down, you typically have fewer zones involved. The minimum storage duration varies by class, and pricing reflects the access patterns and retrieval speeds.

You don't need to memorize all the specific numbers and pricing details, but you should understand what each storage class is designed for and when you would choose one over another.