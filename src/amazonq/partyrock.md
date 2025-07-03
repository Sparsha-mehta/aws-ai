# PartyRock

Now let's talk about PartyRock, which is in the exam guide. It's important to understand that **PartyRock is not a real AWS service**. Instead, it's a playground for you to build Gen AI apps, and in the backend, it's powered by Amazon Bedrock.

## **What is PartyRock?**

PartyRock allows anyone to build AI apps and you can access it simply without having an AWS account. This playground lets you experiment with various foundational models with no coding or accounts required.

The UI is actually very similar to Amazon Q Apps, but you have way less setup and no account required. So if you wanted to experiment with Q Apps, you could instead use PartyRock. Of course, you won't use your company internal data, but you can experiment with the different widgets that it can offer.

## **PartyRock Features and Demo**

### **Featured Apps Example: Good Eats**
Let's look at the "Good Eats" app to get restaurant recommendations based on what we like. The app requires these user inputs:
- **Location**: Las Vegas, Nevada
- **Cuisine**: American
- **Meal**: Dinner

### **Widget Configuration**
Each input widget has:
- **Widget title**: Called "cuisine" 
- **Placeholder text**: "What kind of cuisine would you like?"
- **Default value**: Can be set if needed

When you run the app using Command + Enter, you need to log in, then press play to generate results.

### **App Output**
The app generates two outputs:
1. **Restaurant recommendations**: "Here are some great recommendations for American burger restaurants in Las Vegas, Nevada for dinner"
2. **Restaurant guide**: "I'd be happy to share more details about the things I've provided you"

### **Model Configuration**
When you click "Show Configuration," you can see:
- The app uses a **model** for generation
- The **prompt is a prompt template** that says "recommend a great restaurant in [location] for [cuisine] and for [meal]"
- The template uses the user inputs from the top left
- The restaurant guide widget uses the output from the first widget to feed into the second widget

## **Creating Your Own App**

You can generate your own app using Gen AI. For example, you can say "I want to generate an app which gives recipe ideas based on the ingredients as well as a possible image of the recipe."

PartyRock will automatically try to be smart and find out the types of widgets you need and how these widgets are linked together.

### **Recipe App Example**
The generated app includes:
1. **Ingredients input**: Enter ingredients separated by comma
2. **Recipe idea generation**: Creates a recipe from the ingredients  
3. **Recipe image generation**: Creates an image of the recipe

**Example input**: tomato, cucumber, raclette cheese, olives

The app uses **Stable Diffusion XL** to generate the recipe image.

## **Available Widgets**

PartyRock offers different widget types:
- **User input**
- **Static text** 
- **Document**
- **Generation options**:
  - Text
  - Image  
  - Chat bots

## **Purpose and Value**

PartyRock serves as a very good playground to create AI apps and it's a good way for AWS to get people to use Amazon Bedrock because it shows the potential of using Amazon Bedrock and Amazon Q.