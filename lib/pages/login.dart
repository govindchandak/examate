import 'package:examate/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String demo = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "welcome to Examate $demo ",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(children: [
                TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      demo = value;
                      setState(() {});
                    }),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),

            InkWell(
              onTap: () async {
                //Navigator.pushNamed(context, MyRoutes.loginroute);
                setState(() {
                  changeButton = !(changeButton);
                });

                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.loginroute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changeButton ? 50:150,
                height: 50,
                //color: Colors.purple,
                alignment: Alignment.center,
                child:  changeButton? Icon(
                    Icons.done,
                    color: Colors.white,
                  ) : Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                decoration: BoxDecoration(
                    shape: changeButton? BoxShape.circle : BoxShape.rectangle,
                    color: Colors.blueAccent,
                    //borderRadius: BorderRadius.circular(8)),
              ),
            )
            //ElevatedButton(
            //  onPressed: () {
            //  Navigator.pushNamed(context, MyRoutes.loginroute);
            //},
            // child: Text("login"))
            ),
            ],
        )));
  }
}
