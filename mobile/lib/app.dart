import 'package:flutter/material.dart';

import 'core/config/app_environment.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

class DersRotamApp extends StatelessWidget {
  const DersRotamApp({required this.environment, super.key});

  final AppEnvironment environment;

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'DersRotam',
        debugShowCheckedModeBanner: environment.isDevelopment,
        theme: AppTheme.light,
        routerConfig: createAppRouter(),
      );
}
