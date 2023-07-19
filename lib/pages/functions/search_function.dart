import 'package:flutter/material.dart';

Widget getSearchPage() {
  return ListView.builder(
    itemBuilder: (context, index) {
      return generateSearchPage(index);
    },
  );
}

generateSearchPage(int index) {
  if (index == 0) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: SearchBar(
        hintText: 'Search',
      ),
    );
  } else {
    return getImageGrid();
  }
}

Widget getImageGrid() {
  return Container(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Card(child: Image.asset('images/user.png')),
        ),
        Expanded(
          flex: 1,
          child: Card(child: Image.asset('images/user.png')),
        ),
        Expanded(
          flex: 1,
          child: Card(child: Image.asset('images/user.png')),
        ),
      ],
    ),
  );
}
