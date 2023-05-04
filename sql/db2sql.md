### Connect

* SAMPLE Database on Docker
* https://www.db2tutorial.com/db2-basics/db2-create-table/
* https://github.com/dicksontung/docker-db2/blob/master/ibm-db2/config/db2.sql
* https://www.orb-data.com/kb/how-do-you-list-db2-tables/


````
su - db2inst1
db2 connect to sample

   Database Connection Information

 Database server        = DB2/LINUXX8664 11.5.8.0
 SQL authorization ID   = DB2INST1
 Local database alias   = SAMPLE
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
  ts INT NOT NULL,
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
TS                              SYSIBM    INTEGER                      4     0 No

  10 record(s) selected.
  
db2 "select * from traveladvisory"

````


### Query

````
su - db2inst1
db2 connect to sample
db2 "select count(*) from traveladvisory"

````S
