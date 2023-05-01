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

We then connect SplitJson to SplitRecord.


![overview](images/slack/step7.jpg)

For SplitRecord we set the Record Reader to JSON_Reader_InferRoot, the Record Writer to TravelJsonRecordSetWriter and records per split to 1.


![overview](images/slack/step8.jpg)

SplitRecord connected to EvaluateJSONPath


![overview](images/slack/step9.jpg)


![overview](images/slack/step9b.jpg)

We set the Destination to flowfile-attribute, Return Type to json and add several new fields.

* description  - $.description
* guid - $.guid
* identifier - $.identifier
* link - $.link
* pubdate - $.pubDate
* title - $.title



![overview](images/slack/step10.jpg)

We connect EvaluateJsonPath to SplitJson.


![overview](images/slack/step11.jpg)

For SplitJson we set the JsonPath Expression to $.category


![overview](images/slack/step12.jpg)

From SplitJson to UpdateRecord

![overview](images/slack/step14.jpg)



![overview](images/slack/step14b.jpg)

In UpdateRecord, we set Record Reader to JSON_Reader_InferRoot and Record Writer to TravelJsonRecordSetWriter.   We set Replacement Value Strategy to Literal Value.

We add new fields for our new record format.

* /advisoryId - ${filename}
* /description - ${description}
* /domain - ${identifier:trim()}
* /guid - ${guid}
* /link - ${link}
* /pubdate - ${pubdate}
* /title - ${title}
* /ts - ${now():toNumber()}
* /uuid - ${uuid} 

![overview](images/slack/step15.jpg)

Next we connect UpdateRecord to our Slack Sub-Processor Group

![overview](images/slack/step16.jpg)

The other branches flows from UpdateRecord to Write to Kafka

![overview](images/slack/step17.jpg)

![overview](images/slack/step17b.jpg)

For PublishKafka2RecordCDP, there's a lot of parameters to set.  This is why we recommend starting with a ReadyFlow.

There are a lot of parameters here, we need to set our Kafka Brokers, Destination Topic Name, JSON_Reader_InferRoot for Reader, AvroRecordSetWriterHWX for writer,
turn transactions off, Guarantee Replicated Delivery, Use Content as Record Value, SASL_SSL/Plain security, Username to your login user id or machine user and then the associated password,
the SSL Context maps to the Default NiFi SSL Context Service is built in, set uuid as the Message Key Field and finally set the client.id to a unique Kafka producer id.

![overview](images/slack/step18.jpg)

![overview](images/slack/step19.jpg)

We then send messages also to Slack about our travel advisories.

![overview](images/slack/step20slackgroupinside.jpg)

We only need one processor to send to slack.

![overview](images/slack/step21.jpg)

We connect input to our PutSlack processor.

![overview](images/slack/step22PutSlack.jpg)

For PutSlack we need to set the Webhook URL to the one from your Slack group admin and put the text from the ingest, set your channel to the channel mapped in the web hook and set a username for your bot.



## Flow Services

![services](images/slack/services.jpg)

All these services need to be set.


@copy; 2023 Tim Spann https://datainmotion.dev/
