import 'package:flutter/material.dart';

import 'package:crud_firebase/services/firebase_service.dart';

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
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await Navigator.pushNamed(context, '/add');
              setState(() {});
              //print("Sigo ejecutando el home");
            },
            child: const Icon(Icons.add),
          ),
    );
  }
}
