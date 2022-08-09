import 'package:flutter/material.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 20,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.white,
        ),
        child: IconButton(
          icon: const Icon(
            Icons.favorite,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
