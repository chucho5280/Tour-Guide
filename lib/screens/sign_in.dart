import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:travel/screens/sign_up.dart';

import 'home.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white, // Fondo blanco
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2, // Reducir la altura
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.lightBlue], // Degradado azul
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 200.0, // Aumentar la altura del contenedor de la imagen
                  child: Image.asset('img/logo.jpg'),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Inicio Sesion',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 14.0),
                Container(
                  width: 350.0, // Aumentar el ancho del contenedor
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centrar los campos
                    children: [
                      SizedBox(height: 8.0), // Espacio entre los campos
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Nombre o Correo',
                          suffixIcon: Icon(Icons.person),
                          contentPadding: EdgeInsets.all(10.0), // Ajustar el espacio interior del campo
                        ),
                      ),
                      SizedBox(height: 8.0),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          suffixIcon: Icon(Icons.lock),
                          contentPadding: EdgeInsets.all(10.0), // Ajustar el espacio interior del campo
                        ),
                      ),
                      SizedBox(height: 8.0),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                Column(
                  children: [
                    SizedBox(height: 16.0), // Espacio entre los botones
                    ElevatedButton(
                      onPressed: () {
                        // Acción cuando se presiona el segundo botón
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );  
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue.shade700, // Color de fondo azul con sombra
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0), // Borde redondeado
                        ),
                        minimumSize: Size(250.0, 50.0), // Ancho y alto personalizado
                      ),
                      child: Text(
                        'Inicio de Sesion',
                        style: TextStyle(
                          color: Colors.white, // Color de texto blanco
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '¿No tienes una cuenta?  ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'Crea una ahora',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Acción cuando se toca el enlace para la redirección
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
