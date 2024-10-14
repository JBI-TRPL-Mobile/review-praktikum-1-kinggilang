import 'package:flutter/material.dart';
import '../models/book.dart';
import '../data.dart';


class MyHomePage extends StatelessWidget {
  static const routName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'),
      ),//appBar
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            Book book = books[index];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
              child: ListTile(
                leading: Image.network(
                  book.imageUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(book.title),
                subtitle: Text(book.author),
                trailing: ElevatedButton(
                  child: Text('Detail'),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/detail',
                      arguments: book,
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
