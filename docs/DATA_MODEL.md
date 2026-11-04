# Veri modeli taslağı
Users; StudentProfiles; AvailabilityWindows; Subjects; Topics (curriculum_version); Resources; ResourceProgress; StudyTasks; StudySessions; MockExams; MockExamResults; TopicAssessments; WrongQuestions.

Kullanıcıya ait tablolarda user_id/owner scope, uygun indeksler ve FK'ler bulunmalı. Müfredat versiyonlanmalı. Silme davranışı modül bazında belirlenmeli. Deneme neti sunucuda sınav konfigürasyonuna göre hesaplanmalı. Dosya binary içeriği DB'de değil erişim kontrollü object storage'da tutulmalı.
