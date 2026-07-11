# BoardgameListingWebApp

## Description 

**Board Game Database Full-Stack Web Application.**
This web application displays lists of board games and their reviews. While anyone can view the board game lists and reviews, they are required to log in to add/ edit the board games and their reviews. The 'users' have the authority to add board games to the list and add reviews, and the 'managers' have the authority to edit/ delete the reviews on top of the authorities of users.  

## Technologies

- Java
- Spring Boot
- Amazon Web Services(AWS) EC2
- Thymeleaf
- Thymeleaf Fragments
- HTML5
- CSS
- JavaScript
- Spring MVC
- JDBC
- H2 Database Engine (In-memory)
- JUnit test framework
- Spring Security
- Twitter Bootstrap
- Maven

## Features

- Full-Stack Application
- UI components created with Thymeleaf and styled with Twitter Bootstrap
- Authentication and authorization using Spring Security
  - Authentication by allowing the users to authenticate with a username and password
  - Authorization by granting different permissions based on the roles (non-members, users, and managers)
- Different roles (non-members, users, and managers) with varying levels of permissions
  - Non-members only can see the boardgame lists and reviews
  - Users can add board games and write reviews
  - Managers can edit and delete the reviews
- Deployed the application on AWS EC2
- JUnit test framework for unit testing
- Spring MVC best practices to segregate views, controllers, and database packages
- JDBC for database connectivity and interaction
- CRUD (Create, Read, Update, Delete) operations for managing data in the database
- Schema.sql file to customize the schema and input initial data
- Thymeleaf Fragments to reduce redundancy of repeating HTML elements (head, footer, navigation)

## How to Run

1. Follow the Below mentioned steps.
2. To use initial user data, use the following credentials.
  - username: bugs    |     password: bunny (user role)
  - username: daffy   |     password: duck  (manager role)
3. You can also sign-up as a new user and customize your role to play with the application! 😊

## How to setup Jenkins for: scanning files and testing the code

1. Set-up Cloud infra on AWS
   - vpc
   - security Group
   - EC2
2. setup Master Node
3. setup 2 worker Nodes
4. setup Sonarqube server
5. setup Nexus server
6. setup Jenkins server
7. setup Monitoring server - Grafana & Prometheus

## Steps to setup Master Node and Worker Nodes

- Log in to the server using ssh and pem key
Install docker + kubernetes: Follow the steps given in below file :https://tristiks.com/docs/Kubernetes/kubernetes-installation-and-setup/

## steps to setup Sonarqube server

- Log into the server
Install docker using official documentation: https://docs.docker.com/engine/install/ubuntu/
change the permission to access the docker
chmod 666 /var/run/docker.socks
- Run the offical sonarqube image on docker
docker run -d --name sonar -p 9000:9000 sonarqube:lts-community

## steps to setup Nexus server

- Log into the server
Install docker using official documentation: https://docs.docker.com/engine/install/ubuntu/
change the permission to access the docker
chmod 666 /var/run/docker.socks
- Run the offical Nexus image on docker
docker run -d --name Nexus -p 8081:8081 sonatype/nexus3:latest

## steps to setup Jenkins server

- Log into the server
Install docker using official documentation: https://docs.docker.com/engine/install/ubuntu/
change the permission to access the docker
chmod 666 /var/run/docker.socks
Install the Jenkins using official documentation: https://www.jenkins.io/doc/book/installing/linux/#debianubuntu
- Run the application on http://<JenkinsServerIp>:8080
- Install the plugins
- maven integration, openjdk plugin, docker build step, kubernetes credential, kubernetes cli, sonarqube scanner install it
- Install trivy using official documentation: https://trivy.dev/docs/v0.51/getting-started/installation/

## steps to setup Grafana and prometheus

wget Grafana and Prometheus using official documentation, run prometheus and grafana executable files.
Import the prometheus datasource to grafana.
Export the node_exporter and blackbox_exporter using the official prometheus repository.
