import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({Key? key, this.height = 100}) : super(key: key);
  final imageUrl =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7nozNOrfOnw9EWU5u-JpXeqjzVFY0iVf8aQ&usqp=CAU';
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl, height: 100, fit: BoxFit.cover);
  }
}
