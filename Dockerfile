# Learn about building .NET container images:
# https://github.com/dotnet/dotnet-docker/blob/main/samples/README.md
FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/sdk:8.0 AS build
ARG TARGETARCH
WORKDIR /source

# copy csproj and restore as distinct layers
COPY app/*.csproj .
RUN dotnet restore -a $TARGETARCH

# copy and publish app and libraries
COPY app/. .
RUN dotnet publish -a $TARGETARCH --no-restore -o ./out

# final stage/image
FROM mcr.microsoft.com/dotnet/aspnet:8.0
EXPOSE 5000
WORKDIR /app
COPY --from=build /source .
USER $APP_UID
ENTRYPOINT ["dotnet", "./out/SampleBlazorApp.dll"]