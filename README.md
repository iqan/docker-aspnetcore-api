# docker-aspnetcore-api
ASP .NET Core Web API running in docker container


## How to Use

### To Build this docker image
` docker build -t iqan/aspnetcore-webapi . `

### To Run this app
` docker run --name webapi1 -p 80:80 iqan/aspnetcore-webapi `

### To Stop the app
` Ctrl + C `
` docker rm -f webapi`


## Step-by-Step

### Create APP
- Create asp net core web api
` dotnet new webapi -o webapi`
- Create a Dockerfile or Copy one from repository
- Build docker image
` docker build -t <any-name> . `
- Run thi app
` docker run --name <any-name> -p 80:80 <name-given-above> `
