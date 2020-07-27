import 'package:app/util/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class InitApp extends StatefulWidget {
  @override
  _InitAppState createState() => _InitAppState();
}

class _InitAppState extends State<InitApp> {
  var email = new TextEditingController();
  var password = new TextEditingController();
  bool _showPassword = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      color: Colors.purple,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: bodyScaffold(),
        floatingActionButton: FloatingActionButton(
          tooltip: "Help",
          elevation: 100,
          backgroundColor: Colors.black,
          onPressed: () {},
          child: Icon(Ionicons.ios_help),
        ),
      ),
    );
  }

  Widget bodyScaffold() {
    return Container(
      color: Color.fromRGBO(75, 26, 202, 1),
      child: Center(
        child: buttons(),
      ),
    );
  }

  Widget buttons(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(Constantes.HBO),
          fit: BoxFit.fill,),
        SizedBox(
          height: 100,
        ),
        Container(
          width: 300,
          child: TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20, fontFamily: "Poppins", color: Colors.white),
            controller: email,
            decoration: InputDecoration(
              prefixIcon: Icon(Feather.user, size: 20,),
              fillColor: Colors.white,
              labelText: Constantes.LOGIN,
              labelStyle: TextStyle(color: Colors.white),
              errorStyle: TextStyle(color: Colors.red),
              counterStyle: TextStyle(backgroundColor: Colors.white),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 300,
          child: TextFormField(
            obscureText: this._showPassword,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20, fontFamily: "Poppins", color: Colors.white),
            controller: password,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.security, size: 20,),
              suffixIcon: IconButton(
                onPressed: (){setState(() => this._showPassword = !this._showPassword);},
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: this._showPassword ? Colors.blue : Colors.grey,
                  ),),
              fillColor: Colors.white,
              labelText: Constantes.PASSWORD,
              errorStyle: TextStyle(color: Colors.red),
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () => print('Hello'),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            width: 300,
            height: 50,
            child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(SimpleLineIcons.login, color: Colors.white,),
                    Text('Login', style: TextStyle(color: Colors.purple, fontSize: 20),),
                  ],
                )),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 50,
          child: Center(
            child: Icon(Ionicons.ios_finger_print, size: 70,),
          ),
        ),
      ],
    );
  }
}
