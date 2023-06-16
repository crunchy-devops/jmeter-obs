# Jenkins
Go to manage-Jenkins -> Manage plugins -> Available -> Filter GitHub
Go to manage-Jenkins -> Manage plugins -> Tab available -> Filter Log   Parser 
Go to manage-Jenkins -> Manage plugins -> Tab available -> Filter Performance  
Check and install without restart

go to new Item  type jmeter-obs  
Freestyle  
OK 
Select Git and enter your repo  

Build  Execute build and copy/paste
```shell script 
jmeter -Jjmeter.save.saveservice.output_format=xml -Jjmeter.save.saveservice.response_data.on_error=true -n -t start.jmx  -l testresult.jlt
```
### Add a Post-build actions
Parserules   
Select Console ouptut (build log) parsing  
Tick Mark build Failed on Error  
Tick Use project rule  
Path to rule file in workspace :  parserules    


### Performance Plugin
Go to post-build Action  
Select Publish Performance test result report    
Source data files :  testresult.jlt   
Press apply and save