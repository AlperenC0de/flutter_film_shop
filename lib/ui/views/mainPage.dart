import 'package:flutter/material.dart';
import 'package:flutter_application_9/data/entity/films.dart';
import 'package:flutter_application_9/ui/views/detailPage.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {

  Future<List<Film>> uploadFilm() async {
      var filmsList = <Film>[];
      var f1 = Film(id: 1, name: "Django", picture: "django.png", price: 24);
      var f2 = Film(id: 2, name: "Interstellar", picture: "interstellar.png", price: 32);
      var f3 = Film(id: 3, name: "Inception", picture: "inception.png", price: 16);
      var f4 = Film(id: 4, name: "The Hateful Eight", picture: "thehatefuleight.png", price: 28);
      var f5 = Film(id: 5, name: "The Pianist", picture: "thepianist.png", price: 18);
      var f6 = Film(id: 6, name: "Anadoluda", picture: "anadoluda.png", price: 10);
      filmsList.add(f1);
      filmsList.add(f2);
      filmsList.add(f3);
      filmsList.add(f4);
      filmsList.add(f5);
      filmsList.add(f6);
      return filmsList;
 }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Film List"),),
      body: FutureBuilder<List<Film>>(
        future: uploadFilm(), 
        builder: (context,snapshot){
          if(snapshot.hasData){
            var filmsList=snapshot.data;
            return GridView.builder(
              itemCount: filmsList!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1/1.8),
              itemBuilder: (context, index) {
                var film=filmsList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(film: film)));
                  },
                  child: Card(
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("images/${film.picture}"),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${film.price}\$"),
                            ElevatedButton(onPressed: (){
                              print("${film.name} added to cart");
                            }, child: Text("ADD TO CART", style: TextStyle(fontSize: 10),)),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          }
          else{
            return const Center();
          }
        }
        ),
    );
  }
}