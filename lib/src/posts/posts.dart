import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  static const List<String> imageUrls = [
    "https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?cs=srgb&dl=pexels-jaime-reimer-2662116.jpg&fm=jpg",
    "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?cs=srgb&dl=pexels-stein-egil-liland-3408744.jpg&fm=jpg",
    "https://media.istockphoto.com/photos/tropical-jungle-picture-id636208094",
    "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?cs=srgb&dl=pexels-pixabay-326055.jpg&fm=jpg",
    "https://images.pexels.com/photos/2583852/pexels-photo-2583852.jpeg?cs=srgb&dl=pexels-stijn-dijkstra-2583852.jpg&fm=jpg",
    "https://images.pexels.com/photos/381739/pexels-photo-381739.jpeg?cs=srgb&dl=pexels-sevenstorm-juhaszimrus-381739.jpg&fm=jpg",
    "https://media.istockphoto.com/photos/tropical-jungle-picture-id636208094",
    "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?cs=srgb&dl=pexels-pixabay-326055.jpg&fm=jpg",
    "https://images.pexels.com/photos/2583852/pexels-photo-2583852.jpeg?cs=srgb&dl=pexels-stijn-dijkstra-2583852.jpg&fm=jpg"
  ];

  const Posts({Key? key}) : super(key: key);

  List<Widget> createGrid() {
    List<Widget> widgets = [];
    int n = 0;

    for (int i = 0; i < 3; i++) {
      List<Widget> rowItems = [];
      for (int j = 0; j < 3; j++) {
        rowItems.add(Expanded(
            child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Image.network(
            imageUrls[n + 1],
            width: 533.33,
            height: 300,
            fit: BoxFit.cover,
          ),
        )));
        n++;
      }

      widgets.add(Row(
        children: rowItems,
      ));
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Image.network(
            imageUrls[0],
            height: 300,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
        ...createGrid(), // spread operator is responsible for merging inner list with the outer list
      ], // [1, ...[2, 3]]  ==  [1, 2, 3]
    );
  }
}
