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
task category|string 
task duration|time and date

Label# 

column    |Datatype 
----------|----------------
lable ID|number
Label name|string 
label date|date and time 

#SCHEMA
---------------------------
@USER 

|User ID |  Username |
|--------|-----------|
|1       |   Jean    |
|2       |   Peter   |


@TASK 

|Task ID  | name          | category   |duration |
|------------------------------------------------|
|1        | prototyiping  |  business  | 3 months|
|2        | designing     |  business  | 1 month |
|3        | deplying      |  business  | 3 months|


@LABEL

|lable ID  |label name  |label date |
|-----------------------------------|
|1         |requirements|10/08/2019 |
|2         |analysis    |20/09/2019 |
