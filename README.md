# Projects Management
![JDK][jdkBadge] <br/>
By [Hamza Es-saady][linkedinURL]

<!-- Logo -->
<div align="center">
<img src="./images/Logo.svg" alt="Projects Management Logo" width="400px">
</div> <br/>

<!-- Description -->
**Projects Management** is a web application that helps the management of different projects. With Projects Management you can manage **Projects**, **Collaborators**, **Competences** and **Tasks**. Each Project is composed of different Tasks. Each Collaborator can be assigned to Tasks taking into consideration their Competences and a limit work hours (e.g. 8 hours/day). The attribution is made in an equitable manner.

You are free to reuse, copy, modify, and distribute, but you have to give attribution.

## Project Structure & Sub Modules
**Projects Management** uses four **sub-modules** as dependencies :
* [:file_folder: **projectsmanagement-ejb**][ejbURL] : Business Layer (EJB)
* [:file_folder: **projectsmanagement-jpa**][jpaURL] : Persistence Layer (JPA)
* [:file_folder: **projectsmanagement-web**][webURL] : Web Layer
* [:file_folder: **projectsmanagement-app**][appURL] : EAR project

These four sub-modules will be included in the folder **projectsmanagement-master**. 

Here is the relationship between these modules :
<div align="center">
<img src="./images/modules.jpg" alt="Modules relationships" width="75%">
</div> <br/>

## Technologies & Tools
**Projects Management** is created with :
* JavaEE 7.0
* EJB 3.2 (Enterprise Java Bean)
* JPA (Java Persistence API)
* CDI
* Hibernate 5.4.16
* JSF 2.1 (JavaServer Faces) with Mojarra 2.3.2. implementation
* PrimeFaces 8
* JavaEE security
* Maven 2
* GlassFish 5
* MySQL 5

## Installation and configuration

### Database Schema
Run this **[script](./projectsManagement_db.sql)** to create the database. The admin credentials will be inserted also : 
```
  username: master
  password: 123456
```
### Clone the project
Run this command to clone the project along with all the sub-modules :
```
  git clone https://github.com/Kuohamkun/projectsmanagement-bom.git --recursive
```

## Screenshots

### Landing Page
* Authentication : JavaEE Security

<div align="center">
<img src="./images/screenshots/landingPage.png" alt="Landing page" width="80%">
</div> <br/>

### Dashboard
* General overview of Projects, Collaborators, Competences and Tasks
<div align="center">
<img src="./images/screenshots/dashboard.png" alt="Dashboard" width="80%">
</div> <br/>

### Collaborators
* List, add, edit and delete collaborators
* Assign/remove competences
<div align="center">
<img src="./images/screenshots/collabs.png" alt="Collaborators list" width="80%">
</div> <br/>
<div align="center">
<img src="./images/screenshots/collabs2.png" alt="Collab Tasks" width="80%">
</div> <br/>
<div align="center">
<img src="./images/screenshots/collabs3.png" alt="Collab Competences" width="80%">
</div> <br/>
<div align="center">
<img src="./images/screenshots/collabs4.png" alt="Add new Collab" width="80%">
</div> <br/>

### Competences
* List, add, edit and delete competences
* Statistics showing the number of collaborators for each competence 
<div align="center">
<img src="./images/screenshots/comps.png" alt="Competences List" width="80%">
</div> <br/>

### Projects
* List, add, edit and delete projects

Here the creation of projects follows a time allocation rule. The maximum duration in a day is set at 8am, and weekends are disabled.
<div align="center">
<img src="./images/screenshots/projects.png" alt="Projects List" width="80%">
</div> <br/>

### Tasks
* List, add, edit and delete tasks
* Assign/remove tasks competences
* Assign work hours to collaborators in a given task. The attribution is made in an equitable manner.
<div align="center">
<img src="./images/screenshots/tasks.png" alt="Tasks List" width="80%">
</div> <br/>
<div align="center">
<img src="./images/screenshots/tasks2.png" alt="Assign hours to collabs" width="80%">
</div> <br/>
<div align="center">
<img src="./images/screenshots/tasks3.png" alt="Assign comps to tasks" width="80%">
</div> <br/>
<div align="center">
<img src="./images/screenshots/tasks4.png" alt="Add new Task" width="80%">
</div> <br/>


<!-- Identifiers --------------------------------------------------------- -->
[linkedinURL]: https://www.linkedin.com/in/essaadyhamza/
[ejbURL]: https://github.com/Kuohamkun/projectsmanagement-ejb
[jpaURL]: https://github.com/Kuohamkun/projectsmanagement-jpa
[webURL]: https://github.com/Kuohamkun/projectsmanagement-web
[appURL]: https://github.com/Kuohamkun/projectsmanagement-application
[jdkBadge]: https://img.shields.io/badge/JDK-1.8-007396?style=flat&logo=java

