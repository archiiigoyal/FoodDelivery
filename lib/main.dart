import "package:flutter/material.dart";
import "package:foodtemp/services/auth/auth_gate.dart";
import "package:foodtemp/firebase_options.dart";
import "package:foodtemp/models/restaurant.dart";
import "package:foodtemp/themes/themes_provider.dart";
import "package:provider/provider.dart";
import 'package:firebase_core/firebase_core.dart';


void main() async {
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

 runApp(
   MultiProvider(
     providers: [
       //themeprovider
       ChangeNotifierProvider(create: (context) => ThemesProvider()),




       ChangeNotifierProvider(create: (context) => Restaurant()),
     ],
     child: const MyApp(),
   ),
 );
}

class MyApp extends StatelessWidget {
 const MyApp({super.key});




 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: const AuthGate(),
     theme: Provider.of<ThemesProvider>(context).themeData,
   );
 }
}



