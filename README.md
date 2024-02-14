# SampleBlazorApp

Blazor App with .NET Core 8.0

## .NET Build

```bash
dotnet build
```

## .NET Run

```bash
dotnet run
```

## Setup Docker

```bash
docker buildx build --platform linux/arm64 -t aspnetapp .
```

```bash
docker run -it --rm -p 5000:8080 --name aspnetcore_sample aspnetapp
```
