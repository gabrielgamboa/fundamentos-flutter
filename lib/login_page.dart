import 'package:flutter/material.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 300,
                  height: 170,
                  child: Image.asset('assets/images/Nubank_logo.png')),

              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12, top: 20, right: 12, bottom: 12),
                  child: Column(children: [
                    TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'E-mail', border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      onChanged: (text) {
                        password = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password', border: OutlineInputBorder()),
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    // ignore: deprecated_member_use
                    RaisedButton(
                      color: Colors.purple,
                      textColor: Colors.white,
                      onPressed: () {
                          LoginController.loginInstance.changeEmail(email);
                          Navigator.of(context).pushReplacementNamed('/home');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        child: Center(child: Text("Entrar", textAlign: TextAlign.center)),
                      ),
                    )
                  ]),
                ),
              ),

              // ignore: deprecated_member_use
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            )),
        Container(
          color: Colors.black.withOpacity(0.3),
        ),
        _body(),
      ],
    ));
  }
}
