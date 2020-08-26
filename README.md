# Ahsanul Qalbi - CRUDEmployeeDatabase (NodeJS, Express, Sequelize, PostgreSQL)

## How to run the apps locally
    Required tools : NodeJS, PostgreSQL
    Install Nodejs : https://nodejs.org/en/download/ 
    Install PostgreSQL : https://www.postgresql.org/
    Set PostgreSQL user : postgres, password : password
    After creating PostgreSQL server, create employee_db database on pgAdmin 4
    Restore “employee_db.sql” backup database file (optional)
    Install Nodemon (optional) : (in command prompt) npm install nodemon
    Run the apps : (in command prompt) nodemon server.js OR node server.js
    Go to browser : http://127.0.0.1:3000/ to access webpage
    
## Webpages
   ### Main page, go to browser : http://127.0.0.1:3000/
    This page is the summary of the employee database, showing total employee from each divisions. 
   
   ### Employee List Page, go to browser : http://127.0.0.1:3000/employee_list
    This page is used to view, change, and delete employee data. “detail” button is used to display  detailed employee data. “update” button is used to update employee data, and the “delete” button is used to delete an employee data.
   
   ### Add New Employee Page , go to browser : http://127.0.0.1:3000/add_employee
    This page is used to add new employee data. When the submit button is clicked and the user has input all required data, the new employee data will be stored in database. 
   
## API Documentation
   ### Get All employee data : http://127.0.0.1:3000/api/getAllEmployees
    This API is used to get all employee data including their address and phone data.
   
   ### Get an employee data : http://127.0.0.1:3000/api/getAnEmployee
    This API is used to get a single employee data including their address and phone data.
   
   ### Post new employee data : http://127.0.0.1:3000/api/employee
    This API is used to add new employee data.
    Body params :
    username : STRING, unique
    email : STRING, unique
    picture : Image File
    street : STRING	    
    city : STRING
    province : STRING
    country : STRING
    postal_code : STRING
    phone_number : STRING
    phone_type : STRING (Mobile Phone / Home Phone)
    division : STRING (Back-End, Front-End, Full-Stack)
    
   ### Update an employee data : http://127.0.0.1:3000/api/updateEmployee
    This API is used to update employee data. Body params :
    id : INTEGER, Primarykey
    username : STRING, unique
    email : STRING, unique
    picture : Image File
    street : STRING
    city : STRING
    province : STRING
    country : STRING
    postal_code : STRING
    phone_number : STRING
    phone_type : STRING (Mobile Phone / Home Phone)
    division : STRING (Back-End, Front-End, Full-Stack)

   ### Delete an employee data : http://127.0.0.1:3000/api/deleteAnEmployee
    This API is used to delete employee data 
    Body params :
    id : INTEGER, Primarykey


   
   
