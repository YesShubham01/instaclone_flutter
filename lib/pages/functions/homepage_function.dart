import 'package:flutter/material.dart';

getHomePage() {
  return ListView.builder(itemBuilder: (_, index) {
    return generateHomePage(index);
  });
}

generateHomePage(int index) {
  if (index == 0) {
    return getHeader();
  } else if (index == 1) {
    return getStories();
  } else {
    return getPost();
  }
}

getHeader() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 0, 15, 23),
    child: Row(
      children: [
        const Text(
          'Instagram',
          style: TextStyle(fontSize: 30),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.heart_broken),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.message),
        ),
      ],
    ),
  );
}

getStories() {
  return SizedBox(
    height: 95,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const SizedBox(
          width: 95,
          child: Card(
            shape: CircleBorder(),
            child: CircleAvatar(
              foregroundImage: AssetImage('images/user.png'),
            ),
          ),
        );
      },
    ),
  );
}

getPost() {
  return SizedBox(
    height: 700,
    child: ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const SizedBox(
          width: 90,
          child: Card(child: Image(image: AssetImage('images/user.png'))),
        );
      },
    ),
  );
}

getBottomNavigationBar() {
  return BottomNavigationBar(
    backgroundColor: Colors.black,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Image(
          image: AssetImage('images/user.png'),
          height: 25,
        ),
        label: 'Profile',
      ),
    ],
  );
}
