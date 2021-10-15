## Go REST API 🎉
A simple and secure CRUD-based REST API developed using Go for learning purposes. 

## Main features 🚀
- Full CRUDL functionality 
- Simple connection to MySQL database using GORM
- Secure authentication via JWT 
- Deployment to Heroku 

## Setup 🔨
### Pre-requisites 
- Go installed on Linux,Windows,Mac 
- A text editor or IDE (i.e. VSCode or GoLand)
- MySQL server setup on Linux,Windows,Mac 
- Heroku account for deployment 

### Get the Code 🚀
```bash
$ git clone https://github.com/rexsimiloluwah/go-rest-api 
$ cd go-rest-api
```

### Environment variables 🔑
Create a .env file, and copy the modified contents of .env.sample into .env. 

### To run the code locally 🏄
```bash
$ go build 
$ ./go-rest-api
```
`The server starts on http://localhost:<PORT|5050>` 

## Database Models 💾
The SQL structure for the migration tables can be found in `db.sql` 

## Endpoints 

### Auth
| Enpoint  | Description |
| ----------- | ----------- |
| **POST /api/v1/auth/register**     | Register a new user |
| **POST /api/v1/auth/login**  | Login a user |

### User 
| Enpoint  | Description |
| ----------- | ----------- |
| **GET /api/v1/user**     | Get user profile |
| **GET /api/v1/user/posts**  | Fetch user's posts | 

### Post
| Enpoint  | Description |
| ----------- | ----------- |
| **POST /api/v1/post**     | Create a new post |
| **GET /api/v1/posts**  | Fetch all posts | 
| **GET /api/v1/post/{id}**  | Get post by ID | 
| **PUT /api/v1/post/{id}**  | Update post | 
| **DELETE /api/v1/post/{id}**  | Delete post | 

A comprehensive API documentation is available on https://documenter.getpostman.com/view/10089138/UV5UmKcn

## Deployment using Heroku ☁️
### Resources used 
- ClearDB - MySQL database provisioned by Heroku 

### Deployment steps using Heroku CLI
#### Create app 
```bash
$ heroku create <app-name>
```

#### Create ClearDB database
```bash
$ heroku addons:create cleardb:ignite
```

#### Fetch Database URL for production 
```bash
$ heroku config --app <app-name> | grep CLEARDB_DATABASE_URL
```

#### To connect to the Database in your CLI to verify queries or migrations
```bash
$ mysql -host <host> -u<username> -p<password>
```

#### To deploy, Specify your Procfile then :-
```bash
$ git add .
$ git commit -m "blah blah blah..."
$ git push heroku master
```

### Current deployment 
The Heroku deployment currently is available on https://go-rest-api-2001.herokuapp.com 

## TODO 📌
- [ ] Unit testing 
- [ ] CI/CD integration 
- [ ] Improve code structure adhering to best practices
- [ ] Add Swagger Documentation