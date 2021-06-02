import 'package:flutter/material.dart';

class ChallengePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 170,
                child: Image.asset('assets/images/Tinder_logo.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Location Changer',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Pluggin App for Tinder',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                height: 30,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color: Colors.white,
                  textColor: Colors.redAccent,
                  onPressed: () => Navigator.of(context).pushReplacementNamed('/home'),
                  child: Container(
                    width: 200,
                    height: 40,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text('Login with Facebook', style: TextStyle(fontSize: 15),)),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
