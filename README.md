# DersRotam
AI destekli, dikkat dağıtmayan sınav hazırlık uygulaması. İlk hedef YKS; ardından KPSS ve diğer sınavlar.

## Teknoloji
- Flutter mobil
- ASP.NET Core / C# backend
- PostgreSQL + EF Core
- Modüler monolit
- GitHub Actions
- AI sağlayıcı soyutlaması; ilk adaptör OpenAI

## Backend'i yerelde çalıştırma

Gereksinim: .NET 8 SDK.

```bash
dotnet restore DersRotam.sln
dotnet build DersRotam.sln --no-restore
dotnet test DersRotam.sln --no-build
dotnet run --project src/DersRotam.Api
```

API `http://localhost:5000` veya konsolda bildirilen adreste başlar. `GET /health` sağlık
durumunu döndürür. Development ortamında OpenAPI belgesi `/openapi/v1.json` adresindedir.
Beklenmeyen hatalar hassas ayrıntıları dışarı vermeyen ProblemDetails yanıtlarıyla sunulur.

Ortam ayarlarını `appsettings.{Environment}.json`, environment variable veya .NET user secrets
ile sağlayın. Secret'ları `appsettings.json` içine ya da repoya eklemeyin. Başlangıç iskeleti
veritabanı, kimlik doğrulama veya iş modülleri içermez.

Önce AGENTS.md, docs/PRD.md ve docs/ARCHITECTURE.md dosyalarını okuyun. Bu depo başlangıçta teknik dokümantasyon içerir; çalışan uygulama iskeletleri henüz eklenmemiştir.
