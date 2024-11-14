import 'package:flutter/material.dart';

class LoginCafeScreen extends StatelessWidget {
  const LoginCafeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Color definido para el texto descriptivo en plomo
    const colorPlomo = Colors.grey;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cafe',
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Nuestro mejor café del mundo',
                  style: TextStyle(
                    color: colorPlomo,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            // Cargar la imagen desde los assets
            const FadeInImage(
              placeholder: AssetImage('asset/images/jar-loading.gif'),  
              image: AssetImage('asset/images/cafe.gif'),   
              height: 200,  
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 300),
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 20),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Iniciar Sesión',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                    side: const BorderSide(color: Colors.brown),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 20),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Registrarte',
                    style: TextStyle(color: Colors.brown),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
