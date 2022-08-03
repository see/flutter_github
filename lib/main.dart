import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'lang/translation_service.dart';
import 'routes/app_pages.dart';
import 'shared/logger/logger_utils.dart';

void main() {
  runApp(const FlutterGitHubApp());
}

class FlutterGitHubApp extends StatelessWidget {
  const FlutterGitHubApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      logWriterCallback: Logger.write,
      // initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
    );
  }
}
