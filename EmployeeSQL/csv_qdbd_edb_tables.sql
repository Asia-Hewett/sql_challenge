-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Q1lmu9
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "department_number" INT   NOT NULL,
    "department_name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "department_number"
     )
);

CREATE TABLE "Dept_Emp" (
    "employee_number" INT   NOT NULL,
    "department_number" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Dept_Emp" PRIMARY KEY (
        "employee_number"
     )
);

CREATE TABLE "Dept_Manager" (
    "department_number" INT   NOT NULL,
    "employee_number" INT   NOT NULL
);

CREATE TABLE "Employees" (
    "employee_number" INT   NOT NULL,
    "employee_title" INT   NOT NULL,
    "birth_date" INT   NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "sex" VARCHAR(10)   NOT NULL,
    "hire_date" INT   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "employee_number"
     )
);

CREATE TABLE "Salaries" (
    "employee_number" INT   NOT NULL,
    "salary" INT   NOT NULL
);

CREATE TABLE "Title" (
    "employee_title_id" INT   NOT NULL,
    "title" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "employee_title_id"
     )
);

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_employee_number" FOREIGN KEY("employee_number")
REFERENCES "Employees" ("employee_number");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_department_number" FOREIGN KEY("department_number")
REFERENCES "Departments" ("department_number");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_employee_number" FOREIGN KEY("employee_number")
REFERENCES "Employees" ("employee_number");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_employee_title" FOREIGN KEY("employee_title")
REFERENCES "Title" ("employee_title_id");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_employee_number" FOREIGN KEY("employee_number")
REFERENCES "Employees" ("employee_number");

