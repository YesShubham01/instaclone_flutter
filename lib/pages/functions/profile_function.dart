import 'package:flutter/material.dart';
import 'homepage_function.dart';
import 'search_function.dart';

getProfilePage() {
  return ListView.builder(
    itemBuilder: (context, index) {
      return generateProfilePage(index);
    },
  );
}

generateProfilePage(int index) {
  if (index == 0) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 23),
      child: Row(
        children: [
          const Text(
            'Username',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
  if (index == 1) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(image: AssetImage('images/user.png')),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(children: [
            Text('00'),
            Text('Posts'),
          ]),
        ),
        Expanded(
          flex: 1,
          child: Column(children: [
            Text('00'),
            Text('Followers'),
          ]),
        ),
        Expanded(
          flex: 1,
          child: Column(children: [
            Text('00'),
            Text('Following'),
          ]),
        ),
      ],
    );
  }
  if (index == 2) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15.0, 10, 15.0, 10),
      child: const Text('Hello my name is Shubham\nI am learning Flutter.'),
    );
  }
  if (index == 3) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: ElevatedButton(
                onPressed: () {}, child: const Text('Edit Profile')),
          ),
          Expanded(
            flex: 2,
            child: ElevatedButton(
                onPressed: () {}, child: const Text('Share Profile')),
          ),
          Expanded(
            flex: 1,
            child: ElevatedButton(
                onPressed: () {}, child: const Icon(Icons.group_add)),
          ),
        ],
      ),
    );
  }
  if (index == 4) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
      child: getStories(),
    );
  }
  if (index == 5) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Divider(
        height: 20,
      ),
    );
  }
  if (index == 6) {
    return getImageGrid();
  }
  if (index == 7) {
    return getImageGrid();
  } else {}
}
