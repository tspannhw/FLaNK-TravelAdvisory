# FLaNK-TravelAdvisory

Travel Advisory - RSS Processing - Apache NiFi - Apache Kafka - Apache Flink - SQL


## Overview


![overview](https://raw.githubusercontent.com/tspannhw/FLaNK-TravelAdvisory/main/images/travelcloud.png)


##  Video Walk Through

https://www.youtube.com/watch?v=-r8zf_nfxCw&ab_channel=DatainMotion

## Final Flow

![overview](images/cloudflow/nififlow1.jpg)

![overview](images/cloudflow/nififlow2.jpg)

![overview](images/cloudflow/nififlow3.jpg)



## Data Source

https://travel.state.gov/_res/rss/TAsTWs.xml


## CDF PC Data Hubs

![overview](images/cloudflow/datahubs.jpg)


## Set Your Workload Password for Security

![overview](images/cloudflow/userid.jpg)


## Build Your Kafka Topic

![overview](images/cloudflow/datagensmm.jpg)

![overview](images/cloudflow/createakafkatopic.jpg)



## Navigate to DataFlow

![overview](images/cloudflow/homepage.jpg)


## Cloudera Data Flow - Catalog

![overview](images/cloudflow/flowcatalog.jpg)

![overview](images/cloudflow/flowcatalogdeploy.jpg)

![overview](images/cloudflow/flowcatalogdeployordownload.jpg)

![overview](images/cloudflow/flowdesigndrafts.jpg)



## Build Your Flow in Cloudera DataFlow Designer

For a step-by-step flow walkthrough, see https://github.com/tspannhw/FLaNK-TravelAdvisory/blob/main/steps.md

![overview](images/cloudflow/dashbord.jpg)

![alerts](images/cloudflow/addinboundconnections.jpg)

![overview](images/cloudflow/configure.jpg)

![alerts](images/cloudflow/avroencodedwriter.jpg)



## Choose from the ReadyFlow Gallery to Speed Up Development

![overview](images/cloudflow/readyflowgallery.jpg)

![overview](images/cloudflow/readyflowkafka.jpg)


## Coding the Flow

![overview](images/cloudflow/invokeHTTP.jpg)

![overview](images/cloudflow/queryrecord.jpg)

![overview](images/cloudflow/rssxmlreader.jpg)

![overview](images/cloudflow/evaluateJsonPath.jpg)

![overview](images/cloudflow/splitjson.jpg)

![overview](images/cloudflow/updateRecord.jpg)

![overview](images/cloudflow/publishToKafka.jpg)

![overview](images/cloudflow/publishToKafkaDetails.jpg)

![overview](images/cloudflow/writeToKafka.jpg)



## Setting Services

![overview](images/cloudflow/services.jpg)

![overview](images/cloudflow/schemaregistry.jpg)

![overview](images/cloudflow/setAvroWriteWithSchema.jpg)

![overview](images/cloudflow/jsoninferreader.jpg)

![overview](images/cloudflow/inferjsonreader.jpg)

![overview](images/cloudflow/jsonrecordsetwriter.jpg)

![overview](images/cloudflow/schemawrite.jpg)

![overview](images/cloudflow/jsontreereaderschema.jpg)

![alerts](images/cloudflow/avroencodedwriter.jpg)

![alerts](images/cloudflow/avromessagerider.jpg)

![alerts](images/cloudflow/addparameter.jpg)

![alerts](images/cloudflow/infopopup.jpg)



## Setting Parameters

![overview](images/cloudflow/parameters.jpg)



## Test Session Run

![overview](images/cloudflow/dataviewer.jpg)



## Publish A New Flow

![overview](images/cloudflow/publishfromdesigner.jpg)

![overview](images/cloudflow/publishanewflow.jpg)



## Publish a New Version of A Flow

![overview](images/cloudflow/publishnewversion.jpg)
![overview](images/cloudflow/publishyourworkingflow.jpg)



## Deploy Your Flow



![overview](images/cloudflow/newdeploymentstep1.jpg)

![overview](images/cloudflow/newdeploymentsensitiveparameters.jpg)

![overview](images/cloudflow/setparametersonstep.jpg)

![overview](images/cloudflow/setsensitiveParameters.jpg)

![overview](images/cloudflow/newdeploymentaddkpi.jpg)

![overview](images/cloudflow/newdeploymentscaling.jpg)

![overview](images/cloudflow/deploymentnameandenvironment.jpg)

![overview](images/cloudflow/deployTravelAdvisory.jpg)

![overview](images/cloudflow/deployment.jpg)

![overview](images/cloudflow/deploymentparmsstep.jpg)

![overview](images/cloudflow/builddeploycli.jpg)

![alerts](images/cloudflow/alerts.jpg)

![alerts](images/cloudflow/addMoreNodes.jpg)

![overview](images/cloudflow/changenifiruntime.jpg)

![overview](images/cloudflow/changeruntime.jpg)

![overview](images/cloudflow/kpieditor.jpg)



## Monitor Your Flow

![overview](images/cloudflow/deploymentstarted.jpg)

![overview](images/cloudflow/deploymanager.jpg)

![overview](images/cloudflow/deploymanager2.jpg)

![overview](images/cloudflow/deploymanager3.jpg)

![overview](images/cloudflow/deployedTravel.jpg)

![overview](images/cloudflow/deploymentmanageractions.jpg)

![overview](images/cloudflow/keyperind.jpg)

![overview](images/cloudflow/runningprod.jpg)

![overview](images/cloudflow/systemmetrics.jpg)

![overview](images/cloudflow/jvm.jpg)


## Monitor K8 Environments

![overview](images/cloudflow/monitorenvironment.jpg


## Monitor Kafka Messages with SMM in Data Hub

![overview](images/cloudflow/smmoverview.jpg)

![overview](images/cloudflow/smmquickview.jpg)

![overview](images/cloudflow/smmtopicsummary.jpg)

![overview](images/cloudflow/smmtravelview.jpg)

![overview](images/cloudflow/topictimtravel.jpg)

![overview](images/cloudflow/tim_travel_smm_schema.jpg)

![overview](images/cloudflow/tim_traveladvisoryjson.jpg)


## Schema Registry

![overview](images/cloudflow/traveladvisoryschemareg.jpg)


## Terminate a Deployed Flow

![overview](images/cloudflow/terminaterunning.jpg)

## DataFlow Functions for AWS Lambda, Azure Functions and Google Cloud Functions

![GCPFun](images/cloudflow/dataflowfunctions.jpg)


## NiFi Flow Overview


![overview](https://raw.githubusercontent.com/tspannhw/FLaNK-TravelAdvisory/main/images/nifioverview.jpg)


![overview](https://raw.githubusercontent.com/tspannhw/FLaNK-TravelAdvisory/main/images/nifisendtodiscordslack.jpg)


![mlx](https://raw.githubusercontent.com/tspannhw/FLaNK-TravelAdvisory/main/images/mlx/mlx90640-2022-04-28-10-08-46.gif)


## SQL Stream Builder (Apache Flink SQL)

![ssbsql](images/advisoryqueryrunning.jpg)
![mv](images/materializedviewtraveldefine.jpg)
![ssb](images/ssbmvsave.jpg)
![ssb](images/ssbmvsaved.jpg)
![materializedview](images/materializedviewrestapijson.jpg)

![flinkjob](images/flinkjob.jpg)




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
