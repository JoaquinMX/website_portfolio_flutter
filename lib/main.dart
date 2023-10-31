import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_portfolio/firebase_options.dart';
import 'package:flutter_portfolio/routes.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await dotenv.load();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: dotenv.env['API_KEY_FIREBASE'] ?? "",
            authDomain: dotenv.env['AUTH_DOMAIN_FIREBASE'] ?? "",
            projectId: dotenv.env['PROJECT_ID_FIREBASE'] ?? "",
            storageBucket: dotenv.env['STORAGE_BUCKET_FIREBASE'] ?? "",
            messagingSenderId: dotenv.env['MESSAGING_SENDER_ID_FIREBASE'] ?? "",
            appId: dotenv.env['APP_ID_FIREBASE'] ?? "",
            measurementId: dotenv.env['MEASUREMENT_ID_FIREBASE'] ?? ""));
  } else {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => Routes.generateRoutes(settings),
      initialRoute: '/',
    );
  }
}
