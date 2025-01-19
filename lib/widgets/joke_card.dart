import 'package:flutter/material.dart';

class JokeCard extends StatelessWidget {
  final String type;
  final VoidCallback onTap;
  final bool isFavorite; // Додавање на нов параметар
  final VoidCallback onFavorite; // Callback за означување на омилена шега

  const JokeCard({
    Key? key,
    required this.type,
    required this.onTap,
    required this.isFavorite, // Иницијализација на нов параметар
    required this.onFavorite, // Callback за омилени
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(type, style: TextStyle(fontSize: 18)),
        onTap: onTap,
        trailing: IconButton(
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : Colors.grey,
          ),
          onPressed: onFavorite, // Повик на функцијата кога ќе се притисне копчето
        ),
      ),
    );
  }
}
