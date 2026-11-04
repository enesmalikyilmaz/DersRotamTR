import 'package:ders_rotam/app.dart';
import 'package:ders_rotam/core/config/app_environment.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('opens the starter home screen', (tester) async {
    await tester.pumpWidget(
      const DersRotamApp(environment: AppEnvironment.development),
    );

    expect(find.text('DersRotam'), findsOneWidget);
    expect(find.text('Bugün küçük bir adım at.'), findsOneWidget);
    expect(find.text('Çalışma yolculuğun burada başlıyor'), findsOneWidget);
  });
}
