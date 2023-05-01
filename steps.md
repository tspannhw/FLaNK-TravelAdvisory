# FLaNK-TravelAdvisory

Travel Advisory - RSS Processing - Apache NiFi - Apache Kafka - Apache Flink - SQL


## Overview


![overview](https://raw.githubusercontent.com/tspannhw/FLaNK-TravelAdvisory/main/images/traveladvisory.png)


## Final Flow

![overview](images/cloudflow/nififlow1.jpg)



## Adding Processors to the Designer

Here I list most of the processors available

https://www.datainmotion.dev/2023/04/dataflow-processors.html



## Flow Parameters

Go to parameters and enter all you will need for the flow.


![overview](images/slack/gotoparameters.jpg)


You can add all the ones listed below.

![overview](images/slack/parameterslist.jpg)



## Flow Walk Through

If you are loading my pre-built flow when you enter you will see the details for the process group in the configuration pallet.

We add an invokeHTTP processor and set the parameters.


![overview](images/slack/step1.jpg)


![details](images/slack/step1b.jpg)

Now we can add a parameter for the HTTP URL for Travel Advisories.



![overview](images/slack/step2.jpg)

Connect InvokeHTTP to QueryRecord.   Name your connection for monitoring later.


![overview](images/slack/step3.jpg)

QueryRecord, convert XML(RSS) to JSON, you will need RSSXMLReader and TravelJsonRecordSetWriter.


![overview](images/slack/step4.jpg)

Connect QueryRecord to SplitJson if no errors.


![overview](images/slack/step5.jpg)

SplitJson we set the JsonPath Expression to ```` $.*.*.item ````

![overview](images/slack/step6.jpg)

![overview](images/slack/step7.jpg)

![overview](images/slack/step8.jpg)

![overview](images/slack/step9.jpg)

![overview](images/slack/step9b.jpg)

![overview](images/slack/step10.jpg)

![overview](images/slack/step11.jpg)

![overview](images/slack/step12.jpg)

![overview](images/slack/step14.jpg)

![overview](images/slack/step14b.jpg)

![overview](images/slack/step15.jpg)

![overview](images/slack/step16.jpg)

![overview](images/slack/step17.jpg)

![overview](images/slack/step17b.jpg)

![overview](images/slack/step18.jpg)

![overview](images/slack/step19.jpg)

![overview](images/slack/step20slackgroupinside.jpg)

![overview](images/slack/step21.jpg)

![overview](images/slack/step22PutSlack.jpg)



## Flow Services

![services](images/slack/services.jpg)




@copy; 2023 Tim Spann https://datainmotion.dev/
