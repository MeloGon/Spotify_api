import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:spotify_api_app/src/services/facebook_sign_in.dart';
import 'package:spotify_api_app/src/services/google_sign_in.dart';
import 'package:animate_do/animate_do.dart';
import 'package:spotify_api_app/src/utils/dimens.dart';
import 'package:spotify_api_app/src/views/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String ilu =
      'https://previews.123rf.com/images/balabolka/balabolka1708/balabolka170800072/83957883-cartoon-vector-doodles-music-illustration.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              FadeInUp(
                duration: const Duration(milliseconds: 1400),
                child: SizedBox(
                    height: dimens.fullHeigth(context) * .5,
                    child: Image.network(ilu)),
              ),
              FadeInUp(
                  duration: const Duration(milliseconds: 1400),
                  child: const Text('Ingresa a Spotify Api Proof')),
              SizedBox(
                height: dimens.fullHeigth(context) * .015,
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1400),
                delay: const Duration(milliseconds: 300),
                child: SizedBox(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      try {
                        final usuarioService =
                            Provider.of<GoogleSignInProvider>(context,
                                listen: false);
                        usuarioService.googleLogin();
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => HomePage()));
                      } catch (e) {
                        if (e is FirebaseAuthException) {
                          log(e.message!);
                        }
                      }
                    },
                    color: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey.shade300)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Row(
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.google,
                        ),
                        Spacer(),
                        Text('Continuar con Google'),
                        Spacer()
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: dimens.fullHeigth(context) * .015,
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1400),
                delay: const Duration(milliseconds: 300),
                child: SizedBox(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.black,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey.shade300)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Row(
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.mailBulk,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Text(
                          'Continuar con Email',
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: dimens.fullHeigth(context) * .015,
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1400),
                delay: const Duration(milliseconds: 300),
                child: SizedBox(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      try {
                        final usuarioService =
                            Provider.of<FacebookSignInProvider>(context,
                                listen: false);
                        usuarioService.facebookLogin();
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => HomePage()));
                      } catch (e) {
                        if (e is FirebaseAuthException) {
                          log(e.message!);
                        }
                      }
                    },
                    color: Colors.blueAccent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey.shade300)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Row(
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Text(
                          'Continuar con Facebook',
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: dimens.fullHeigth(context) * .015,
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1400),
                delay: const Duration(milliseconds: 300),
                child: RichText(
                  text: const TextSpan(
                      text: 'No tienes una cuenta aun ?',
                      style: TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Registrate Aqui',
                          style: TextStyle(color: Colors.blueAccent),
                        )
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    )

        /*Center(
        child: Container(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    provider.googleLogin();
                  },
                  child: Text('Sign in google')),
              ElevatedButton(onPressed: () {}, child: Text('Sign in Normal'))
            ],
          ),
        ),
      ),*/
        );
  }
}
