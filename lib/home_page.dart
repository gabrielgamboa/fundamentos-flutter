import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

import 'login_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              //componente de header da conta da pessoa
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                    'https://avatars.githubusercontent.com/u/57016200?v=4'),
              ),
              accountEmail: Text(LoginController.loginInstance.email),
              accountName: Text('Gabriel Gambôa'),
            ),
            ListTile(
              //item de lista no drawer
              leading:
                  Icon(Icons.home), //leading é um icone que fica à esquerda
              title: Text("Home"),
              subtitle: Text("Tela de início"),
              onTap: () => print("Estamos na home"),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text("Tinderzada"),
              onTap: () =>
                  Navigator.of(context).pushReplacementNamed('/challenge'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Sair"),
              onTap: () => Navigator.of(context).pushReplacementNamed('/'),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Contador: $counter',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CustomSwitch(), Text('Dark mode switch')],
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
