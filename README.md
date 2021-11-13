# README

### Instructions to create the API

1. We start with creating the application
```rails new messenger --api```<br>
```cd messenger```

2. Since rails follow MVC architecture, we create a model “book” of the attributes {b_title, author, year, publisher}
```rails g model book b_title author year publisher```
This generate the files:
```app/models/dog.rb```<br>
```db/migrate/[date_time]_create_dogs.rb```
The db/migrate/*.rb file can be modified to change the specifications of the table we are going to create


3. We migrate the rb file to create a new table defined in the file
```rails db:migrate```
This creates a new table book with the defined attributes
    1. Optional: Edit db/migrate/seeds.rb to initiate values to the database<br>
    This can be initiated using
    ```rails db:seed```

4. We now define the controller /api/v1/books with the methods: index, show, create, update and destroy to apply CRUD operations on the data in “books” table
```rails g controller api/v1/books index show create update destroy```
These files must be updated to apply the crud operations and respond appropriately

5. The server can now be started by using: 
```rails s```
This exposes the api to access via localhost:3000. We test this via any HTTP Client to send HTTP requests to the server.

<br>
(Thunder Client/HTTP Client, VSCode extensions can be used to send the respective requests for testing the APIs)

