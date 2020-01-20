import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  _bottomNavBar() {
    return BottomNavigationBar(
      onTap: null,
      currentIndex: 0,
      backgroundColor: Color(0xFF2d90ed),
      type: BottomNavigationBarType.fixed,
      items: _buildBottomNavItem(),
    );
  }

  _body() {
    return Container(
      child: Column(
        children: <Widget>[
          Text('Live Sports'),
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        icon: _setIcon(),
        onPressed: null,
      ),
      title: Text('Live Sports'),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: null),
      ],
    );
  }

  _setIcon() {
    return Icon(
      Icons.notifications_none,
      color: Colors.white,
    );
  }

  _buildBottomNavItem() {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.white,
        ),
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.ondemand_video,
          color: Colors.white,
        ),
        title: Text(
          'Video',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.bookmark_border,
          color: Colors.white,
        ),
        title: Text(
          'Follow',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.business,
          color: Colors.white,
        ),
        title: Text(
          'News',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        title: Text(
          'Search',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ];
  }
}
