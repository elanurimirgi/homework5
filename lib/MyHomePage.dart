import 'package:flutter/material.dart';
class MyHomePage extends StatelessWidget {
  final bool isDarkTheme;
  final VoidCallback toggleTheme;

  const MyHomePage({
    Key? key,
    required this.isDarkTheme,
    required this.toggleTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tema Değiştirme Uygulaması'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tema: ${isDarkTheme ? "Karanlık" : "Açık"}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: toggleTheme,
              child: Text('Temayı Değiştir'),
            ),
          ],
        ),
      ),
    );
  }
}
