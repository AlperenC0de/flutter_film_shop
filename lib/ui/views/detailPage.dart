import 'package:flutter/material.dart';
import 'package:flutter_application_9/data/entity/films.dart';

class Detailpage extends StatefulWidget {
  final Film film;
  Detailpage({required this.film});
  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.film.name),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/${widget.film.picture}"),
            Text("${widget.film.price} \$ ", style: TextStyle(fontSize: 20, color: Colors.black),),
          ],
        ),
      ),
    );
  }
}