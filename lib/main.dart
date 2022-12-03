import 'package:admin_panel_final/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

 main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: 'AIzaSyCiXoGoYHJD-z79ETYr3ox_Qev9DCDK2Hs', appId: '1:961615598561:web:1518661440d64ab9e1b8a0', messagingSenderId: '961615598561', projectId: 'e-commerce-f4134')
  );
  runApp( MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Home()
    );
  }
}



