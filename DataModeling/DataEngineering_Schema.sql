-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "departments" (
    "dept_no" VARCHAR(50)   NOT NULL,
    "dept_name" VARCHAR(250)   NOT NULL,
    CONSTRAINT "pk_deparments" PRIMARY KEY (
        "dept_no"
     )
);
-- Import data into "departments" table from CSV
COPY departments FROM
'C:\Users\Priscy\Desktop\Challenges\sql-challenge\EmployeeSQL\departments.csv'DELIMITER ',' CSV HEADER;



CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR(50)   NOT NULL
);
-- Import data into "dept_emp" table from CSV
COPY dept_emp FROM
'C:\Users\Priscy\Desktop\Challenges\sql-challenge\EmployeeSQL\dept_emp.csv'DELIMITER ',' CSV HEADER;


CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(20)   NOT NULL,
    "emp_no" INT   NOT NULL
);
-- Import data into "Dept_manager" table from CSV
COPY dept_manager FROM
'C:\Users\Priscy\Desktop\Challenges\sql-challenge\EmployeeSQL\dept_manager.csv'DELIMITER ',' CSV HEADER;


CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR(50)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(250)   NOT NULL,
    "last_name" VARCHAR(250)   NOT NULL,
    "sex" CHAR(1)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

-- Import data into "employees" table from CSV
COPY employees FROM
'C:\Users\Priscy\Desktop\Challenges\sql-challenge\EmployeeSQL\employees.csv'DELIMITER ',' CSV HEADER;


CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL
);
-- Import data into "salaries" table from CSV
COPY salaries FROM
'C:\Users\Priscy\Desktop\Challenges\sql-challenge\EmployeeSQL\salaries.csv'DELIMITER ',' CSV HEADER;


CREATE TABLE "titles" (
    "title_id" VARCHAR(50)   NOT NULL,
    "title" VARCHAR(250)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);
-- Import data into "titles" table from CSV
COPY titles FROM
'C:\Users\Priscy\Desktop\Challenges\sql-challenge\EmployeeSQL\titles.csv'DELIMITER ',' CSV HEADER;


ALTER TABLE "dep_emp" ADD CONSTRAINT "fk_dep_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dep_emp" ADD CONSTRAINT "fk_dep_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "Titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

