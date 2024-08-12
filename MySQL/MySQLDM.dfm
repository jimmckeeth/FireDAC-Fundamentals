object MySQL: TMySQL
  Height = 1080
  Width = 1440
  PixelsPerInch = 144
  object FDScriptCreate: TFDScript
    SQLScripts = <
      item
        Name = 'create'
        SQL.Strings = (
          'CREATE TABLE regions ('
          #9'region_id INT (11) AUTO_INCREMENT PRIMARY KEY,'
          #9'region_name VARCHAR (25) DEFAULT NULL'
          ');'
          ''
          'CREATE TABLE countries ('
          #9'country_id CHAR (2) PRIMARY KEY,'
          #9'country_name VARCHAR (40) DEFAULT NULL,'
          #9'region_id INT (11) NOT NULL,'
          
            #9'FOREIGN KEY (region_id) REFERENCES regions (region_id) ON DELET' +
            'E CASCADE ON UPDATE CASCADE'
          ');'
          ''
          'CREATE TABLE locations ('
          #9'location_id INT (11) AUTO_INCREMENT PRIMARY KEY,'
          #9'street_address VARCHAR (40) DEFAULT NULL,'
          #9'postal_code VARCHAR (12) DEFAULT NULL,'
          #9'city VARCHAR (30) NOT NULL,'
          #9'state_province VARCHAR (25) DEFAULT NULL,'
          #9'country_id CHAR (2) NOT NULL,'
          
            #9'FOREIGN KEY (country_id) REFERENCES countries (country_id) ON D' +
            'ELETE CASCADE ON UPDATE CASCADE'
          ');'
          ''
          'CREATE TABLE jobs ('
          #9'job_id INT (11) AUTO_INCREMENT PRIMARY KEY,'
          #9'job_title VARCHAR (35) NOT NULL,'
          #9'min_salary DECIMAL (18, 2) DEFAULT NULL,'
          #9'max_salary DECIMAL (18, 2) DEFAULT NULL'
          ');'
          ''
          'CREATE TABLE departments ('
          #9'department_id INT (11) AUTO_INCREMENT PRIMARY KEY,'
          #9'department_name VARCHAR (30) NOT NULL,'
          #9'location_id INT (11) DEFAULT NULL,'
          
            #9'FOREIGN KEY (location_id) REFERENCES locations (location_id) ON' +
            ' DELETE CASCADE ON UPDATE CASCADE'
          ');'
          ''
          'CREATE TABLE employees ('
          #9'employee_id INT (11) AUTO_INCREMENT PRIMARY KEY,'
          #9'first_name VARCHAR (20) DEFAULT NULL,'
          #9'last_name VARCHAR (25) NOT NULL,'
          #9'email VARCHAR (100) NOT NULL,'
          #9'phone_number VARCHAR (20) DEFAULT NULL,'
          #9'hire_date DATE NOT NULL,'
          #9'job_id INT (11) NOT NULL,'
          #9'salary DECIMAL (18, 2) NOT NULL,'
          #9'manager_id INT (11) DEFAULT NULL,'
          #9'department_id INT (11) DEFAULT NULL,'
          
            #9'FOREIGN KEY (job_id) REFERENCES jobs (job_id) ON DELETE CASCADE' +
            ' ON UPDATE CASCADE,'
          
            #9'FOREIGN KEY (department_id) REFERENCES departments (department_' +
            'id) ON DELETE CASCADE ON UPDATE CASCADE,'
          #9'FOREIGN KEY (manager_id) REFERENCES employees (employee_id)'
          ');'
          ''
          'CREATE TABLE dependents ('
          #9'dependent_id INT (11) AUTO_INCREMENT PRIMARY KEY,'
          #9'first_name VARCHAR (50) NOT NULL,'
          #9'last_name VARCHAR (50) NOT NULL,'
          #9'relationship VARCHAR (25) NOT NULL,'
          #9'employee_id INT (11) NOT NULL,'
          
            #9'FOREIGN KEY (employee_id) REFERENCES employees (employee_id) ON' +
            ' DELETE CASCADE ON UPDATE CASCADE'
          ');'
          ''
          '/*Data for the table regions */'
          ''
          'INSERT INTO regions(region_id,region_name) VALUES (1,'#39'Europe'#39');'
          
            'INSERT INTO regions(region_id,region_name) VALUES (2,'#39'Americas'#39')' +
            ';'
          'INSERT INTO regions(region_id,region_name) VALUES (3,'#39'Asia'#39');'
          
            'INSERT INTO regions(region_id,region_name) VALUES (4,'#39'Middle Eas' +
            't and Africa'#39');'
          ''
          ''
          '/*Data for the table countries */'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'AR'#39','#39'Argentina'#39',2);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'AU'#39','#39'Australia'#39',3);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'BE'#39','#39'Belgium'#39',1);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'BR'#39','#39'Brazil'#39',2);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'CA'#39','#39'Canada'#39',2);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'CH'#39','#39'Switzerland'#39',1);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'CN'#39','#39'China'#39',3);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'DE'#39','#39'Germany'#39',1);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'DK'#39','#39'Denmark'#39',1);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'EG'#39','#39'Egypt'#39',4);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'FR'#39','#39'France'#39',1);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'HK'#39','#39'HongKong'#39',3);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'IL'#39','#39'Israel'#39',4);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'IN'#39','#39'India'#39',3);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'IT'#39','#39'Italy'#39',1);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'JP'#39','#39'Japan'#39',3);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'KW'#39','#39'Kuwait'#39',4);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'MX'#39','#39'Mexico'#39',2);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'NG'#39','#39'Nigeria'#39',4);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'NL'#39','#39'Netherlands'#39',1);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'SG'#39','#39'Singapore'#39',3);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'UK'#39','#39'United Kingdom'#39',1);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'US'#39','#39'United States of America'#39',2);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'ZM'#39','#39'Zambia'#39',4);'
          
            'INSERT INTO countries(country_id,country_name,region_id) VALUES ' +
            '('#39'ZW'#39','#39'Zimbabwe'#39',4);'
          ''
          '/*Data for the table locations */'
          
            'INSERT INTO locations(location_id,street_address,postal_code,cit' +
            'y,state_province,country_id) VALUES (1400,'#39'2014 Jabberwocky Rd'#39',' +
            #39'26192'#39','#39'Southlake'#39','#39'Texas'#39','#39'US'#39');'
          
            'INSERT INTO locations(location_id,street_address,postal_code,cit' +
            'y,state_province,country_id) VALUES (1500,'#39'2011 Interiors Blvd'#39',' +
            #39'99236'#39','#39'South San Francisco'#39','#39'California'#39','#39'US'#39');'
          
            'INSERT INTO locations(location_id,street_address,postal_code,cit' +
            'y,state_province,country_id) VALUES (1700,'#39'2004 Charade Rd'#39','#39'981' +
            '99'#39','#39'Seattle'#39','#39'Washington'#39','#39'US'#39');'
          
            'INSERT INTO locations(location_id,street_address,postal_code,cit' +
            'y,state_province,country_id) VALUES (1800,'#39'147 Spadina Ave'#39','#39'M5V' +
            ' 2L7'#39','#39'Toronto'#39','#39'Ontario'#39','#39'CA'#39');'
          
            'INSERT INTO locations(location_id,street_address,postal_code,cit' +
            'y,state_province,country_id) VALUES (2400,'#39'8204 Arthur St'#39',NULL,' +
            #39'London'#39',NULL,'#39'UK'#39');'
          
            'INSERT INTO locations(location_id,street_address,postal_code,cit' +
            'y,state_province,country_id) VALUES (2500,'#39'Magdalen Centre, The ' +
            'Oxford Science Park'#39','#39'OX9 9ZB'#39','#39'Oxford'#39','#39'Oxford'#39','#39'UK'#39');'
          
            'INSERT INTO locations(location_id,street_address,postal_code,cit' +
            'y,state_province,country_id) VALUES (2700,'#39'Schwanthalerstr. 7031' +
            #39','#39'80925'#39','#39'Munich'#39','#39'Bavaria'#39','#39'DE'#39');'
          ''
          ''
          '/*Data for the table jobs */'
          ''
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(1,'#39'Public Accountant'#39',4200.00,9000.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(2,'#39'Accounting Manager'#39',8200.00,16000.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(3,'#39'Administration Assistant'#39',3000.00,6000.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(4,'#39'President'#39',20000.00,40000.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(5,'#39'Administration Vice President'#39',15000.00,30000.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(6,'#39'Accountant'#39',4200.00,9000.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(7,'#39'Finance Manager'#39',8200.00,16000.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(8,'#39'Human Resources Representative'#39',4000.00,9000.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(9,'#39'Programmer'#39',4000.00,10000.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(10,'#39'Marketing Manager'#39',9000.00,15000.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(11,'#39'Marketing Representative'#39',4000.00,9000.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(12,'#39'Public Relations Representative'#39',4500.00,10500.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(13,'#39'Purchasing Clerk'#39',2500.00,5500.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(14,'#39'Purchasing Manager'#39',8000.00,15000.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(15,'#39'Sales Manager'#39',10000.00,20000.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(16,'#39'Sales Representative'#39',6000.00,12000.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(17,'#39'Shipping Clerk'#39',2500.00,5500.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(18,'#39'Stock Clerk'#39',2000.00,5000.00);'
          
            'INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES ' +
            '(19,'#39'Stock Manager'#39',5500.00,8500.00);'
          ''
          ''
          '/*Data for the table departments */'
          ''
          
            'INSERT INTO departments(department_id,department_name,location_i' +
            'd) VALUES (1,'#39'Administration'#39',1700);'
          
            'INSERT INTO departments(department_id,department_name,location_i' +
            'd) VALUES (2,'#39'Marketing'#39',1800);'
          
            'INSERT INTO departments(department_id,department_name,location_i' +
            'd) VALUES (3,'#39'Purchasing'#39',1700);'
          
            'INSERT INTO departments(department_id,department_name,location_i' +
            'd) VALUES (4,'#39'Human Resources'#39',2400);'
          
            'INSERT INTO departments(department_id,department_name,location_i' +
            'd) VALUES (5,'#39'Shipping'#39',1500);'
          
            'INSERT INTO departments(department_id,department_name,location_i' +
            'd) VALUES (6,'#39'IT'#39',1400);'
          
            'INSERT INTO departments(department_id,department_name,location_i' +
            'd) VALUES (7,'#39'Public Relations'#39',2700);'
          
            'INSERT INTO departments(department_id,department_name,location_i' +
            'd) VALUES (8,'#39'Sales'#39',2500);'
          
            'INSERT INTO departments(department_id,department_name,location_i' +
            'd) VALUES (9,'#39'Executive'#39',1700);'
          
            'INSERT INTO departments(department_id,department_name,location_i' +
            'd) VALUES (10,'#39'Finance'#39',1700);'
          
            'INSERT INTO departments(department_id,department_name,location_i' +
            'd) VALUES (11,'#39'Accounting'#39',1700);'
          ''
          ''
          ''
          '/*Data for the table employees */'
          ''
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (100,'#39'Steven'#39','#39'King'#39','#39'steven.king@example.com'#39','#39'515.123.4567'#39 +
            ','#39'1987-06-17'#39',4,24000.00,NULL,9);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (101,'#39'Neena'#39','#39'Kochhar'#39','#39'neena.kochhar@example.com'#39','#39'515.123.4' +
            '568'#39','#39'1989-09-21'#39',5,17000.00,100,9);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (102,'#39'Lex'#39','#39'De Haan'#39','#39'lex.de haan@example.com'#39','#39'515.123.4569'#39 +
            ','#39'1993-01-13'#39',5,17000.00,100,9);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (103,'#39'Alexander'#39','#39'Hunold'#39','#39'alexander.hunold@example.com'#39','#39'590' +
            '.423.4567'#39','#39'1990-01-03'#39',9,9000.00,102,6);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (104,'#39'Bruce'#39','#39'Ernst'#39','#39'bruce.ernst@example.com'#39','#39'590.423.4568'#39 +
            ','#39'1991-05-21'#39',9,6000.00,103,6);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (105,'#39'David'#39','#39'Austin'#39','#39'david.austin@example.com'#39','#39'590.423.456' +
            '9'#39','#39'1997-06-25'#39',9,4800.00,103,6);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (106,'#39'Valli'#39','#39'Pataballa'#39','#39'valli.pataballa@example.com'#39','#39'590.4' +
            '23.4560'#39','#39'1998-02-05'#39',9,4800.00,103,6);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (107,'#39'Diana'#39','#39'Lorentz'#39','#39'diana.lorentz@example.com'#39','#39'590.423.5' +
            '567'#39','#39'1999-02-07'#39',9,4200.00,103,6);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (108,'#39'Nancy'#39','#39'Greenberg'#39','#39'nancy.greenberg@example.com'#39','#39'515.1' +
            '24.4569'#39','#39'1994-08-17'#39',7,12000.00,101,10);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (109,'#39'Daniel'#39','#39'Faviet'#39','#39'daniel.faviet@example.com'#39','#39'515.124.4' +
            '169'#39','#39'1994-08-16'#39',6,9000.00,108,10);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (110,'#39'John'#39','#39'Chen'#39','#39'john.chen@example.com'#39','#39'515.124.4269'#39','#39'19' +
            '97-09-28'#39',6,8200.00,108,10);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (111,'#39'Ismael'#39','#39'Sciarra'#39','#39'ismael.sciarra@example.com'#39','#39'515.124' +
            '.4369'#39','#39'1997-09-30'#39',6,7700.00,108,10);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (112,'#39'Jose Manuel'#39','#39'Urman'#39','#39'jose manuel.urman@example.com'#39','#39'5' +
            '15.124.4469'#39','#39'1998-03-07'#39',6,7800.00,108,10);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (113,'#39'Luis'#39','#39'Popp'#39','#39'luis.popp@example.com'#39','#39'515.124.4567'#39','#39'19' +
            '99-12-07'#39',6,6900.00,108,10);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (114,'#39'Den'#39','#39'Raphaely'#39','#39'den.raphaely@example.com'#39','#39'515.127.456' +
            '1'#39','#39'1994-12-07'#39',14,11000.00,100,3);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (115,'#39'Alexander'#39','#39'Khoo'#39','#39'alexander.khoo@example.com'#39','#39'515.127' +
            '.4562'#39','#39'1995-05-18'#39',13,3100.00,114,3);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (116,'#39'Shelli'#39','#39'Baida'#39','#39'shelli.baida@example.com'#39','#39'515.127.456' +
            '3'#39','#39'1997-12-24'#39',13,2900.00,114,3);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (117,'#39'Sigal'#39','#39'Tobias'#39','#39'sigal.tobias@example.com'#39','#39'515.127.456' +
            '4'#39','#39'1997-07-24'#39',13,2800.00,114,3);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (118,'#39'Guy'#39','#39'Himuro'#39','#39'guy.himuro@example.com'#39','#39'515.127.4565'#39','#39 +
            '1998-11-15'#39',13,2600.00,114,3);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (119,'#39'Karen'#39','#39'Colmenares'#39','#39'karen.colmenares@example.com'#39','#39'515' +
            '.127.4566'#39','#39'1999-08-10'#39',13,2500.00,114,3);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (120,'#39'Matthew'#39','#39'Weiss'#39','#39'matthew.weiss@example.com'#39','#39'650.123.1' +
            '234'#39','#39'1996-07-18'#39',19,8000.00,100,5);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (121,'#39'Adam'#39','#39'Fripp'#39','#39'adam.fripp@example.com'#39','#39'650.123.2234'#39','#39 +
            '1997-04-10'#39',19,8200.00,100,5);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (122,'#39'Payam'#39','#39'Kaufling'#39','#39'payam.kaufling@example.com'#39','#39'650.123' +
            '.3234'#39','#39'1995-05-01'#39',19,7900.00,100,5);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (123,'#39'Shanta'#39','#39'Vollman'#39','#39'shanta.vollman@example.com'#39','#39'650.123' +
            '.4234'#39','#39'1997-10-10'#39',19,6500.00,100,5);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (126,'#39'Irene'#39','#39'Mikkilineni'#39','#39'irene.mikkilineni@example.com'#39','#39'6' +
            '50.124.1224'#39','#39'1998-09-28'#39',18,2700.00,120,5);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (145,'#39'John'#39','#39'Russell'#39','#39'john.russell@example.com'#39',NULL,'#39'1996-1' +
            '0-01'#39',15,14000.00,100,8);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (146,'#39'Karen'#39','#39'Partners'#39','#39'karen.partners@example.com'#39',NULL,'#39'19' +
            '97-01-05'#39',15,13500.00,100,8);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (176,'#39'Jonathon'#39','#39'Taylor'#39','#39'jonathon.taylor@example.com'#39',NULL,'#39 +
            '1998-03-24'#39',16,8600.00,100,8);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (177,'#39'Jack'#39','#39'Livingston'#39','#39'jack.livingston@example.com'#39',NULL,'#39 +
            '1998-04-23'#39',16,8400.00,100,8);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (178,'#39'Kimberely'#39','#39'Grant'#39','#39'kimberely.grant@example.com'#39',NULL,'#39 +
            '1999-05-24'#39',16,7000.00,100,8);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (179,'#39'Charles'#39','#39'Johnson'#39','#39'charles.johnson@example.com'#39',NULL,'#39 +
            '2000-01-04'#39',16,6200.00,100,8);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (192,'#39'Sarah'#39','#39'Bell'#39','#39'sarah.bell@example.com'#39','#39'650.501.1876'#39','#39 +
            '1996-02-04'#39',17,4000.00,123,5);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (193,'#39'Britney'#39','#39'Everett'#39','#39'britney.everett@example.com'#39','#39'650.5' +
            '01.2876'#39','#39'1997-03-03'#39',17,3900.00,123,5);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (200,'#39'Jennifer'#39','#39'Whalen'#39','#39'jennifer.whalen@example.com'#39','#39'515.1' +
            '23.4444'#39','#39'1987-09-17'#39',3,4400.00,101,1);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (201,'#39'Michael'#39','#39'Hartstein'#39','#39'michael.hartstein@example.com'#39','#39'5' +
            '15.123.5555'#39','#39'1996-02-17'#39',10,13000.00,100,2);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (202,'#39'Pat'#39','#39'Fay'#39','#39'pat.fay@example.com'#39','#39'603.123.6666'#39','#39'1997-0' +
            '8-17'#39',11,6000.00,201,2);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (203,'#39'Susan'#39','#39'Mavris'#39','#39'susan.mavris@example.com'#39','#39'515.123.777' +
            '7'#39','#39'1994-06-07'#39',8,6500.00,101,4);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (204,'#39'Hermann'#39','#39'Baer'#39','#39'hermann.baer@example.com'#39','#39'515.123.888' +
            '8'#39','#39'1994-06-07'#39',12,10000.00,101,7);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (205,'#39'Shelley'#39','#39'Higgins'#39','#39'shelley.higgins@example.com'#39','#39'515.1' +
            '23.8080'#39','#39'1994-06-07'#39',2,12000.00,101,11);'
          
            'INSERT INTO employees(employee_id,first_name,last_name,email,pho' +
            'ne_number,hire_date,job_id,salary,manager_id,department_id) VALU' +
            'ES (206,'#39'William'#39','#39'Gietz'#39','#39'william.gietz@example.com'#39','#39'515.123.8' +
            '181'#39','#39'1994-06-07'#39',1,8300.00,205,11);'
          ''
          ''
          '/*Data for the table dependents */'
          ''
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (1,'#39'Penelope'#39','#39'Gietz'#39','#39'Child'#39',206);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (2,'#39'Nick'#39','#39'Higgins'#39','#39'Child'#39',205);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (3,'#39'Ed'#39','#39'Whalen'#39','#39'Child'#39',200);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (4,'#39'Jennifer'#39','#39'King'#39','#39'Child'#39',100);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (5,'#39'Johnny'#39','#39'Kochhar'#39','#39'Child'#39',101);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (6,'#39'Bette'#39','#39'De Haan'#39','#39'Child'#39',102);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (7,'#39'Grace'#39','#39'Faviet'#39','#39'Child'#39',109);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (8,'#39'Matthew'#39','#39'Chen'#39','#39'Child'#39',110);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (9,'#39'Joe'#39','#39'Sciarra'#39','#39'Child'#39',111);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (10,'#39'Christian'#39','#39'Urman'#39','#39'Child'#39',112);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (11,'#39'Zero'#39','#39'Popp'#39','#39'Child'#39',113);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (12,'#39'Karl'#39','#39'Greenberg'#39','#39'Child'#39',108);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (13,'#39'Uma'#39','#39'Mavris'#39','#39'Child'#39',203);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (14,'#39'Vivien'#39','#39'Hunold'#39','#39'Child'#39',103);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (15,'#39'Cuba'#39','#39'Ernst'#39','#39'Child'#39',104);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (16,'#39'Fred'#39','#39'Austin'#39','#39'Child'#39',105);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (17,'#39'Helen'#39','#39'Pataballa'#39','#39'Child'#39',106);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (18,'#39'Dan'#39','#39'Lorentz'#39','#39'Child'#39',107);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (19,'#39'Bob'#39','#39'Hartstein'#39','#39'Child'#39',201);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (20,'#39'Lucille'#39','#39'Fay'#39','#39'Child'#39',202);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (21,'#39'Kirsten'#39','#39'Baer'#39','#39'Child'#39',204);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (22,'#39'Elvis'#39','#39'Khoo'#39','#39'Child'#39',115);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (23,'#39'Sandra'#39','#39'Baida'#39','#39'Child'#39',116);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (24,'#39'Cameron'#39','#39'Tobias'#39','#39'Child'#39',117);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (25,'#39'Kevin'#39','#39'Himuro'#39','#39'Child'#39',118);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (26,'#39'Rip'#39','#39'Colmenares'#39','#39'Child'#39',119);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (27,'#39'Julia'#39','#39'Raphaely'#39','#39'Child'#39',114);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (28,'#39'Woody'#39','#39'Russell'#39','#39'Child'#39',145);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (29,'#39'Alec'#39','#39'Partners'#39','#39'Child'#39',146);'
          
            'INSERT INTO dependents(dependent_id,first_name,last_name,relatio' +
            'nship,employee_id) VALUES (30,'#39'Sandra'#39','#39'Taylor'#39','#39'Child'#39',176);')
      end>
    Connection = FDConnection
    ScriptDialog = FDGUIxScriptDialog1
    Params = <>
    Macros = <>
    FetchOptions.AssignedValues = [evItems, evAutoClose, evAutoFetchAll]
    FetchOptions.AutoClose = False
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvMacroCreate, rvMacroExpand, rvDirectExecute, rvPersistent]
    ResourceOptions.MacroCreate = False
    ResourceOptions.DirectExecute = True
    Left = 88
    Top = 374
  end
  object FDQueryEmployees: TFDQuery
    Indexes = <
      item
        Active = True
        Name = 'idxEmployeeID'
        Fields = 'employee_id'
        Distinct = True
      end
      item
        Active = True
        Name = 'idxFirstName'
        Fields = 'first_name'
        CaseInsFields = 'first_name'
      end
      item
        Active = True
        Name = 'idxLastName'
        Fields = 'last_name'
        CaseInsFields = 'last_name'
      end>
    DetailFields = 'job_id'
    Connection = FDConnection
    SQL.Strings = (
      'select '
      '  e.employee_id, e.first_name, e.last_name, '
      
        '  e.job_id, e.email, e.phone_number, e.hire_date, e.salary, e.ma' +
        'nager_id, e.department_id,'
      '  managers.last_name as Manager_Name'
      'from '
      '  employees as e'
      'inner join employees as managers'
      'on e.manager_id = managers.employee_ID')
    Left = 272
    Top = 24
    object FDQueryEmployeesemployee_id: TFDAutoIncField
      FieldName = 'employee_id'
      Origin = 'employee_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object FDQueryEmployeesfirst_name: TWideStringField
      DisplayWidth = 100
      FieldName = 'first_name'
      Origin = 'first_name'
      Size = 32767
    end
    object FDQueryEmployeeslast_name: TWideStringField
      DisplayWidth = 100
      FieldName = 'last_name'
      Origin = 'last_name'
      Required = True
      Size = 32767
    end
    object FDQueryEmployeesemail: TWideStringField
      DisplayWidth = 100
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 32767
    end
    object FDQueryEmployeesphone_number: TWideStringField
      DisplayWidth = 100
      FieldName = 'phone_number'
      Origin = 'phone_number'
      Size = 32767
    end
    object FDQueryEmployeesjob_id: TIntegerField
      FieldName = 'job_id'
      Origin = 'job_id'
      Required = True
    end
    object FDQueryEmployeesmanager_id: TIntegerField
      FieldName = 'manager_id'
      Origin = 'manager_id'
    end
    object FDQueryEmployeesdepartment_id: TIntegerField
      FieldName = 'department_id'
      Origin = 'department_id'
      Required = True
    end
    object FDQueryEmployeesDepartmantName: TWideStringField
      FieldKind = fkLookup
      FieldName = 'DepartmantName'
      LookupDataSet = FDQueryDepartments
      LookupKeyFields = 'department_id'
      LookupResultField = 'department_name'
      KeyFields = 'department_id'
      Size = 100
      Lookup = True
    end
    object FDQueryEmployeesJobTitle: TWideStringField
      FieldKind = fkLookup
      FieldName = 'JobTitle'
      LookupDataSet = FDQueryJobs
      LookupKeyFields = 'job_id'
      LookupResultField = 'job_title'
      KeyFields = 'job_id'
      Size = 100
      Lookup = True
    end
    object FDQueryEmployeesManager_Name: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Manager_Name'
      Origin = 'Manager_Name'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object FDQueryEmployeessalary: TFMTBCDField
      FieldName = 'salary'
      Origin = 'salary'
      Required = True
      Precision = 18
      Size = 2
    end
    object FDQueryEmployeeshire_date: TDateField
      FieldName = 'hire_date'
      Origin = 'hire_date'
      Required = True
    end
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 648
    Top = 372
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 648
    Top = 294
  end
  object FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog
    Provider = 'Forms'
    CancelCaption = '&Cancel'
    Left = 648
    Top = 544
  end
  object FDGUIxScriptDialog1: TFDGUIxScriptDialog
    Provider = 'Forms'
    Options = [ssCallstack, ssConsole]
    Left = 656
    Top = 32
  end
  object FDQueryJobs: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select job_id, job_title, min_salary, max_salary '
      'from jobs')
    Left = 272
    Top = 110
  end
  object FDQueryDepartments: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select department_id, department_name, '
      '  departments.location_id, locations.city'
      'from departments'
      'inner join locations'
      'on departments.location_id = locations.location_id')
    Left = 272
    Top = 197
    object FDQueryDepartmentsdepartment_id: TFDAutoIncField
      FieldName = 'department_id'
      Origin = 'department_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
      Visible = False
    end
    object FDQueryDepartmentsdepartment_name: TWideStringField
      DisplayWidth = 30
      FieldName = 'department_name'
      Origin = 'department_name'
      Required = True
      Size = 100
    end
    object FDQueryDepartmentslocation_id: TIntegerField
      FieldName = 'location_id'
      Origin = 'location_id'
      Required = True
      Visible = False
    end
    object FDQueryDepartmentscity: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'city'
      Origin = 'city'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object FDQueryDependents: TFDQuery
    IndexFieldNames = 'employee_id'
    MasterSource = dsEmployee
    MasterFields = 'employee_id'
    DetailFields = 'employee_id'
    Connection = FDConnection
    FetchOptions.AssignedValues = [evItems, evCache]
    SQL.Strings = (
      
        'select dependent_id, dependents.first_name, dependents.last_name' +
        ', relationship,'
      
        '  dependents.employee_id, employees.first_name as gardian_first,' +
        ' employees.last_name as guardian_last'
      'from dependents'
      'inner join employees'
      'on dependents.employee_id = employees.employee_id')
    Left = 272
    Top = 284
    object FDQueryDependentsdependent_id: TFDAutoIncField
      FieldName = 'dependent_id'
      Origin = 'dependent_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object FDQueryDependentsfirst_name: TWideStringField
      FieldName = 'first_name'
      Origin = 'first_name'
      Required = True
      Size = 32767
    end
    object FDQueryDependentslast_name: TWideStringField
      FieldName = 'last_name'
      Origin = 'last_name'
      Required = True
      Size = 32767
    end
    object FDQueryDependentsrelationship: TWideStringField
      FieldName = 'relationship'
      Origin = 'relationship'
      Required = True
      Size = 32767
    end
    object FDQueryDependentsemployee_id: TIntegerField
      FieldName = 'employee_id'
      Origin = 'employee_id'
      Required = True
    end
    object FDQueryDependentsgardian_first: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'gardian_first'
      Origin = 'first_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object FDQueryDependentsguardian_last: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'guardian_last'
      Origin = 'last_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object FDQueryLocations: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select '
      '  location_id, street_address, postal_code, city,'
      '  state_province, locations.country_id, country_name'
      'from locations'
      'inner join countries on'
      'locations.country_id = countries.country_id')
    Left = 272
    Top = 370
    object FDQueryLocationslocation_id: TFDAutoIncField
      FieldName = 'location_id'
      Origin = 'location_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object FDQueryLocationsstreet_address: TWideStringField
      FieldName = 'street_address'
      Origin = 'street_address'
      Size = 32767
    end
    object FDQueryLocationspostal_code: TWideStringField
      FieldName = 'postal_code'
      Origin = 'postal_code'
      Size = 32767
    end
    object FDQueryLocationscity: TWideStringField
      FieldName = 'city'
      Origin = 'city'
      Required = True
      Size = 32767
    end
    object FDQueryLocationsstate_province: TWideStringField
      FieldName = 'state_province'
      Origin = 'state_province'
      Size = 32767
    end
    object FDQueryLocationscountry_name: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'country_name'
      Origin = 'country_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object FDQueryLocationscountry_id: TWideStringField
      FieldName = 'country_id'
      Origin = 'country_id'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object FDQueryCountries: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select country_id, country_name, '
      '  countries.region_id, regions.region_name'
      'from countries'
      'inner join regions on '
      '  countries.region_id = regions.region_id ')
    Left = 272
    Top = 457
    object FDQueryCountriescountry_id: TWideStringField
      FieldName = 'country_id'
      Origin = 'country_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 32767
    end
    object FDQueryCountriescountry_name: TWideStringField
      FieldName = 'country_name'
      Origin = 'country_name'
      Required = True
      Size = 32767
    end
    object FDQueryCountriesregion_id: TIntegerField
      FieldName = 'region_id'
      Origin = 'region_id'
      Required = True
    end
    object FDQueryCountriesregion_name: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'region_name'
      Origin = 'region_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object FDQueryRegions: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from regions')
    Left = 272
    Top = 544
    object FDQueryRegionsregion_id: TFDAutoIncField
      FieldName = 'region_id'
      Origin = 'region_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object FDQueryRegionsregion_name: TWideStringField
      FieldName = 'region_name'
      Origin = 'region_name'
      Required = True
      Size = 32767
    end
  end
  object dsJobs: TDataSource
    DataSet = FDQueryJobs
    Left = 456
    Top = 110
  end
  object dsEmployee: TDataSource
    DataSet = FDQueryEmployees
    Left = 456
    Top = 24
  end
  object dsDepartments: TDataSource
    DataSet = FDQueryDepartments
    Left = 456
    Top = 197
  end
  object dsDependents: TDataSource
    DataSet = FDQueryDependents
    Left = 456
    Top = 284
  end
  object dsLocations: TDataSource
    DataSet = FDQueryLocations
    Left = 456
    Top = 372
  end
  object dsCountries: TDataSource
    DataSet = FDQueryCountries
    Left = 456
    Top = 460
  end
  object dsRegions: TDataSource
    DataSet = FDQueryRegions
    Left = 456
    Top = 548
  end
  object FDScriptDrop: TFDScript
    SQLScripts = <
      item
        Name = 'drop'
        SQL.Strings = (
          'DROP TABLE dependents;'
          'DROP TABLE employees;'
          'DROP TABLE departments;'
          'DROP TABLE locations;'
          'DROP TABLE countries;'
          'DROP TABLE regions;'
          'DROP TABLE jobs;')
      end>
    Connection = FDConnection
    ScriptDialog = FDGUIxScriptDialog1
    Params = <>
    Macros = <>
    FetchOptions.AssignedValues = [evItems, evAutoClose, evAutoFetchAll]
    FetchOptions.AutoClose = False
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvMacroCreate, rvMacroExpand, rvDirectExecute, rvPersistent]
    ResourceOptions.MacroCreate = False
    ResourceOptions.DirectExecute = True
    Left = 264
    Top = 726
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Server=localhost'
      'User_Name=root'
      'Password=password'
      'Database=mysql'
      'DriverID=MySQL')
    Left = 72
    Top = 48
  end
end
