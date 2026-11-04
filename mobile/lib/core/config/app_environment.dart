enum AppEnvironment {
  development,
  production;

  static const _environment = String.fromEnvironment('APP_ENV', defaultValue: 'dev');
  static const apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'https://localhost:5001/api/v1',
  );

  static AppEnvironment fromDartDefine() => _environment == 'prod'
      ? AppEnvironment.production
      : AppEnvironment.development;

  bool get isDevelopment => this == AppEnvironment.development;
}
