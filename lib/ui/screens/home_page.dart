import 'package:cinetopia/ui/components/primary_button.dart';
import 'package:cinetopia/ui/screens/search_movies.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Color(0xFF000000), Color(0xFF1D0E44)],
            begin: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: Image.asset('assets/logo.png'),
                ),
                Image.asset('assets/splash.png'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    'O local ideal para buscar, salvar e goranizar seus filmes favoritos!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
                PrimaryButton(
                  text: 'Quero começar!',
                  icon: Icons.arrow_forward,
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchMovies()),
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
