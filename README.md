# DersRotam
AI destekli, dikkat dağıtmayan sınav hazırlık uygulaması. İlk hedef YKS; ardından KPSS ve diğer sınavlar.

## Teknoloji
- Flutter mobil
- ASP.NET Core / C# backend
- PostgreSQL + EF Core
- Modüler monolit
- GitHub Actions
- AI sağlayıcı soyutlaması; ilk adaptör OpenAI

## Flutter mobil istemci

Gereksinimler: Flutter stable SDK, Android Studio/Android SDK ve Android lisansları.

```bash
cd mobile
flutter pub get
flutter analyze
flutter test
flutter run --dart-define=APP_ENV=dev
```

Android release build'i için `flutter build apk --release --dart-define=APP_ENV=prod` komutunu kullanın. İstemci ortamı `APP_ENV` (`dev`/`prod`) ile seçilir; API temel URL'si `API_BASE_URL` dart-define üzerinden verilebilir. Değer yoksa güvenli varsayılanlar kullanılır; gizli anahtarlar istemciye eklenmemelidir.

Flutter kaynakları `mobile/lib/features` altında feature-first düzenindedir. Bu başlangıç iskeleti henüz API çağrısı, auth veya onboarding iş mantığı içermez.

## Backend'i yerelde çalıştırma

Gereksinim: .NET 8 SDK.

```bash
dotnet restore DersRotam.sln
dotnet build DersRotam.sln --no-restore
dotnet test DersRotam.sln --no-build
dotnet run --project src/DersRotam.Api
```

API `http://localhost:5000` veya konsolda bildirilen adreste başlar. `GET /health` sağlık
durumunu döndürür. Development ortamında Swagger UI `/swagger`, OpenAPI belgesi
`/swagger/v1/swagger.json` adresindedir.
Beklenmeyen hatalar hassas ayrıntıları dışarı vermeyen ProblemDetails yanıtlarıyla sunulur.

Ortam ayarlarını `appsettings.{Environment}.json`, environment variable veya .NET user secrets
ile sağlayın. Secret'ları `appsettings.json` içine ya da repoya eklemeyin. Başlangıç iskeleti
veritabanı, kimlik doğrulama veya iş modülleri içermez.

Önce AGENTS.md, docs/PRD.md ve docs/ARCHITECTURE.md dosyalarını okuyun. Bu depo başlangıçta teknik dokümantasyon içerir; çalışan uygulama iskeletleri henüz eklenmemiştir.
