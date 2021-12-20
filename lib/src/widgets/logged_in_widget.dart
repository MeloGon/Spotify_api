import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:spotify_api_app/src/services/google_sign_in.dart';
import 'package:spotify_api_app/src/services/wigilabs_credential.dart';

class LoggedInWidget extends StatefulWidget {
  const LoggedInWidget({Key? key}) : super(key: key);

  @override
  _LoggedInWidgetState createState() => _LoggedInWidgetState();
}

class _LoggedInWidgetState extends State<LoggedInWidget> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    final wigilabsService = Provider.of<WigilabsProvider>(context);
    wigilabsService.getUserInfo();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Bienvenido',
          style: TextStyle(color: Colors.cyan),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              final usuarioService =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              usuarioService.logout();
            },
            icon: const FaIcon(
              FontAwesomeIcons.signOutAlt,
              color: Colors.cyan,
            ),
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Perfil ${user.displayName}'),
          ],
        ),
      ),
    );
  }
}
