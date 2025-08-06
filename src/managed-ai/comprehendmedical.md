# AI Services for the Medical Space

Now let's talk about AI services for the medical space. We've seen Amazon Transcribe, but there is a version of Amazon Transcribe that is specifically geared for the medical space.

## **Amazon Transcribe Medical**

Amazon Transcribe Medical allows you to automatically convert medical-related speech into text. The reason why this is specialized is because it has HIPAA compliance, which means that you should be able to use it in regulated environments.

**How it works:**
- Your audio goes through Amazon Transcribe Medical
- You get text output that specializes in medical terminologies such as:
  - Medicine names
  - Procedures
  - Conditions
  - Diseases

**Options available:**
- Real-time transcription with a microphone
- Upload files for batch transcription

**Use cases for Amazon Transcribe Medical:**
- Create voice applications that enable physicians to dictate medical notes
- Transcribe phone calls that report on drug safety and side effects

## **Amazon Comprehend Medical**

Once you have text from the audio, you can do even more things. You can use Amazon Comprehend Medical, which is again a version of Amazon Comprehend geared for the medical space.

**What Comprehend Medical does:**
- Detects and returns useful information from your text
- Understands physician's notes, discharge summaries, test results, and case notes
- Uses natural language processing
- Can detect protected health information (PHI) to make sure you're not sharing information that you shouldn't

**Data sources and features:**
- Data can come from Amazon S3
- Has real-time feature to analyze using Kinesis Data Firehose
- Can be combined with Amazon Transcribe to get a complete flow from audio all the way to comprehension

## **Example in Action**

Here's how it works in practice: Audio that has been transcribed by Amazon Transcribe gets passed into Comprehend Medical. Comprehend Medical is actually able to understand the full relationships of all the words.

For example, from a phrase like "40-year-old mother":
- It can understand the age
- It can understand the profession

For medicine information, it's able to understand:
- The name
- The dosage
- The frequency

So from text that has been very unstructured because it's just text, we're able to create a very structured pattern thanks to Comprehend Medical.

---

*That's it - you just need to know these services at a high level and what they do.*