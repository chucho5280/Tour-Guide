import 'package:flutter/material.dart';
import 'package:travel/screens/sign_in.dart';
import 'package:travel/screens/sign_up.dart';

class Initial extends StatelessWidget {
  void onPressedBotonDegradado(BuildContext context) {
    // Acción cuando se presiona el botón degradado
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUp(), // Reemplaza "Screen1" con el nombre de tu primera pantalla
      ),
    );
  }

  void onPressedBotonBordeAzul(BuildContext context) {
    // Acción cuando se presiona el botón con borde azul
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignIn(), // Reemplaza "Screen2" con el nombre de tu segunda pantalla
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200.0,
                child: Image.asset('img/logo.jpg'),
              ),
              SizedBox(height: 16.0),
              Text(
                'TourGuideApp',
                style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Tu Aventura, Tu Guía, Tu TourGuideApp',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 30.0),
              InkWell(
                onTap: () => onPressedBotonDegradado(context),
                child: Container(
                  width: 250.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.lightBlue],
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Center(
                    child: Text(
                      'Registrarse',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              InkWell(
                onTap: () => onPressedBotonBordeAzul(context),
                child: Container(
                  width: 250.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Center(
                    child: Text(
                      'Iniciar Sesión',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla 1'),
      ),
      body: Center(
        child: Text('Contenido de la Pantalla 1'),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla 2'),
      ),
      body: Center(
        child: Text('Contenido de la Pantalla 2'),
      ),
    );
  }
}
