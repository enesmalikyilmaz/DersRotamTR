# API sözleşme taslağı
Tüm rotalar /api/v1 altında. Profil: GET/PUT /me. Müfredat: GET /exam-tracks, GET /curriculum, GET /subjects/{id}/topics. Kaynaklar: GET/POST /resources, PATCH /resources/{id}, PUT /resources/{id}/progress. Plan: GET /study-plan, POST /study-tasks, PATCH /study-tasks/{id}, POST /study-sessions, POST /study-sessions/{id}/finish. Deneme: GET/POST /mock-exams, GET /mock-exams/{id}, POST /mock-exams/{id}/results. Analitik: GET /analytics/overview, GET /analytics/topics.

DTO validation, pagination, ProblemDetails, resource ownership checks, idempotency ve hassas endpoint'lerde rate limit zorunlu.
