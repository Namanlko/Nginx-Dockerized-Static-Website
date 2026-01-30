# Dockerized Static Website using Nginx 🐳

This project demonstrates how to serve a simple **HTML/CSS static website** using **Nginx inside a Docker container**.  
It is designed for beginners to understand **Docker fundamentals** and real-world container deployment on **Ubuntu Server**.

## 🚀 Project Overview

- Dockerize a static website
- Serve content using Nginx
- Run the container on Ubuntu (Server/Desktop)
- Expose the application using port mapping

## 🛠️ Technologies Used

- Docker
- Nginx
- HTML & CSS
- Ubuntu Linux (Docker Host)

## 📁 Project Structure

```

dockerized-static-website-nginx/
├── Dockerfile
└── index.html

````

## 🐳 Dockerfile

```dockerfile
# Use lightweight Nginx image based on Alpine Linux
FROM nginx:alpine

# Copy the static website file into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx in foreground so the container keeps running
CMD ["nginx", "-g", "daemon off;"]
````

## 🌐 index.html

```html
<!DOCTYPE html>
<html>
<head>
    <title>Docker Static Website</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
            margin-top: 50px;
        }
        h1 {
            color: #007bff;
        }
    </style>
</head>
<body>
    <h1>Welcome to Docker</h1>
    <p>This static website is running inside a Docker container 🚀</p>
</body>
</html>
```

## ⚙️ How to Build the Docker Image?

Run the following command inside the project directory:

```bash
docker build -t docker-static-website .
```

## ▶️ How to Run the Container?

```bash
docker run -d --name static-web -p 80:80 docker-static-website
```

## 🔥 Firewall Configuration (Ubuntu Server)

If UFW is enabled:

```bash
sudo ufw allow 80
sudo ufw reload
```

## 🌍 Access the Application

* Local system:

  ```
  http://localhost
  ```
* Ubuntu Server / VM:

  ```
  http://<SERVER_IP>
  ```

## 🧪 Useful Docker Commands

```bash
docker ps
docker logs static-web
docker exec -it static-web sh
docker stop static-web
docker rm static-web
```

## 🎯 Why This Project?

* Learn Dockerfile basics
* Understand containerized web servers
* Practice real-world Docker deployment
* Great starter project for DevOps roles

## 📌 Future Enhancements

* Docker Compose version
* Custom Nginx configuration
* Volume-based static content
* Reverse proxy setup

## 👨‍💻 Author

**Naman Pandey**
DevOps & Cloud Enthusiast 🚀
