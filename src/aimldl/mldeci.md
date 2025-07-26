# When Machine Learning Is Not Appropriate

So we've talked a lot about AI and machine learning, but a question you may have is: when is machine learning not appropriate?

## **Deterministic Problems: When Code is Better**

Imagine you have a well-framed problem like this one: "A deck contains five red cards, three blue cards, and two yellow cards. What is the probability of drawing a blue card?"

If I were to ask you, we have 10 cards in total. Three of them are blue. So the blue probability is going to be 3 out of 10. This is very easy - you just computed it. Therefore, you should be able to write some computer code to actually determine this solution.

### **Why Choose Code Over ML for Deterministic Problems**

For deterministic problems - when the solution can be computed very easily - it's better to write computer code that is going to be adapted to the problem.

**Key reasons:**

• **Exact answers**: If you use any kind of machine learning or AI technique such as supervised learning, unsupervised learning, or reinforcement learning, you may get an approximation of the results. That's why we measure error and so on. But here, we don't want to have an answer with error. We want to have the exact answer.

• **Perfect solutions**: I know some of you may say that nowadays some large language models have reasoning capabilities and therefore they can come up with the right answer. And that's true - they're getting better and better at reasoning. But their solution is not perfect, and so therefore, we have a worse solution.

• **Best approach**: The best solution for a very well-defined problem will be to write code.

## **Key Takeaway**

It's up to you to understand when ML is or isn't appropriate, and the exam may ask you one question about it.