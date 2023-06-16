# Lab Jmeter 

## Configure Jmeter
### Plugins manager
Download  
https://jmeter-plugins.org/get/  
this file jmeter-plugins-manager-1.9.jar should be installed under jmeter directory /lib/ext
Restart Jmeter  
Go to Option -> Plugin manager    
Tab Available Plugins
Tick 3 Basic Graphs
Hit Apply Changes ad Restart Jmeter

## First test plan 
Put your mouse cursor on Test plan , right click     
Select Add -> Thread ( users) -> Thread Group  
Put your mouse cursor on Thread Group , right click     
Select Add -> Sampler -> Http Request  
Change the Name to **LandingPage**   
Protocol : https   
Servername: fr.wikipedia.org  
Path: /wiki/Métro_de_Paris  
Content encoding: UTF-8  
Put your mouse cursor on Thread Group , right click  
Select Add -> Sampler -> Http Request  
Change the Name to **Modify**   
Protocol : https   
Servername: fr.wikipedia.org  
Path: /w/index.php?title=Métro_de_Paris&veaction=edit  
Content encoding: UTF-8
Put your mouse cursor on Thread Group , right click  
Select Add -> Sampler -> Http Request  
Change the Name to **Modify**   
Protocol : https   
Servername: fr.wikipedia.org  
Path: /w/index.php?title=Métro_de_Paris&veaction=history    
Content encoding: UTF-8  
Put your mouse cursor on Thread Group , right click
Select Add -> Listener -> View Result Tree
Go To



## Duration and size assertions
## Reponse assertions
## XML and Schema assertions
## HTML assertion
## XPath and JSON assertions
## JSR223 assertion












## HTML Dashboard Reports



## 10 TOP jmeter Plugins 
1- **PerfMon**  
Allows collecting target server resource metrics. You need to start ServerAgent on a target machine.  
2- **Custom Thread Groups**  
This thread group offers simplified approach for configuring threads schedule.   
3- **Dummy Sampler**  
Debugging sampler that just generates result as you specified. Very convenient to debug your complex scripts. 
4- **Throughput Shaping Timer**  
Throughput Shaping Timer!  you can just set schedule of Requests Per Second easily, observing it on preview graph. This schedule can be as various as you want. It gives you the happiness of the "open workload" approach.  
5- **Custom JMeter functions**  
A number of additional JMeter functions that cover more of typical needs.  
6- **Flexible File writer**  
Flexible File Writer plugin allows writing test results in flexible format, specified via GUI.  
7- **Inter-Thread Communication**  
Global string queues for inter-thread communication.  
8- **JSON plugins**  
Allows extracting values from JSON/YAML responses using JSONPath syntax. Also ships JSONPath Assertion.  
9- **3 Basic Graphs**  
    - Average Response Time  
    - Active Threads  
    - Successful/Failed Transactions  
10- **Prometheus listener Plugin**  
A Jmeter plugin to expose sampled metrics to an endpoint to be scraped by Prometheus