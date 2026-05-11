/* ****USING ORACLE DATABASE****
Script Purpose:
This script create a new database which create in DBCA (Server level)
Additionally, The script sets up three schemas within the database: 'Bronze','Silver,'Gold'.

*/


CONNECT dataware_house/YourPassword123;

select sysdate from dual;

CREATE USER bronze IDENTIFIED BY password;
do
CREATE USER silver IDENTIFIED BY password;
do
CREATE USER gold IDENTIFIED BY password;

GRANT CREATE SESSION, CREATE TABLE TO gold;

CREATE USER datawarehouse IDENTIFIED BY pass123;

GRANT CONNECT, RESOURCE TO datawarehouse;

-- How to view schema's
SELECT username FROM dba_users;

SELECT username FROM all_users;


SELECT sys_context('USERENV','CURRENT_SCHEMA') FROM dual;

SELECT user FROM dual;

SELECT table_name FROM all_tables WHERE owner = 'BRONZE';

SELECT * FROM user_tables;
