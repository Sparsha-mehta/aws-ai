# Traditional IT Overview

## How Do Websites Work?
- We have a server hosted somewhere, and we as a web browser (Client) want to get an access to  
  that server to visualize a website

- What we are going to do as a client is, use a network

- A network is between ourselves and the server

- The client will find the network and will use the network to route the packets, the data into the  
  server

- Then the server will reply to us, and we will get the response, and we can view a website

<img src="./images-cc/Screenshot 2025-05-27 at 10.10.56 AM.png"  style="width:75%;">

- Now for the clients to find the server and the server to find the clients, you need to have IP  
  addresses.

- So clients will have the IP addresses and a server will also have an IP address.
<img src="./images-cc/Screenshot 2025-05-27 at 10.12.21 AM.png"  style="width:75%;">


- The idea behind this is when you use an IP address, you can send a request to wherever you  want to the server you want, and the server can know how to find you back.

- This is very similar to when you are writing some letters to your friend. For example, you would  write a **letter**, and that would be **your data**.

<img src="./images-cc/Screenshot 2025-05-27 at 10.14.09 AM.png"  style="width:75%;">


- You would be the **client** sending the letter (you put it in the mailbox)

- The **network** would be the **network of the post office**

- Then the post office will use the network and

  - The **address** you put on the **letter to route the letter** to the **destination** (which is in this case, the  
  **server**)

- And if your correspondent wants to reply you back, they can use the address that you put on the  
  back of the envelope to write you back, and again use the same network to get the letter back to  
  you.

- So servers are just like the network of your mail.

## What is a server composed of?

- Server is going to contain a **CPU** & **RAM**  
  - CPU is nothing but a little piece which does the <u>computations</u>. It will be helpful to do some calculations and find the results  
  - Server also needs RAM (or memory). This is going to be very, very fast memory, which will allow us to store information and retrieve it very quickly  
  - When we have a CPU and a memory bar, **what do we get**? We get the **brain**. Think of it like this:  
    - Whenever you are thinking → you are actually making computations  
    - When you retain some information → these are the memories in your brain

<img src="./images-cc/Screenshot 2025-05-27 at 10.24.49 AM.png"  style="width:75%;">


- We also need to have long-term storage of data  
  - In computers, we have some special storage to store data, for example, files

<img src="./images-cc/Screenshot 2025-05-27 at 10.31.19 AM.png"  style="width:75%;">

- Then if we want the data to be stored in a more structured way,  
  - We are going to use a database  
  - A database is going to be data formatted in a way that we can easily search it and query it.
<img src="./images-cc/Screenshot 2025-05-27 at 10.32.37 AM.png"  style="width:75%;">


- Finally, we are going to have some networking aspect, so it is going to be:  
  - Routers  
  - Switch  
  - DNS server

### So in summary, the server will have aspects of:

1. Compute  
2. Memory  
3. Storage (can be considered as Database)  
4. Networking aspect

> These are important because the cloud is going to be giving these things for us <u>on demand</u>.

## IT Terminology

- **Network** is bunch of:  
  - Cables  
  - Routers  
  - Servers  

- That are going to be connected with each other

- **Router**: It is a specific device that will forward the data packets between computer in the networks, and they will know where to send the packets on the internet, just like your post delivery service

- Now we have a packet and it arrives at the destination, there is a switch, and the switch will send the packet to the correct client on your network.

- **Switch**: Takes a packet and send it to the correct server / Client on your network. Click on this [link](https://docs.google.com/document/d/e/2PACX-1vShZUbn2n0JVsOpT8NB2irTPnVNdsjLAMTXPnIeLD4Iogn4hQQc7uR88BEbzRv-ANr1AH-uDOc7gy4V/pub) to learn more about Switch & Router.

<img src="./images-cc/Screenshot 2025-05-27 at 10.37.43 AM.png"  style="width:75%;">


## Traditionally, how IT infrastructure is built?

When people used to start their websites or companies before, they used to do it in their home or their garage. They would literally go to store, buy a server, and they put the server in their home. (Google was started in Garage).
<img src="./images-cc/Screenshot 2025-05-27 at 10.39.04 AM.png"  style="width:75%;">
<br>
Now as the website grows, you need to add more and more servers to serve that demand, and so your home starts to be filled with servers → this is bad isn’t it??
<br>
Your company grows bigger, you are generating some money. Now you plan to move to your own office and decide to allocate a special room which is going to be called a data center.
<img src="./images-cc/Screenshot 2025-05-27 at 10.40.11 AM.png"  style="width:75%;">
<br>
In a data center, you are going to have, again, your servers, and you are going to be able to scale them by adding and purchasing more and more servers.
<br>
Now this worked, and this worked for so many years......But there are problems with it like:

1. You have to pay rent for the data center  
2. You have to pay for Power Supply (Servers need electricity), cooling (Servers can get Hot) and maintenance (sometimes the servers can break down so you need someone to maintain it).  
3. (If you want to add or replace servers it will take a lot of time and then you have to hook them up in your center) Adding or replacing hardware takes time  
4. Scaling is limited (If tomorrow if you are getting 10 times bigger, you are going to need 10 times more servers, but you may not have the time or space to do so)  
5. Hire 24/7 team to monitor the infrastructure in case something goes wrong  
6. How to deal disaster? (earthquake, power shutdown, fire…)

## CAN WE EXTERNALIZE ALL THIS???

- The answer to this is YES, and that will be the Cloud. In the next section we will look into **What is Cloud Computing?**