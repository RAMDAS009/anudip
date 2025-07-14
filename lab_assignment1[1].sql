Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.42 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use lab1;
Database changed
mysql> create table student(student_id varchar(10) not null primary key,first_name varchar(15) not null, last_name varchar(15) not null);
Query OK, 0 rows affected (0.01 sec)

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | varchar(10) | NO   | PRI | NULL    |       |
| first_name | varchar(15) | NO   |     | NULL    |       |
| last_name  | varchar(15) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into student values('S101','RAMDAS','SAKPAL');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values('S102','ANUJ','MHATRE');
Query OK, 1 row affected (0.00 sec)

mysql> insert into student values('S103','AYUSH','PAWAR');
Query OK, 1 row affected (0.00 sec)

mysql> insert into student values('S104','KARAN','PATIL');
Query OK, 1 row affected (0.00 sec)

mysql> insert into student values('S105','YASH','MEHETA');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+------------+------------+-----------+
| student_id | first_name | last_name |
+------------+------------+-----------+
| S101       | RAMDAS     | SAKPAL    |
| S102       | ANUJ       | MHATRE    |
| S103       | AYUSH      | PAWAR     |
| S104       | KARAN      | PATIL     |
| S105       | YASH       | MEHETA    |
+------------+------------+-----------+
5 rows in set (0.00 sec)

mysql>  create table enrollment(e_id varchar(10) not null primary key,course_id varchar(10) not null,student_id varchar(10),foreign key(student_id) references student(student_id));
Query OK, 0 rows affected (0.03 sec)

mysql> desc enrollment;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| e_id       | varchar(10) | NO   | PRI | NULL    |       |
| course_id  | varchar(10) | NO   |     | NULL    |       |
| student_id | varchar(10) | YES  | MUL | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into enrollment values('E201','C301','S101');
Query OK, 1 row affected (0.00 sec)

mysql> insert into enrollment values('E202','C302','S102');
Query OK, 1 row affected (0.00 sec)

mysql> insert into enrollment values('E203','C303','S103');
Query OK, 1 row affected (0.00 sec)

mysql> insert into enrollment values('E204','C304','S104');
Query OK, 1 row affected (0.00 sec)

mysql> insert into enrollment values('E205'C305',null);
Query OK, 1 row affected (0.00 sec)

mysql> select * from enrollment;
+------+-----------+------------+
| e_id | course_id | student_id |
+------+-----------+------------+
| E201 | C301      | S101       |
| E202 | C302      | S102       |
| E203 | C303      | S103       |
| E204 | C304      | S104       |
+------+-----------+------------+
4 rows in set (0.00 sec)

mysql> select first_name,last_name,e_id,course_id from student inner join enrollment on student.student_id=enrollment.student_id;
+------------+-----------+------+-----------+
| first_name | last_name | e_id | course_id |
+------------+-----------+------+-----------+
| RAMDAS     | SAKPAL    | E201 | C301      |
| ANUJ       | MHATRE    | E202 | C302      |
| AYUSH      | PAWAR     | E203 | C303      |
| KARAN      | PATIL     | E204 | C304      |
+------------+-----------+------+-----------+
4 rows in set (0.00 sec)

mysql> select first_name,last_name,e_id,course_id from student left join enrollment on student.student_id=enrollment.student_id;
+------------+-----------+------+-----------+
| first_name | last_name | e_id | course_id |
+------------+-----------+------+-----------+
| RAMDAS     | SAKPAL    | E201 | C301      |
| ANUJ       | MHATRE    | E202 | C302      |
| AYUSH      | PAWAR     | E203 | C303      |
| KARAN      | PATIL     | E204 | C304      |
| YASH       | MEHETA    | NULL | NULL      |
+------------+-----------+------+-----------+
5 rows in set (0.00 sec)

mysql> select first_name,last_name,e_id,course_id from student right join enrollment on student.student_id=enrollment.student_id;
+------------+-----------+------+-----------+
| first_name | last_name | e_id | course_id |
+------------+-----------+------+-----------+
| RAMDAS     | SAKPAL    | E201 | C301      |
| ANUJ       | MHATRE    | E202 | C302      |
| AYUSH      | PAWAR     | E203 | C303      |
| KARAN      | PATIL     | E204 | C304      |
+------------+-----------+------+-----------+
4 rows in set (0.00 sec)

mysql> select first_name,last_name,e_id,course_id from student cross join enrollment on student.student_id=enrollment.student_id;
+------------+-----------+------+-----------+
| first_name | last_name | e_id | course_id |
+------------+-----------+------+-----------+
| RAMDAS     | SAKPAL    | E201 | C301      |
| ANUJ       | MHATRE    | E202 | C302      |
| AYUSH      | PAWAR     | E203 | C303      |
| KARAN      | PATIL     | E204 | C304      |
+------------+-----------+------+-----------+
4 rows in set (0.00 sec)
