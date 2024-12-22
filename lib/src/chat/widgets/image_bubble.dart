import 'package:flutter/material.dart';

class ImageBubble extends StatelessWidget {
 final String? url; 
  const ImageBubble({
    super.key,
    this.url,
  });

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size; // dimensiones del dispositivo

      if (url == null || url!.isEmpty) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: size.width * 0.7,
        height: 140,
        color: Colors.grey.shade200, // Fondo gris como marcador
        child: Center(
          child: Text(
            'Sin imagen',
            style: TextStyle(color: Colors.grey.shade700),
          ),
        ),
      ),
    );
  }
    return  ClipRRect(

      borderRadius: BorderRadius.circular(20),
      child: Image.network(
          url!,
          width: size.width * 0.7,
          height: 140,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if( loadingProgress ==  null) return child;
            return Container(
            width:size.width *0.7 ,
            height: 140,
                    padding: const EdgeInsets.symmetric( horizontal:  10, vertical: 5 ),
            child: const Text('Rafael is Typing...'),
          );
        },
      )
    );
  }
}