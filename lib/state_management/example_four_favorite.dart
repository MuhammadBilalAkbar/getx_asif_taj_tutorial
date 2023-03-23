import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleFourFavorite extends StatefulWidget {
  const ExampleFourFavorite({Key? key}) : super(key: key);

  @override
  State<ExampleFourFavorite> createState() => _ExampleFourFavoriteState();
}

class _ExampleFourFavoriteState extends State<ExampleFourFavorite> {
  // List<String> fruitList = ['Orange', 'Apple', 'Mangoes', 'Banana'];
  // List<String> favoriteFruits = [];

  final favoriteController = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    debugPrint('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Example Four Favorite'),
      ),
      body: ListView.builder(
        itemCount: favoriteController.fruitList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                // setState(() {
                if (favoriteController.favoriteFruits
                    .contains(favoriteController.fruitList[index])) {
                  /// addToFavoriteFunction
                  // favoriteController.addToFavorites(favoriteController.fruitList[index]);
                  favoriteController.favoriteFruits
                      .remove(favoriteController.fruitList[index]);
                } else {
                  favoriteController.favoriteFruits
                      .add(favoriteController.fruitList[index]);
                }
                // });
              },
              title: Text(favoriteController.fruitList[index]),
              trailing: Obx(
                () {
                  return Icon(
                    Icons.favorite,
                    size: 60,
                    color: favoriteController.favoriteFruits.contains(
                      favoriteController.fruitList[index],
                    )
                        ? Colors.red
                        : Colors.black12,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class FavoriteController extends GetxController {
  RxList<String> fruitList = ['Orange', 'Apple', 'Mangoes', 'Banana'].obs;

  // List favoriteFruits = [].obs;
  RxList favoriteFruits = [].obs;

// void addToFavorites(String value) {
//   favoriteFruits.add(value);
// }
//
// void removeFromFavorites(String value) {
//   favoriteFruits.add(value);
// }
}
