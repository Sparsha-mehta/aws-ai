# RAG and Knowledge Bases

## What is RAG?

RAG stands for Retrieval Augmented Generation. Behind this very fancy name, there is a very simple concept. This allows your foundation model to reference a data source from outside of its training data without being fine-tuned.

## How RAG Works

Now that we understand what RAG is, let's see how it actually works. We have a knowledge base that is being built and managed by Amazon Bedrock. For this, it must rely on a data source, for example Amazon S3.

**The RAG Process:**

1. Your data is stored in Amazon S3
2. Bedrock automatically builds a knowledge base from this data
3. A user asks a question to your foundation model (e.g., "Who is the product manager for John?")
4. The foundation model doesn't know anything about John because this is specific company data
5. A search happens automatically in the knowledge base (all behind the scenes)
6. The knowledge base retrieves relevant information from the vector database
7. Retrieved text is combined with the original query as an "augmented prompt"
8. The foundation model generates a response using both the original question and the retrieved context

**Example Response Flow:**
- Query: "Who is the product manager for John?"
- Retrieved information: Support contacts, product manager Jesse Smith, engineer Sarah Ronald
- Final response: "Jesse Smith is the product manager for John"

This is called Retrieval Augmented Generation because we retrieve data outside of the foundation model, and it's augmented generation because we augment the prompt with external data that has been retrieved.

## Knowledge Bases in Amazon Bedrock

RAG in AWS Amazon Bedrock is implemented as a knowledge base. This is very helpful when you need to have data that is very up-to-date, in real time, and needs to be fed into the foundation model.

**Example Use Case:**
When you ask "Give me talking points for benefits of air travel," the response includes citations linking back to source documents like "Air travel.pdf" stored in Amazon S3.

## Vector Databases

Everything goes into a vector database. Vector databases on AWS and Amazon Bedrock can be of several kinds:

**AWS Services:**
- **Amazon OpenSearch Service**
- **Amazon Aurora**

**Third-Party Options:**
- MongoDB
- Redis
- Pinecone

If you don't specify anything, AWS will create an OpenSearch Service serverless database for you automatically.

### Choosing the Right Vector Database

**High Performance Options:**
- **Amazon OpenSearch Service** - Search and analytics database with scalable index management and very fast nearest neighbor search capability (KNN). Best for real-time similarity queries and storing millions of vector embeddings
- **Amazon DocumentDB** - NoSQL database with MongoDB compatibility, also excellent for real-time similarity queries and millions of vector embeddings

**Relational Database Options:**
- **Amazon Aurora** - Proprietary AWS database that's cloud-friendly
- **Amazon RDS for PostgreSQL** - Open source relational database

**Graph Database Option:**
- **Amazon Neptune** - For graph database requirements

## Embeddings Models

We need an embeddings model to convert data into vectors. Options include Amazon Titan or Cohere. The embeddings model and the foundation model can be different - they don't need to match.

**The Process:**
1. S3 documents are chunked (split into different parts)
2. These parts are fed into the embeddings model
3. The model generates vectors
4. Vectors are placed in the vector database
5. Vectors become easily searchable for RAG queries

## Data Sources for Amazon Bedrock

Amazon Bedrock supports several data sources:

- **Amazon S3** - Cloud file storage
- **Confluence**
- **Microsoft SharePoint**
- **Salesforce**
- **Web pages** - Including websites and social media feeds

Amazon Bedrock will likely add more sources over time, but from an exam perspective, remembering Amazon S3 and these core sources should be sufficient.

## Use Cases for Amazon Bedrock RAG

**Customer Service ChatBot:**
- Knowledge base: Products, features, specifications, troubleshooting guides, FAQs
- Application: ChatBot that answers customer queries

**Legal Research and Analysis:**
- Knowledge base: Laws, regulations, case precedents, legal opinions, expert analysis
- Application: ChatBot for specific legal queries

**Healthcare Question Answering:**
- Knowledge base: Diseases, treatments, clinical guidelines, research papers, patient data
- Application: ChatBot for complex medical queries

RAG opens up a lot of possibilities for doing generative AI on AWS, making it possible to create intelligent applications that can access and reason over your specific organizational knowledge.