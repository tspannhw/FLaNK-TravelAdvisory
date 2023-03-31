CREATE TABLE `sr1`.`default_database`.`traveladvisory` (
  `title` VARCHAR(2147483647),
  `pubdate` VARCHAR(2147483647),
  `link` VARCHAR(2147483647),
  `guid` VARCHAR(2147483647),
  `advisoryId` VARCHAR(2147483647),
  `domain` VARCHAR(2147483647),
  `category` VARCHAR(2147483647),
  `description` VARCHAR(2147483647),
  `uuid` VARCHAR(2147483647),
  `ts` BIGINT NOT NULL
) COMMENT 'traveladvisory'
WITH (
  'properties.bootstrap.servers' = 'kafka:9092',
  'avro-cloudera.properties.schema.registry.url' = 'http://schema-registry:7788/api/v1',
  'connector' = 'kafka',
  'avro-cloudera.schema-name' = 'traveladvisory',
  'format' = 'avro-cloudera',
  'topic' = 'traveladvisory',
  'scan.startup.mode' = 'latest-offset'
)
