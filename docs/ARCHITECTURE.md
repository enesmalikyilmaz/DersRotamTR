# Mimari
İlk sürüm tek deploy edilebilir ASP.NET Core modüler monolitidir.

## Bileşenler
Flutter istemci; ASP.NET Core API; PostgreSQL; EF Core; sağlayıcı soyutlamalı AI adapter; ileride background jobs ve özel object storage.

## Backend modülleri
Identity, StudentProfile, ExamCatalog, Curriculum, Library, StudyPlanning, StudySessions, MockExams, Analytics, Notifications, AI.

## Katmanlar
Domain (iş kuralları), Application (use-case/port), Infrastructure (EF Core ve adaptörler), API (HTTP/auth/composition).

## Güvenlik
Her kullanıcı kaydında owner scope; istemciden gelen user id'ye güvenme. HTTPS, rate limit, validation, güvenli dosya yükleme, refresh token rotasyonu. Secret'lar environment/secret manager'da. Mikroservislere ölçümle gerekçe oluşmadan geçme.
