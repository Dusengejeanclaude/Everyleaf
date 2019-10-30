MODEL NAME 
@user 

User# 

column   |  Datatype
---------|---------- 
User ID|number 
username|string 

Task# 

column      |   Datatype 
------------|--------------
Task ID|number 
task name|string 
task status|string 
task start_date|date
task end_date|date

Label# 

column    |Datatype 
----------|----------------
lable ID|number
Label name|string 
label date|date and time 

===================================
how to deploy on Heroku# step 13 
$ git add .
$ git commit -am "make it better"
$ git push heroku master 