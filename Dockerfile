FROM microsoft/dotnet:2.1-sdk-alpine AS builder
LABEL Maintainer="Iqan Shaikh"
WORKDIR /src
COPY src/webapi1.csproj .
RUN dotnet restore "./webapi1.csproj"
COPY src/. .
#RUN dotnet build "webapi1.csproj" -c Release -o /app -r alpine.3.7-x64
RUN dotnet publish "webapi1.csproj" -c Release -o /app -r alpine.3.7-x64

FROM microsoft/dotnet:2.1-aspnetcore-runtime-alpine3.7
WORKDIR /app
EXPOSE 80
COPY --from=builder /app .
ENTRYPOINT ["dotnet", "webapi1.dll"]
