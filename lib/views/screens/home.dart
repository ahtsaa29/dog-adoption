import 'package:dogadoption_app/views/widgets/category_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/item_card.dart';
import '../widgets/widget_gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //location search bar
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "location",
                          prefixIcon: const Icon(
                            Icons.location_on_outlined,
                          ),
                          suffixIcon: const Icon(
                            Icons.close,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    CircleAvatar(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.person),
                      ),
                    ),
                  ],
                ),
                const VGap(),
                // animal search bar
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                          ),
                          suffixIcon: Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.person),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const VGap(),
                const VGap(),
                //categories
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      CategoryWidget(
                        categoryIcon: Icons.home,
                        categoryName: "Dog",
                      ),
                      HGap(),
                      CategoryWidget(
                        categoryIcon: Icons.abc,
                        categoryName: "Cat",
                      ),
                      HGap(),
                      CategoryWidget(
                        categoryIcon: Icons.safety_check,
                        categoryName: "Rat",
                      ),
                      HGap(),
                      CategoryWidget(
                        categoryIcon: Icons.tab,
                        categoryName: "Chicken",
                      ),
                      HGap(),
                      CategoryWidget(
                        categoryIcon: Icons.mail,
                        categoryName: "Duck",
                      ),
                      HGap(),
                      CategoryWidget(
                        categoryIcon: Icons.baby_changing_station,
                        categoryName: "Bat",
                      ),
                      HGap(),
                      CategoryWidget(
                        categoryIcon: Icons.padding_sharp,
                        categoryName: "Mat",
                      ),
                      HGap(),
                    ],
                  ),
                ),
                const VGap(),
                const VGap(),
                const Text("near"),

                GridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  children: const [
                    ItemCard(
                      itemName: "Nora",
                      breedName: "Corgi",
                      itemGender: Icons.male,
                      itemAge: "Puppy",
                      imageUrl:
                          "https://cdn.pixabay.com/photo/2019/08/19/07/45/corgi-4415649__480.jpg",
                    ),
                    ItemCard(
                      itemName: "Nora",
                      breedName: "Corgi",
                      itemGender: Icons.male,
                      itemAge: "Puppy",
                      imageUrl:
                          "https://cdn.pixabay.com/photo/2019/08/19/07/45/corgi-4415649__480.jpg",
                    ),
                    ItemCard(
                      itemName: "Nora",
                      breedName: "Corgi",
                      itemGender: Icons.male,
                      itemAge: "Puppy",
                      imageUrl:
                          "https://cdn.pixabay.com/photo/2019/08/19/07/45/corgi-4415649__480.jpg",
                    ),
                    ItemCard(
                      itemName: "Nora",
                      breedName: "Corgi",
                      itemGender: Icons.male,
                      itemAge: "Puppy",
                      imageUrl:
                          "https://cdn.pixabay.com/photo/2019/08/19/07/45/corgi-4415649__480.jpg",
                    ),
                    ItemCard(
                      itemName: "Nora",
                      breedName: "Corgi",
                      itemGender: Icons.male,
                      itemAge: "Puppy",
                      imageUrl:
                          "https://cdn.pixabay.com/photo/2019/08/19/07/45/corgi-4415649__480.jpg",
                    ),
                    ItemCard(
                      itemName: "Nora",
                      breedName: "Corgi",
                      itemGender: Icons.male,
                      itemAge: "Puppy",
                      imageUrl:
                          "https://cdn.pixabay.com/photo/2019/08/19/07/45/corgi-4415649__480.jpg",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
