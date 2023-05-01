# FLaNK-TravelAdvisory
Travel Advisory - RSS Processing - Apache NiFi - Apache Kafka - Apache Flink - SQL


## Overview


![overview](https://raw.githubusercontent.com/tspannhw/FLaNK-TravelAdvisory/main/images/travelcloud.png)

## Final Flow

![overview](images/cloudflow/nififlow1.jpg)

![overview](images/cloudflow/nififlow2.jpg)

![overview](images/cloudflow/nififlow3.jpg)



## Data Source

https://travel.state.gov/_res/rss/TAsTWs.xml


## CDF PC Data Hubs

![overview](images/cloudflow/datahubs.jpg


## Set Your Workload Password for Security

![overview](images/cloudflow/userid.jpg


## Build Your Kafka Topic

![overview](images/cloudflow/datagensmm.jpg

![overview](images/cloudflow/createakafkatopic.jpg



## Navigate to DataFlow

![overview](images/cloudflow/homepage.jpg


## Cloudera Data Flow - Catalog

![overview](images/cloudflow/flowcatalog.jpg

![overview](images/cloudflow/flowcatalogdeploy.jpg

![overview](images/cloudflow/flowcatalogdeployordownload.jpg

![overview](images/cloudflow/flowdesigndrafts.jpg



## Build Your Flow in Cloudera DataFlow Designer

![overview](images/cloudflow/dashbord.jpg

![alerts](images/cloudflow/addinboundconnections.jpg)

![overview](images/cloudflow/configure.jpg

![alerts](images/cloudflow/avroencodedwriter.jpg)



## Choose from the ReadyFlow Gallery to Speed Up Development

![overview](images/cloudflow/readyflowgallery.jpg

![overview](images/cloudflow/readyflowkafka.jpg


## Coding the Flow

![overview](images/cloudflow/invokeHTTP.jpg

![overview](images/cloudflow/queryrecord.jpg

![overview](images/cloudflow/rssxmlreader.jpg

![overview](images/cloudflow/evaluateJsonPath.jpg

![overview](images/cloudflow/splitjson.jpg

![overview](images/cloudflow/updateRecord.jpg

![overview](images/cloudflow/publishToKafka.jpg

![overview](images/cloudflow/publishToKafkaDetails.jpg

images/cloudflow/writeToKafka.jpg



## Setting Services

images/cloudflow/services.jpg

images/cloudflow/schemaregistry.jpg

images/cloudflow/setAvroWriteWithSchema.jpg

images/cloudflow/jsoninferreader.jpg

images/cloudflow/inferjsonreader.jpg

images/cloudflow/jsonrecordsetwriter.jpg

images/cloudflow/schemawrite.jpg

images/cloudflow/jsontreereaderschema.jpg

![alerts](images/cloudflow/avroencodedwriter.jpg)

![alerts](images/cloudflow/avromessagerider.jpg)

![alerts](images/cloudflow/addparameter.jpg)

![alerts](images/cloudflow/infopopup.jpg)



## Setting Parameters

images/cloudflow/parameters.jpg



## Test Session Run

images/cloudflow/dataviewer.jpg



## Publish A New Flow

images/cloudflow/publishfromdesigner.jpg

images/cloudflow/publishanewflow.jpg



## Publish a New Version of A Flow

images/cloudflow/publishnewversion.jpg
images/cloudflow/publishyourworkingflow.jpg



## Deploy Your Flow



images/cloudflow/newdeploymentstep1.jpg

images/cloudflow/newdeploymentsensitiveparameters.jpg

images/cloudflow/setparametersonstep.jpg

images/cloudflow/setsensitiveParameters.jpg


images/cloudflow/newdeploymentaddkpi.jpg

images/cloudflow/newdeploymentscaling.jpg


images/cloudflow/deploymentnameandenvironment.jpg

images/cloudflow/deployTravelAdvisory.jpg

images/cloudflow/deployment.jpg

images/cloudflow/deploymentparmsstep.jpg


images/cloudflow/builddeploycli.jpg

![alerts](images/cloudflow/alerts.jpg)

![alerts](images/cloudflow/addMoreNodes.jpg)

images/cloudflow/changenifiruntime.jpg

images/cloudflow/changeruntime.jpg

images/cloudflow/kpieditor.jpg



## Monitor Your Flow

images/cloudflow/deploymentstarted.jpg


images/cloudflow/deploymanager.jpg

images/cloudflow/deploymanager2.jpg

images/cloudflow/deploymanager3.jpg

images/cloudflow/deployedTravel.jpg

images/cloudflow/deploymentmanageractions.jpg

images/cloudflow/keyperind.jpg

images/cloudflow/runningprod.jpg

images/cloudflow/systemmetrics.jpg

images/cloudflow/jvm.jpg


## Monitor K8 Environments

images/cloudflow/monitorenvironment.jpg


## Monitor Kafka Messages with SMM in Data Hub

images/cloudflow/smmoverview.jpg

images/cloudflow/smmquickview.jpg

images/cloudflow/smmtopicsummary.jpg

images/cloudflow/smmtravelview.jpg

images/cloudflow/topictimtravel.jpg

images/cloudflow/tim_travel_smm_schema.jpg

images/cloudflow/tim_traveladvisoryjson.jpg


## Schema Registry

images/cloudflow/traveladvisoryschemareg.jpg


## Terminate a Deployed Flow

images/cloudflow/terminaterunning.jpg




## DataFlow Functions for AWS Lambda, Azure Functions and Google Cloud Functions

![GCPFun](images/cloudflow/dataflowfunctions.jpg)


## NiFi Flow Overview


![overview](https://raw.githubusercontent.com/tspannhw/FLaNK-TravelAdvisory/main/images/nifioverview.jpg)


![overview](https://raw.githubusercontent.com/tspannhw/FLaNK-TravelAdvisory/main/images/nifisendtodiscordslack.jpg)


![mlx](https://raw.githubusercontent.com/tspannhw/FLaNK-TravelAdvisory/main/images/mlx/mlx90640-2022-04-28-10-08-46.gif)



## Example Video


https://www.youtube.com/watch?v=oF0BNByVAtI&ab_channel=DatainMotion



### Resourcces

* https://github.com/tspannhw/spring-pulsar-airquality/blob/da28de457642c7e8dd5aba815921e83a7b84e1f4/MOREDATA.md

* https://github.com/tspannhw/ApacheConAtHome2020/blob/879aafa276855a3fda3dcb19eb28c5c1f9cd9a53/docs/DailyMed/README.md

* https://github.com/tspannhw/clouddatawarehouse

* https://github.com/tspannhw/CloudDemo2021/tree/main/flows

* https://github.com/tspannhw/CloudStatus

* https://community.cloudera.com/t5/Community-Articles/Using-Cloudera-Flow-Management-To-Ingest-and-Process-RSS/ta-p/313074


copyright 2023.   Tim Spann.  ![tim](images/mlx/mlx90640-2022-07-26-14-04-12.gif)
