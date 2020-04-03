# Game Management System
* Springboot + Vue.js
* Github：https://github.com/mansonliwh/GameManagementSystem
* Designed by group11, members: Congyu Cai, Xi Shao, Weihang Li, Xinyue Sheng 

# Requirements
* Redis-3.2.1
* mysql-8.0.15
* IDE

# User interface diagram
## Home page
![image](https://github.com/mansonliwh/GameManagementSystem/blob/master/document/home.png)
## Login page
![image](https://github.com/mansonliwh/GameManagementSystem/blob/master/document/login.png)
## Game category page
![image](https://github.com/mansonliwh/GameManagementSystem/blob/master/document/gamecate.png)
## Divided game list page
![image](https://github.com/mansonliwh/GameManagementSystem/blob/master/document/dividedgame.png)
## Collection page
![image](https://github.com/mansonliwh/GameManagementSystem/blob/master/document/collection.png)
## Article category page
![image](https://github.com/mansonliwh/GameManagementSystem/blob/master/document/articate.png)
## Divided article list page
![image](https://github.com/mansonliwh/GameManagementSystem/blob/master/document/dividedarti.png)
## Article view page
![image](https://github.com/mansonliwh/GameManagementSystem/blob/master/document/view1.png)
![image](https://github.com/mansonliwh/GameManagementSystem/blob/master/document/view2.png)

# System architecture
![image](https://github.com/mansonliwh/GameManagementSystem/blob/master/document/architecture.jpg)

# Run this website in back end
0. connect the mysql
1. remodify ./blog-api/src/main/resources/application.properties to adapt the database option, then use ../sql/blog.sql to create the database
2. connect the redis
3. use any IDE to run ./blog-api/src/main/java/com/shimh/BlogApiApplication.java to activate the back-end
4. open url: http://localhost:8888

# Run this website in front-end dev-environment for all details
(Since all of the images only saved in the static path in the front end)
0. cd blog-app
1. npm install
2. npm run dev
3. open url: http://localhost:8080


## front-end blog-app
Vue
Vue-router
Vuex
ElementUI
mavon-editor
lodash
axios
Webpack
## back-end blog-api
SpringBoot
Shiro
Jpa
Redis
Fastjson
Druid
MySQL
Maven
