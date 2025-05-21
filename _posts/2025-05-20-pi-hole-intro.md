---
layout: post
title: Introducing pi-hole (Ad-blocker)
date: 2025-05-20
---

If you don't already know about pi-hole, you should check it out at  
[https://pi-hole.net](https://pi-hole.net)!

It provides DNS-level ad-blocking for all of the devices on your network. You  
simply install the software on your home network and configure your router to  
use the pi-hole as your DNS server.

The installation process looked like the following for me,
1. Install pi-hole on my raspberry-pi
```
curl -sSL https://install.pi-hole.net | bash
```
2. Gave my raspberry-pi a static IP

3. Configured router to use the raspberry-pi with pi-hole as my DNS server.  

    ![Orbi DNS setting](/assets/posts/pi-hole-intro/orbi_dns.png "Orbi DNS")

4. Success! Here's a simple example of Tom's Hardware without ads.  

    ![Tom's Hardware Website without Ads](/assets/posts/pi-hole-intro/toms_hw_no_ads.png "Tom's Hardware No Ads")

There are a couple of caveats however. First, pi-hole will prevent Google's  
sponsored links from working. These are typically the first couple of  
links that are returned after a search. I'm sure you'd be able to configure  
pi-hole to allow these links if you'd like. Second, if your raspberry-pi goes  
down so will the internet for your household. This happened only a couple  
of times for me and a quick raspberry-pi reboot fixed the problem.