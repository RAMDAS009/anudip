mysql> use practice;
Database changed
mysql> show tables;
Empty set (0.01 sec)

mysql> create table customer(customer_id varchar(10) not null primary key,name varchar(15),email varchar(20),city varchar(10),phone_no int(11),pincode int(10),address varchar(35));
Query OK, 0 rows affected, 2 warnings (0.05 sec)

mysql> insert into customer values('c101','ramdas','ramdas@gmail','mumbai',999999990,123456,'lodha city');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values('c102','anuj','anuj@gmail','pune',999999991,123457,'palava city');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values('c103','omkar','omkar@gmail','nashik',999999992,123458,'patkar city');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values('c104','swayam','swayam@gmail','satara',999999993,123459,'samrat city');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values('c105','ayush','ayush@gmail','mumbai',999999994,123450,'tukaram nager');
Query OK, 1 row affected (0.01 sec)

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | varchar(10) | NO   | PRI | NULL    |       |
| name        | varchar(15) | YES  |     | NULL    |       |
| email       | varchar(20) | YES  |     | NULL    |       |
| city        | varchar(10) | YES  |     | NULL    |       |
| phone_no    | int         | YES  |     | NULL    |       |
| pincode     | int         | YES  |     | NULL    |       |
| address     | varchar(35) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> select * from customer;
+-------------+--------+--------------+--------+-----------+---------+---------------+
| customer_id | name   | email        | city   | phone_no  | pincode | address       |
+-------------+--------+--------------+--------+-----------+---------+---------------+
| c101        | ramdas | ramdas@gmail | mumbai | 999999990 |  123456 | lodha city    |
| c102        | anuj   | anuj@gmail   | pune   | 999999991 |  123457 | palava city   |
| c103        | omkar  | omkar@gmail  | nashik | 999999992 |  123458 | patkar city   |
| c104        | swayam | swayam@gmail | satara | 999999993 |  123459 | samrat city   |
| c105        | ayush  | ayush@gmail  | mumbai | 999999994 |  123450 | tukaram nager |
+-------------+--------+--------------+--------+-----------+---------+---------------+
5 rows in set (0.00 sec)

mysql> create table order(o_id varchar(10) not null primary key,quantity int(10),total_price int(10),order_date varchar(10),order_status varchar(10),payment_mode varchar(15));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order(o_id varchar(10) not null primary key,quantity int(10),total_price int(10)' at line 1
mysql> create table p_orders(o_id varchar(10) not null primary key,quantity int(10),total_price int(10),order_date varchar(10),order_status varchar(10),payment_mode varchar(15));
Query OK, 0 rows affected, 2 warnings (0.04 sec)

mysql> desc p_orders;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| o_id         | varchar(10) | NO   | PRI | NULL    |       |
| quantity     | int         | YES  |     | NULL    |       |
| total_price  | int         | YES  |     | NULL    |       |
| order_date   | varchar(10) | YES  |     | NULL    |       |
| order_status | varchar(10) | YES  |     | NULL    |       |
| payment_mode | varchar(15) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> insert into p_orders values('O101',20,10000,'9/2/2025','pending','online');
Query OK, 1 row affected (0.01 sec)

mysql> insert into p_orders values('O102',5,17000,'23/3/2025','deliverd','cash');
Query OK, 1 row affected (0.02 sec)

mysql> insert into p_orders values('O103',10,15000,'15/5/2025','deliverd','cash');
Query OK, 1 row affected (0.01 sec)

mysql> insert into p_orders values('O104',30,8000,'11/6/2025','pending','online');
Query OK, 1 row affected (0.01 sec)

mysql> insert into p_orders values('O105',25,25000,'30/12/2024','deliverd','online');
Query OK, 1 row affected (0.01 sec)

mysql> select * from p_orders;
+------+----------+-------------+------------+--------------+--------------+
| o_id | quantity | total_price | order_date | order_status | payment_mode |
+------+----------+-------------+------------+--------------+--------------+
| O101 |       20 |       10000 | 9/2/2025   | pending      | online       |
| O102 |        5 |       17000 | 23/3/2025  | deliverd     | cash         |
| O103 |       10 |       15000 | 15/5/2025  | deliverd     | cash         |
| O104 |       30 |        8000 | 11/6/2025  | pending      | online       |
| O105 |       25 |       25000 | 30/12/2024 | deliverd     | online       |
+------+----------+-------------+------------+--------------+--------------+
5 rows in set (0.00 sec)

mysql> create table product(p_id varchar(10) not null primary key, p_name varchar(15),category varchar(15),sub_category varchar(15),og_price int,selling_price int,stock varchar(10));
Query OK, 0 rows affected (0.08 sec)

mysql> desc product;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| p_id          | varchar(10) | NO   | PRI | NULL    |       |
| p_name        | varchar(15) | YES  |     | NULL    |       |
| category      | varchar(15) | YES  |     | NULL    |       |
| sub_category  | varchar(15) | YES  |     | NULL    |       |
| og_price      | int         | YES  |     | NULL    |       |
| selling_price | int         | YES  |     | NULL    |       |
| stock         | varchar(10) | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> insert into product values('P001', 'iPhone 13', 'Electronics', 'Mobile', 799, 749, 'In Stock');
Query OK, 1 row affected (0.02 sec)

mysql> insert into product values('P002', 'Nike Air', 'Footwear', 'Sneakers', 120, 100, 'In Stock');
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values('P003', 'Dell XPS', 'Electronics', 'Laptop', 999, 950, 'Low Stock');
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values('P004', 'Levi Jeans', 'Clothing', 'Denim', 60, 50, 'In Stock');
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values('P005', 'Samsung TV', 'Electronics', 'Television', 500, 450, 'Out of Stock');
ERROR 1406 (22001): Data too long for column 'stock' at row 1
mysql> insert into product values('P005', 'Samsung TV', 'Electronics', 'Television', 500, 450, 'no stocks');
Query OK, 1 row affected (0.01 sec)

mysql> select * from product;
+------+------------+-------------+--------------+----------+---------------+-----------+
| p_id | p_name     | category    | sub_category | og_price | selling_price | stock     |
+------+------------+-------------+--------------+----------+---------------+-----------+
| P001 | iPhone 13  | Electronics | Mobile       |      799 |           749 | In Stock  |
| P002 | Nike Air   | Footwear    | Sneakers     |      120 |           100 | In Stock  |
| P003 | Dell XPS   | Electronics | Laptop       |      999 |           950 | Low Stock |
| P004 | Levi Jeans | Clothing    | Denim        |       60 |            50 | In Stock  |
| P005 | Samsung TV | Electronics | Television   |      500 |           450 | no stocks |
+------+------------+-------------+--------------+----------+---------------+-----------+
5 rows in set (0.00 sec)