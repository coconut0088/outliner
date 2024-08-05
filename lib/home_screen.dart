import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          PostCard(
            username: 'username',
            content: 'Nostra lorem semper viverra ultricies mollis bibendum pretium. Ultrices velit volutpat aenean molestie quam, posuere eleifend nullam. Leo augue eleifend porta magna fusce ultrices platea.',
            imageUrl: 'https://example.com/image.jpg',
          ),
          PostCard(
            username: 'username',
            content: 'Mattis viverra sagittis mus, suscipit sollicitudin dapibus facilisi. Aliquam adipiscing suscipit dolor ex duis etiam neque faucibus sit. Quis sagittis natoque dui natoque eleifend. Ex mus at fusce tincidunt lectus molestie purus aenean. Molestie',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '검색'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: '알림'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '프로필'),
        ],
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final String username;
  final String content;
  final String? imageUrl;

  PostCard({required this.username, required this.content, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(child: Text('A')),
            title: Text('Name'),
            subtitle: Text('@$username'),
            trailing: Icon(Icons.more_vert),
          ),
          if (imageUrl != null)
            Image.network(
              imageUrl!,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(content),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: Icon(Icons.reply), onPressed: () {}),
              IconButton(icon: Icon(Icons.repeat), onPressed: () {}),
              IconButton(icon: Icon(Icons.comment), onPressed: () {}),
              Text('1'),
            ],
          ),
        ],
      ),
    );
  }
}