import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DogPage extends StatelessWidget {
  const DogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 0.95,
                  height: Get.size.height * 0.4,
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: Get.size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: const BoxDecoration(
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Text(
                            'text $i',
                            style: const TextStyle(fontSize: 16.0),
                          ));
                    },
                  );
                }).toList(),
              ),
              Positioned(
                top: 10,
                left: 20,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 10,
                right: 20,
                child: IconButton(
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: const [
                      Text("Age"),
                      Text("3 months"),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: const [
                      Text("Weight   "),
                      Text("2 kg"),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: const [
                      Text("Sex"),
                      Text("Female"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            title: const Text(
              "Nora",
              textScaleFactor: 1.3,
            ),
            trailing: const Text(
              "Corgi",
              textScaleFactor: 1.1,
            ),
            subtitle: Row(
              children: const [
                Icon(Icons.location_on_outlined),
                SizedBox(
                  width: 8,
                ),
                Text("110 N 3th St, Brooklyn, NY, USA")
              ],
            ),
          ),
          const ListTile(
            title: Text(
              "About",
              textScaleFactor: 1.3,
            ),
            subtitle: Text(
                "Desvjhdkvncnv fdjf nsdkfn kcsf jkfhks djfcnjfcksn fkvsjsdfcmsdjf  kjfjkdsnfmjnv  jksdf njnj j jnj jn j n kj j ljojk jojm esvjhdkvncnv fdjf nsdkfn kcsf jkfhks  \n \n fcnjfcksnfkvsj sdfcmsdjf  kjfjkdsnfmjnv  jksdf njnj j jnj jn j n kj j ljojk jojm Desvjhdkvncnv fdjf nsdkfn kcsf jkfhks jfcnjfcksnfkvsjsdfcmsdjf  kjfjkdsnfmjnv  jksdf njnj j jnj jn j n kj j ljojk jojm Desvjhdkvncnv fdjf nsdkfn kcsf jkfhks jfcnjfcksnfkvsjsdfcmsdjf  kjfjkdsnfmjnv  jksdf njnj j jnj jn j n kj j ljojk jojm Desvjhdkvncnv fdjf nsdkfn kcsf jkfhks  jfcnjfcks nfkvsjsdfcmsdjf  kjfjkdsnfmjnv  jksdf njnj j jnj jn j n kj j ljojk jojm k"),
          ),
          Positioned(
            bottom: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: Get.size.width * 0.7,
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.star),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text("Adopt"),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: Get.size.width * 0.2,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.call,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
