# More Gen Ai Concepts (Tokenization, Context Windows, and Embeddings)

Now that we've seen Gen AI and how to use it, let's look at bigger concepts around Gen AI. These are more theoretical, but very important to understand, and the exam can ask you a few things about them.

## **Tokenization**

Tokenization is the process of converting raw text into a sequence of tokens. Here's a sentence: "Wow, learning AWS with Stephane Maarek is immensely fun," and here we have different ways of converting these words into tokens.

**Types of Tokenization:**
- **Word-based tokenization** - The text is split into individual words
- **Subword tokenization** - Some words can be split too, which is very helpful for long words and for the model to have fewer tokens

For example, the word "unacceptable" can be split into "un" (negative prefix) and "acceptable" (the base token). This way, the model just needs to understand that "un" is a negative and "acceptable" is the token "acceptable."

**How Tokenization Works:**
You can experiment at OpenAI's website called Tokenizer. Using the sentence "Wow, learning with Stephane is immensely fun!" as an example:
- "Wow" becomes one token
- The comma itself is a token as well
- "Learning AWS with Steph" - Stephane was split in two, because probably "Steph" and "Stephane" are very close
- "Maarek" - "aare" is being split as well
- "Is immensely fun" - all of these are tokens
- The exclamation point is also a token

Tokenization converts these words into tokens because now each token has an ID, and it's much easier to deal with IDs than to deal with the raw text itself.

## **Context Windows**

Context is super important. This is the number of tokens that an LLM can consider when generating text. Different models have different context windows, and the larger the context window, the more information and coherence you get.

It's kind of a race now to have the greatest context window, because the more context window you have, the more information you can feed to your Gen AI model.

**Context Window Comparisons:**
- **GPT-4 Turbo**: 128,000 tokens
- **Claude 2.1**: 200,000 tokens
- **Google Gemini 1.5 Pro**: 1 million tokens (up to 10 million tokens in research)

For 1 million tokens, you can have:
- One hour of video fed to your model
- 11 hours of audio
- Over 30,000 lines of code
- 700,000 words

**Important Considerations:**
When you have a large context window, you're going to get more benefit out of it, but it will require more memory and more processing power, and therefore may cost a little more. When you consider a model, the context window is going to be probably the first factor to consider, making sure that it fits your use case.

## **Embeddings**

We've seen embeddings a little bit with RAG, but now we're going to go deep into how that works. The idea is that you want to create a vector (an array of numerical values) out of text, images, or audio.

**The Embedding Process:**

1. **Start with text**: "The cat sat on the mat"
2. **Tokenization**: Each word is extracted - "the," "cat," "sat," "on," "the," "mat"
3. **Token IDs**: Every word is converted into a token ID (dictionary that says the word "the" is 865, etc.)
4. **Embedding model**: Create a vector for each token
   - The token "cats" is converted to a vector of many values (0.025, etc.)
   - The word "the" has its own vector
   - Vectors can be very big (could be 100 values)
5. **Storage**: All these vectors are stored in a vector database

**Why Convert Tokens to Vectors?**
When we have vectors with very high dimensionality, we can actually encode many features for one input token:
- The meaning of the word
- The syntactic role
- The sentiment (positive or negative word)
- Much more

The model is able to capture a lot of information about the word just by storing it into a high-dimensionality vector, and this is what's used for vector databases and RAG.

**Search Applications:**
Because embedding models can be easily searchable thanks to nearest neighbor capability in vector databases, it's a very good way to use an embedding model to power a search application, and that's something that can come up in the exam.

## **Semantic Relationships in Embeddings**

Words that have a semantic relationship (meaning they're similar) will have similar embeddings.

**Example Visualization:**
If we take the tokens "dog," "puppy," "cat," and "house," and make a vector with 100 dimensions (100 numerical values for each word or token), it's very difficult for humans to visualize 100 dimensions. We're very good at two dimensions (sheet of paper) and three dimensions (what we can visualize with our eyes), but 100 dimensions is very difficult.

**Dimensionality Reduction:**
To visualize these things, sometimes we do dimensionality reduction - we reduce these 100 dimensions to two or three dimensions. In a two-dimension diagram, we would see:
- Puppy and dog are related (because a puppy is a small dog)
- Cat is not too far away from dog (because it's an animal)
- House is very different, so it's far away on that diagram

**Color Embedding Visualization:**
Another way to visualize high-dimension vectors is to use colors. Each combination of numbers makes a color, and visually we can see that puppy and dog have very similar colors because they're very similar, but house is very different.

**Practical Application:**
There is a semantic relationship between tokens with similar embeddings, and that's why we use them. Once we have them in a vector database, we can do a similarity search on the vector database. We give it "dog" and automatically, we'll be able to pull out all the tokens that have a similar embedding as "dog."

---

These concepts appear in the exam, so hopefully now you understand them and you'll be all good.