import 'package:flutter/material.dart';
import 'package:travel/screens/initial.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _progressValue = 0.0;

  @override
  void initState() {
    super.initState();

    // Simula un progreso que avanza con el tiempo
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _progressValue = 0.2;
      });
    });
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _progressValue = 0.4;
      });
    });
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _progressValue = 0.6;
      });
    });
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        _progressValue = 0.8;
      });
    });
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _progressValue = 1.0;
      });
      
      // Llama a la función de navegación cuando se completa el progreso
      _navigateToNextScreen(context);
    });
  }

  Future<void> _navigateToNextScreen(BuildContext context) async {
    // Simular una tarea asíncrona, como cargar datos o recursos
    await Future.delayed(const Duration(seconds: 2));

    // Navegar a la siguiente pantalla
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Initial(), // Reemplaza "NextScreen" con el nombre de tu siguiente pantalla
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset('img/logo.jpg'),
              ),
            ),
            const SizedBox(height: 50.0),
            const Text(
              'Tour Guide',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 90.0),
            SizedBox(
              width: 150.0,
              child: LinearProgressIndicator(
                minHeight: 4.0,
                value: _progressValue,
                backgroundColor: Colors.grey,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
