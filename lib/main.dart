import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}  
//Prueba Codigo  

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFF2C2C2C), // Color gris oscuro suave
      body: Column(
        children: [
          // Fila 1: Imagen (35%)
          SizedBox(
            height: screenHeight * 0.35,
            child: Center(
              child: Icon(
                Icons.person,
                size: 120,
                color: Colors.white, // Color para que resalte en fondo oscuro
              ),
            ),
          ),

          // Fila 2: Campo de usuario
          SizedBox(
            height: screenHeight * 0.15,
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "USUARIO:",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[800], // Fondo del campo
                        border: OutlineInputBorder(),
                        hintText: "Ingrese su usuario",
                        hintStyle: TextStyle(color: Colors.white54), // Texto tenue
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Fila 3: Campo de contraseña
          SizedBox(
            height: screenHeight * 0.15,
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "CONTRASEÑA:",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[800],
                        border: OutlineInputBorder(),
                        hintText: "Ingrese su contraseña",
                        hintStyle: TextStyle(color: Colors.white54),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Fila 4: Botón "Iniciar Sesión"
          SizedBox(
            height: screenHeight * 0.20,
            child: Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent, // Azul para resaltar
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                child: Text("Iniciar Sesión"),
              ),
            ),
          ),

          // Fila 5: "Crear Usuario" y "Olvidó su Contraseña"
          SizedBox(
            height: screenHeight * 0.15,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.person_add, size: 24, color: Colors.white),
                    label: Text("CREAR USUARIO", style: TextStyle(color: Colors.white)),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Olvidó su Contraseña", style: TextStyle(color: Colors.white70)),
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
