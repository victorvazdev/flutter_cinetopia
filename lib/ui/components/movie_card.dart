import 'package:cinetopia/app/models/movie.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 90,
            height: 120,
            decoration: BoxDecoration(
              color: Color(0xFF000000),
              image: DecorationImage(
                image: NetworkImage(movie.getPosterImage()),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            margin: const EdgeInsets.only(right: 16),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 6.0),
                child: Text(
                  movie.title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                'Lançamento: ${movie.releaseDate}',
                style: TextStyle(color: Color(0xFFA5A5A5)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
