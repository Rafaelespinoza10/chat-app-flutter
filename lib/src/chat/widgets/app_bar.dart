import 'package:flutter/material.dart';

class AppBarChat extends StatelessWidget implements PreferredSizeWidget {

  final ImageProvider? backgroundImage;

  const AppBarChat({
    super.key,
    required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: AppBar(
        leading:  Padding(
          padding:  EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: backgroundImage,
            onBackgroundImageError: (exception, strackTrace){
              debugPrint('Error loading Image: $exception');
            },
              child: backgroundImage == null ? Icon(Icons.person, size: 24.0) : null,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
          SizedBox(width: 50,),
             Text(
              'Rafael Moreno',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'Online',
              style: TextStyle(fontSize: 12.0, color: Colors.green),
            ),
          ],
        ),
        
        centerTitle: false,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
