//import 'package:crud_firebase/services/firebase_service.dart';
import 'package:crud_firebase/pages/home_page.dart';
import 'package:crud_firebase/pages/add_name_page.dart';
import 'package:flutter/material.dart';

// Import the generated file
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  // Inicializar Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
  // Ejecutar la aplicación
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/add': (context) => const AddNamePage(),
      },
    );
  }
}

