import 'package:flutter/material.dart';
import 'package:travel/screens/home.dart';

class LugaresPage extends StatefulWidget {
  @override
  _LugaresPageState createState() => _LugaresPageState();
}

class _LugaresPageState extends State<LugaresPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lugares a visitar',
          style: TextStyle(
            color: Colors.white, // Color del texto del AppBar
            fontSize: 24.0, // Tamaño del texto del AppBar
          ),
        ),
        centerTitle: true, // Centra el título en el AppBar
        backgroundColor: const Color.fromARGB(
            255, 30, 131, 214), // Cambia el color de fondo del AppBar
        iconTheme: IconThemeData(
            color:
                Colors.white), // Cambia el color del ícono de retorno a blanco
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            ); // Para regresar a la pantalla anterior
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          // Fondo con degradado azul y blanco
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue, Colors.white], // Colores del degradado
                stops: [0.5, 0.5], // Divide la pantalla a la mitad
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ListView(
                    children: [
                      CustomOption(
                        image: 'img/puente.jpeg',
                        name: 'Puente de la historia',
                        stars: 5,
                        isFavorite: true,
                        price: '\$100',
                      ),
                      CustomOption(
                        image: 'img/utsjr.jpeg',
                        name: 'UTSJR',
                        stars: 3,
                        isFavorite: false,
                        price: '\$80',
                      ),
                      CustomOption(
                        image: 'img/puerta.jpeg',
                        name: 'Puerta negra',
                        stars: 5,
                        isFavorite: true,
                        price: '\$120',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (index) {
          // Cambia la página actual al hacer clic en un ícono
          // Puedes imprimir en la consola o realizar otras acciones aquí
          // según las páginas que desees agregar
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}

class CustomOption extends StatelessWidget {
  final String image;
  final String name;
  final int stars;
  final bool isFavorite;
  final String price;

  CustomOption({
    required this.image,
    required this.name,
    required this.stars,
    required this.isFavorite,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image.asset(image,
              height: 120.0), // Imagen del hospedaje (más pequeña)
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  name, // Nombre del hospedaje
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.amber), // Icono de estrella
                    Text(
                      stars.toString(), // Calificación (número de estrellas)
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  price, // Precio del hospedaje en azul
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite
                      ? Colors.red
                      : Colors.grey, // Corazón de destacado
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
