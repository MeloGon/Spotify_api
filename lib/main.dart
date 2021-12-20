import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:spotify_api_app/src/services/google_sign_in.dart';
import 'package:spotify_api_app/src/services/wigilabs_credential.dart';
import 'package:spotify_api_app/src/utils/theme.dart';
import 'package:spotify_api_app/src/views/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GoogleSignInProvider>(
            create: (_) => GoogleSignInProvider()),
        ChangeNotifierProvider<WigilabsProvider>(
            create: (_) => WigilabsProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        title: 'Material App',
        home: LoginPage(),
      ),
    );
  }
}
