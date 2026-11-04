# GitHub iş akışı
Issue → izole feature/fix branch → küçük commit'ler → PR → CI → insan review → merge. main korumalı olmalı. Başlangıçta 2–3 kod ajanından fazlasını paralel çalıştırma. Ajanlar test komutlarını ve sonuçlarını raporlamalı. İnsan onayı olmadan merge/deploy yok.

Cloud agent'ın görev çalıştırması, otomatik Issue seçimi/zamanlama/koordinasyon ve sabah raporu sisteminin kurulduğu anlamına gelmez; bunlar ayrıca yapılandırılmalıdır.
