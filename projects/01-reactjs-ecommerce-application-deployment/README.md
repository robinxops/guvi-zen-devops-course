# Guvi Zen DevOps Course - Projects

## 1. ReactJS E-commerce Application Deployment

### Application

- Clone the below mentioned repo and deploy the application. (Run the application in port 80 \[HTTP\])

  **Repo URL:** [https://github.com/sriram-R-krishnan/devops-build](https://github.com/sriram-R-krishnan/devops-build)

### Docker

- Dockerize the application by creating a ***Dockerfile***

- Create a ***docker-compose.yml*** file to use the above image

### Bash Scripting

> ***Note:*** Write 2 scripts

- ***build.sh*** - for building docker images

- ***deploy.sh*** - for deploying the image to server

### Version Control

> ***Note:*** Use only CLI for related git commands

- Push the code to GitHub to ***dev*** branch (use ***.dockerignore*** & ***.gitignore*** files)

### DockerHub

- Create 2 repos ***dev*** & ***prod*** to push docker images.

### Jenkins

- Install and configure Jenkins build steps as per needs to ***build docker image***, ***push the docker image*** & ***deploy the application***

- Connect Jenkins to the GitHub repo with auto build trigger from both ***dev*** & ***master*** branch

### AWS

- Launch ***t2.micro*** instance and deploy the application

- Configure SG as below:

  - Whoever has the ***IP*** address can access the application

  - Login to server can should be made only from your ***IP*** address

### Monitoring

- Setup a monitoring system to check the health status of the application. (Open Source)

- Sending notifications only if the application goes down is highly appreciable

---

### Submission

- GitHub Repository URL, Deployed site URL, Docker images name must be added in the submission.

- Upload the screenshots of below mentioned to github repo:

  - Jenkins (Login Page, Configuration settings, execute step commands)

  - AWS (EC2 console, SG configs)

  - DockerHub repo with image tags

  - Deployed site page

  - Monitoring health check status