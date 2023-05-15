# Students and Cohorts API - An Intro To Building APIs Challenge

This repository is to be used for practicing building an API. 

### Set Up
1. `git clone` this repo (you do not need to fork becuase we will not be giving feedback on this challenge)
2. `cd students_and_cohorts_api`
3. `bundle install`
4. `rails db:{create,migrate,seed}`

If you open up your rails console (`rails c`), you should see that you have **4 cohorts** (`Cohort.count`) and **78 students** (`Student.count`). 
When you run your test suite, you should have **12 passing tests**. 

### Schema
The database has already been designed for you. You should not change it. 

![Schema Design](/images/schema.png)

### The Challenge
You are creating two endpoints that will expose data about students and cohorts. We recommend serializing your json data by hand (creating your own methods in the serializer to format your response), and then refactoring to use the [jsonapi-serializer](https://github.com/jsonapi-serializer/jsonapi-serializer#installation) gem if you have more time. 
<details>
  <summary><b>ENDPOINT 1</b></summary>
  
  **GET all students**

  Your endpoint should follow this format: <br>
  `GET /api/v1/students`

  Your API will return: 
  * first name
  * last name
  * preferred name
  * pronouns
  * email
  * github username
  * slack username

 Expand the endpoints below to see the expected response: <br>
  <details>
    <summary>GET /api/v1/students</summary>

    {
        "data": [
            {
                "id": "1",
                "type": "student",
                "attributes": {
                    "first_name": "Jessie",
                    "last_name": "Smith",
                    "preferred_name": "Jess",
                    "pronouns": "xe/xem",
                    "email": "Jessie@email.com",
                    "github_username": "Jessie_github",
                    "slack_username": "Jessie_slack"
                }
            },
            {
                "id": "2",
                "type": "student",
                "attributes": {
                    "first_name": "Marion",
                    "last_name": "Johnson",
                    "preferred_name": "Marion",
                    "pronouns": "she/they",
                    "email": "Marion@email.com",
                    "github_username": "Marion_github",
                    "slack_username": "Marion_slack"
                }
            },
            {
                "id": "3",
                "type": "student",
                "attributes": {
                    "first_name": "Alva",
                    "last_name": "Brown",
                    "preferred_name": "Alva",
                    "pronouns": "ze/zir",
                    "email": "Alva@email.com",
                    "github_username": "Alva_github",
                    "slack_username": "Alva_slack"
                }
            },
            {
                "id": "4",
                "type": "student",
                "attributes": {
                    "first_name": "Ollie",
                    "last_name": "Jones",
                    "preferred_name": "Ollie",
                    "pronouns": "he/they",
                    "email": "Ollie@email.com",
                    "github_username": "Ollie_github",
                    "slack_username": "Ollie_slack"
                }
            },
            ...
            ...
            ...
        ]
      }

  </details>

  ---
  
</details>

<details>
  <summary><b>ENDPOINT 2</b></summary>
  
  **GET one cohort**
  
  Your endpoint should follow this format: <br>
  `GET /api/v1/cohorts/:id`

  Your API will return: 
  * name
  * start date
  * graduation date
  * number_of_students
  * status (future, current, graduated) - this should be based off of the start/graduation dates compared to the current date that the request is being made
 

  Expand the endpoints below to see the expected response: <br>
  
  <details>
    <summary>GET /api/v1/cohorts/1</summary>  
    
    {
      "data": {
          "id": "1",
          "type": "cohort",
          "attributes": {
              "name": "2107 BE",
              "start_date": "2021-07-01",
              "graduation_date": "2022-02-01",
              "number_of_students": 17,
              "status": "current"
            }
       }
    }
      
   </details>
      
   <details>
    <summary>GET /api/v1/cohorts/2</summary>  

     {
        "data": {
            "id": "2",
            "type": "cohort",
            "attributes": {
                "name": "2103 FE",
                "start_date": "2021-03-01",
                "graduation_date": "2021-10-01",
                "number_of_students": 26,
                "status": "graduated"
            }
          }
      }
      
   </details>
      
      
</details>

### Versions
* Rails 7.0.x
* Ruby 3.1.x


