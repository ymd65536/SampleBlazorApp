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

補足：TARGETARCH=osx-arm64でビルドするとエラーが発生する。

エラーメッセージ

```text
#0 0.803 /usr/share/dotnet/sdk/8.0.201/Sdks/Microsoft.NET.Sdk/targets/Microsoft.NET.Sdk.FrameworkReferenceResolution.targets(154,5): error NETSDK1083: The specified RuntimeIdentifier 'linux-linux-arm64' is not recognized. See https://aka.ms/netsdk1083 for more information. [/source/SampleBlazorApp.csproj]
```

[エラーの理由](https://learn.microsoft.com/ja-jp/dotnet/core/compatibility/sdk/8.0/rid-graph)

```bash
docker run -it --rm -p 5000:8080 --name aspnetcore_sample aspnetapp
```
