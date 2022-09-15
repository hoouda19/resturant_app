import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resturant_app/model/product.dart';

class HomeController {

  bool loading = true;
  List<Product> drinks = <Product>[];
  List<Product> food = <Product>[];

  void setTriggerLoading(){
    loading = !loading;
    print(loading);
  }

  FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  Future<void> getData() async {
    await getDrinks();
    await getFood();
  }

  Future<bool> getDrinks() async {
    try {
      QuerySnapshot<Map<String, dynamic>> data =
          await _fireStore.collection('Drinks').get();

      print(data.docs);
      for (var item in data.docs) {
        drinks.add(Product.fromJson(item.data()));
      }
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> getFood() async {
    try {
      QuerySnapshot<Map<String, dynamic>> data =
          await _fireStore.collection('Products').get();
      print(data.docs);

      for (var item in data.docs) {
        food.add(Product.fromJson(item.data()));
      }
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }
}
