import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemCard extends StatelessWidget {
  final String itemName;
  final String breedName;
  final IconData itemGender;
  final String itemAge;
  final String imageUrl;

  const ItemCard({
    Key? key,
    required this.itemName,
    required this.breedName,
    required this.itemGender,
    required this.itemAge,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("i m pressed");
      },
      child: SizedBox(
        width: Get.size.width * 0.35,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Card(
              child: Column(
            children: [
              Image.network(
                imageUrl,
                fit: BoxFit.cover,
                height: 80,
                width: Get.size.width * 0.45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Chip(
                    label: Text(
                      itemAge,
                    ),
                  ),
                  Icon(itemGender),
                ],
              ),
              Text(
                itemName,
                textScaleFactor: 1.3,
              ),
              Text(
                breedName.toUpperCase(),
                textScaleFactor: 0.9,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
