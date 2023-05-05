### Connect

* SAMPLE Database on Docker
* https://www.db2tutorial.com/db2-basics/db2-create-table/
* https://github.com/dicksontung/docker-db2/blob/master/ibm-db2/config/db2.sql
* https://www.orb-data.com/kb/how-do-you-list-db2-tables/


````
docker pull icr.io/db2_community/db2

docker run -h db2server --name db2server --restart=always --detach --privileged=true -p 50000:50000 --env-file .env_list -v /Docker:/database icr.io/db2_community/db2


docker exec -ti db2server bash -c "su - db2inst1"
db2sampl -force -sql

docker exec -i -t db2server /bin/bash

su - db2inst1
db2 connect to sample

   Database Connection Information

 Database server        = DB2/LINUXX8664 11.5.8.0
 SQL authorization ID   = DB2INST1
 Local database alias   = SAMPLE
````

### .env_list

````
LICENSE=accept
DB2INSTANCE=db2inst1
DB2INST1_PASSWORD=password
DBNAME=testdb
BLU=false
ENABLE_ORACLE_COMPATIBILITY=false
UPDATEAVAIL=NO
TO_CREATE_SAMPLEDB=false
REPODB=false
IS_OSXFS=false
PERSISTENT_HOME=true
HADR_ENABLED=false
ETCD_ENDPOINT=
ETCD_USERNAME=
ETCD_PASSWORD=

````

### Table DDL

````
db2 "CREATE TABLE traveladvisory (
  title VARCHAR(250),
  pubdate VARCHAR(250),
  link VARCHAR(250),
  guid VARCHAR(250),
  advisoryId VARCHAR(250),
  domain VARCHAR(250),
  category VARCHAR(4096),
  description VARCHAR(4096),
  uuid VARCHAR(250) NOT NULL,
  ts BIGINT NOT NULL,
  PRIMARY KEY (uuid)
  );"
 


db2 list tables;

db2 describe table traveladvisory;

                                Data type                     Column
Column name                     schema    Data type name      Length     Scale Nulls
------------------------------- --------- ------------------- ---------- ----- ------
TITLE                           SYSIBM    VARCHAR                    250     0 Yes
PUBDATE                         SYSIBM    VARCHAR                    250     0 Yes
LINK                            SYSIBM    VARCHAR                    250     0 Yes
GUID                            SYSIBM    VARCHAR                    250     0 Yes
ADVISORYID                      SYSIBM    VARCHAR                    250     0 Yes
DOMAIN                          SYSIBM    VARCHAR                    250     0 Yes
CATEGORY                        SYSIBM    VARCHAR                   4096     0 Yes
DESCRIPTION                     SYSIBM    VARCHAR                   4096     0 Yes
UUID                            SYSIBM    VARCHAR                    250     0 No
TS                              SYSIBM    BIGINT                       8     0 No

  10 record(s) selected.
  
db2 "select * from traveladvisory"

````

### Query

````
su - db2inst1
db2 connect to sample
db2 "select count(*) from traveladvisory"

````

### References

https://www.ibm.com/docs/en/db2/11.5?topic=system-linux

https://www.ibm.com/docs/en/db2/11.5?topic=linux-testing-your-db2-community-edition-docker-image-installation-systems


