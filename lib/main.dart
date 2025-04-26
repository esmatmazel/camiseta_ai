import 'package:flutter/material.dart';

void main() {
  runApp(const CamisetaApp());
}

class CamisetaApp extends StatelessWidget {
  const CamisetaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Camiseta AI',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camiseta AI'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Camiseta AI',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // 3 ana seçenek kutuları
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OptionBox(optionName: 'Gardrobum', onTap: () {
                  // Gardırop sayfasına yönlendirme
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CategoryPage(categoryName: 'Gardrobum')),
                  );
                }),
                const SizedBox(width: 10),
                OptionBox(optionName: 'Kombinler', onTap: () {
                  // Kombinler sayfasına yönlendirme
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CategoryPage(categoryName: 'Kombinler')),
                  );
                }),
                const SizedBox(width: 10),
                OptionBox(optionName: 'Kombin Oluştur', onTap: () {
                  // Kombin oluştur sayfasına yönlendirme
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CategoryPage(categoryName: 'Kombin Oluştur')),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OptionBox extends StatelessWidget {
  final String optionName;
  final Function onTap;

  const OptionBox({required this.optionName, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.orange.shade100,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.orange, width: 2),
        ),
        child: Center(
          child: Text(
            optionName,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class CategoryPage extends StatelessWidget {
  final String categoryName;

  const CategoryPage({required this.categoryName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$categoryName Sayfası'),
      ),
      body: Center(
        child: Text(
          '$categoryName sayfasına hoş geldiniz!',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
