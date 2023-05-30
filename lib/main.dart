import 'package:crud_firebase/services/firebase_service.dart';
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
    return const MaterialApp(
      title: 'Welcome to Flutter',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    Key? key,
}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}



class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Flutter'),
      ),
      body: FutureBuilder(
          future: getPeople(),
          builder: ((context, snapshot){
            if (snapshot.hasData){
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return Text(snapshot.data?[index]['name']);
                },
              );
            }else{
              return const Center(
                //child: CircularProgressIndicator(),
                child: Text("Cargando....."),
              );
            }
          })),
    );
  }
}
