# sql-challenge
## An overview of the project and its purpose.
### Knowing which people in the company were hired during the 1980s and 1990s.
## Instructions on how to use and interact with the project.
- Data modeling
Inspect the CSV files, then sketch an Entity-Relationship Diagram of the tables. To create the sketch, feel free to use a tool such as QuickDBDLinks to an external site....
- Data engineering
Use the information provided to create a table schema for each of the six CSV files. Be sure to do the following:
Remember to specify data types, primary keys, foreign keys, and other constraints.
For primary keys, check that the column is unique. Otherwise, create a composite keyLinks to an external site. that takes two primary keys to uniquely identify a row.
Be sure to create the tables in the correct order to handle the foreign keys.
- Data analysis
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
9. ## At least one paragraph summarizing the efforts made in the project in relation to ethical considerations.
### There were some difficulties when creating the tables and joining them since some variables did not match, in the DBD there was a missing letter and those details between upper and lower case were the ones I struggled with the most, as well as in the JOIN where INT and INT did not match, so I learned how to unify where the definition of the constant must match.
## Data source references
- blackbox.ai (https://www.blackbox.ai/)
- askBCS
- QuickDBD (https://app.quickdatabasediagrams.com/#/d/n2QxPv)
- Knowledge reinforcement: (https://youtu.be/B_lqjZGwViI?si=Fjhh0QEeG5-4ETZd, https://youtu.be/xsg9BDiwiJE?si=mKmNXDCuq46OwKXq, https://youtu.be/wmiDdBG-yP4?si=LpepTYKO3l28xWRf)
## References to any code used that is not your own
- askBCS: When converting dates from this format "DAY/MONTH/YEAR" to this format "DAY-MONTH-YEAR".
