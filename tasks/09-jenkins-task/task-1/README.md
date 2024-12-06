# 9. Jenkins Task #

## Instructions ##

### 1. Launch an EC2 instance and open port 8080 in its security group ###

![Result 1](./screenshots/result-01.png)

![Result 2](./screenshots/result-02.png)

### 2. Jenkins Installation on Ubuntu ###

> Ref: [https://www.jenkins.io/doc/book/installing/linux/#installation-of-java](https://www.jenkins.io/doc/book/installing/linux/#installation-of-java)

```bash
sudo apt update

sudo apt install -y fontconfig openjdk-17-jre

java -version
```

![Result 3](./screenshots/result-03.png)

> Ref: [https://www.jenkins.io/doc/book/installing/linux/#debianubuntu](https://www.jenkins.io/doc/book/installing/linux/#debianubuntu)

```bash
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update

sudo apt-get install -y jenkins
```

![Result 4](./screenshots/result-04.png)

```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

![Result 5](./screenshots/result-05.png)

![Result 6](./screenshots/result-06.png)

![Result 7](./screenshots/result-07.png)

![Result 8](./screenshots/result-08.png)

![Result 9](./screenshots/result-09.png)

![Result 10](./screenshots/result-10.png)

### 3.Create New Project ###

- Goto **Dashboard → New Item**.

- Enter the project name (e.g., **first-project**).

- Select a project type (e.g., **Freestyle Project**, **Pipeline**, **Multi Branch Pipeline**).

- Click **OK**.

- Configure the **Pipeline** project with **Checkout**, **Build**, **Test** & **Deploy** stages.

  ```Jenkinsfile
  pipeline {
      agent any
      stages {
          stage('Checkout') {
              steps {
                  echo 'Cloning...'
              }
          }
          stage('Build') {
              steps {
                  echo 'Building...'
              }
          }
          stage('Test') {
              steps {
                  echo 'Testing...'
              }
          }
          stage('Deploy') {
              steps {
                  echo 'Deploying...'
              }
          }
      }
  }
  ```

![Result 11](./screenshots/result-11.png)

![Result 12](./screenshots/result-12.png)

![Result 13](./screenshots/result-13.png)

![Result 14](./screenshots/result-14.png)

![Result 15](./screenshots/result-15.png)

### 4. Create Users ###

- Goto **Manage Jenkins → Users**

- Click **Create User** and fill in the details (**username**, **password**, **email**, etc.)

![Result 16](./screenshots/result-16.png)

![Result 17](./screenshots/result-17.png)

![Result 18](./screenshots/result-18.png)
