# SampleBlazorApp

Blazorのアプリケーション

## ビルド方法

```bash
dotnet build
```

## 実行方法

```bash
dotnet run
```

## 環境変数をセットする

## Docker

```bash
-e BUILDPLATFORM=darwin/amd64
```

```bash
docker buildx build --platform linux/arm64 -t aspnetapp .
```

```bash
docker build . -t aspnetapp
```

```bash
docker run -it --rm -p 5000:8080 --name aspnetcore_sample aspnetapp
```
