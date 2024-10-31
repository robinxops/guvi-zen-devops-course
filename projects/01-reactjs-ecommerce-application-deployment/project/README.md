# 1. Guvi ReactJS E-commerce App Deployment

## Deployment Guide

### Prerequisites

- [GitHub Profile](https://github.com/christine-robinson)
  
  ![GitHub Profile](./images/01-github-profile.png)

- [DockerHub Profile](https://hub.docker.com/repositories/christinerobinson101)

  ![DockerHub Profile](./images/02-dockerhub-profile.png)

- [AWS Console](https://ap-south-1.console.aws.amazon.com/console/home?region=ap-south-1#)

  ![AWS Console](./images/03-aws-console.png)

### Deployment Steps

#### 1. Clone the Application

**Step 1:** ***Fork*** the given [application source code](https://github.com/sriram-R-krishnan/devops-build) repository in the name of ***guvi-p1-reactjs-ecommerce-app***

![devops-build GitHub Page](./images/04-devops-build-github-page.png)

![Fork Step 1](./images/05-git-repository-fork-step-1.png)

![Fork Step 2](./images/06-git-repository-fork-step-2.png)

![Fork Result](./images/07-git-repository-forked.png)

**Step 2:** ***Clone*** the [guvi-p1-reactjs-ecommerce-app](https://github.com/christine-robinson/guvi-p1-reactjs-ecommerce-app) repository

![Copy Clone URL](./images/08-git-clone-url-copied.png)

![Clone the Git Repository](./images/09-git-clone-done.png)

**Step 3:** Open the project folder with ***VS Code***

```bash
code ./guvi-p1-reactjs-ecommerce-app
```

![Run Code](./images/10-vscode-command.png)

![Open with VS Code](./images/11-vscode-with-project-folder.png)

#### 2. Dockerize the Application

**Step 1:** Create 2 repositories in ***DockerHub*** with the following names, ***guvi-p1-dev-reactjs-ecommerce-app*** & ***guvi-p1-prod-reactjs-ecommerce-app***

![DockerHub Repositories Page in the Beginning](./images/12-dockerhub-reposiroties-page-in-the-beginning.png)

![Creating guvi-p1-dev-reactjs-ecommerce-app repository](./images/13-dockerhub-repository-creating-1.png)

![Created guvi-p1-dev-reactjs-ecommerce-app repository](./images/14-dockerhub-repository-created-1.png)

![Creating guvi-p1-prod-reactjs-ecommerce-app repository](./images/15-dockerhub-repository-creating-2.png)

![Created guvi-p1-prod-reactjs-ecommerce-app repository](./images/16-dockerhub-repository-created-2.png)

![DockerHub Repositories Page after Created](./images/17-dockerhub-reposiroties-page-after-created.png)

**Step 2:** Create a ***Personal Access Token*** in the name of ***guvi-p1*** for authorization

![DockerHub Profile Options](./images/18-dockerhub-profile-options.png)

![DockerHub Account Security Settings](./images/19-dockerhub-account-security-settings.png)

![DockerHub Generate new Access Token](./images/20-dockerhub-generate-new-pat.png)

![DockerHub Generate guvi-p1 Access Token](./images/21-dockerhub-generate-pat-guvi-p1.png)

![DockerHub Generated new Access Token](./images/22-dockerhub-pat-guvi-p1-created.png)

**Step 3:** Create a new ***git*** branch named ***dev*** in my local

```bash
git checkout -b dev
```

![Switched to dev branch](./images/23-vscode-git-checkout-dev.png)

```bash
git branch
```

![List git branches](./images/24-vs-code-list-git-branches.png)

**Step 4:** Create ***.gitignore*** & ***.dockerignore*** files

```bash
echo """\
# Dependency directories
node_modules/

# Build directories
build/
dist/

# Environment variables
.env
.env.*

# IDE & Editor files
.vscode/
""" > .gitignore
```

![create .gitignore by terminal](./images/25-create-gitignore-command.png)

![.gitignore output](./images/26-gitignore-output.png)

```bash
echo """\
# Node dependencies (typically installed within the container)
node_modules/

# Local development and test directories
build/
dist/

# Environment files (environment variables should be set in Docker)
.env
.env.*

# Git and version control directories
.git
.gitignore

# Miscellaneous
.vscode/
""" > .dockerignore
```

![create .dockerignore by terminal](./images/27-create-dockerignore-command.png)

![.dockerignore output](./images/28-dockerignore-output.png)

**Step 5:** Create a ***nginx*** based ***Dockerfile***

```bash
echo """\
# Serve the app with a lightweight web server
FROM nginx:alpine

# Copy the build output from the current directory to Nginx's default public directory
COPY ./build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD [\"nginx\", \"-g\", \"daemon off;\"]
""" > Dockerfile
```

![create Dockerfile by terminal](./images/29-create-dockerfile-command.png)

![Dockerfile output](./images/30-dockerfile-output.png)

**Step 6:** Created a ***docker-compose.yml***

```bash
echo """\
services:
  app:
    image: \${IMAGE_REPOSITORY}:\${IMAGE_TAG}
    container_name: reactjs-ecommerce-app
    ports:
      - 80:80
""" > docker-compose.yml
```

![create docker-compose.yml by terminal](./images/31-create-dockerfile-command.png)

![docker-compose.yml output](./images/32-docker-compose-output.png)

**Step 7:** Publish the ***dev*** branch

```bash
# Stage Changes
git add .

# Commit Changes
git commit -m "Docker Setup"

# Publish new branch
git push --set-upstream origin dev
```

![Commit dev changes](./images/33-commit-dev-changes.png)

![Publish new branch](./images/34-publish-dev-branch.png)
