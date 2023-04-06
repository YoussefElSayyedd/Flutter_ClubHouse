import 'package:flutter/cupertino.dart';

class UserProfileImage extends StatelessWidget {
  // const UserProfileImage({super.key});
  final String imageUrl;
  final double size;

  const UserProfileImage({
    super.key,
    required this.imageUrl,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular((size / 2) - (size / 10)),
      child: Image.network(
        imageUrl,
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
