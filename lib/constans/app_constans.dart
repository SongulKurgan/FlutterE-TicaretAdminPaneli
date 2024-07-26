


import 'package:ecommerce_flutter_admin1/models/categories_model.dart';
import 'package:ecommerce_flutter_admin1/services/assets_manager.dart';
import 'package:flutter/material.dart';

class AppConstans {

  static const String imageUrl =
      'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png';

  static List<String> bannerImages=[
    AssetsManager.slide1,
    AssetsManager.slide2,
    AssetsManager.slide3,
    AssetsManager.slide4,
    AssetsManager.slide5,
    AssetsManager.slide6,
    AssetsManager.slide7,
  ];
  static List<CategoriesModel> categoriesList2= [
    CategoriesModel(
      id: "Computer",
      name: "Bilgisayar",
      image: AssetsManager.computer,
    ),
    CategoriesModel(
      id: "Books",
      name: "Kitaplar",
      image: AssetsManager.file,
    ),
    CategoriesModel(
      id: "Flower",
      name: "Çiçekler",
      image: AssetsManager.flower,
    ),
    CategoriesModel(
      id: "Mobile Phone",
      name: "Akıllı Telefon",
      image: AssetsManager.mobilephone,
    ),
    CategoriesModel(
      id: "Shoes",
      name: "Ayakkabılar",
      image: AssetsManager.shoes3,
    ),
    CategoriesModel(
      id: "T-short",
      name: "T-short",
      image: AssetsManager.tshort,
    ),
    CategoriesModel(
      id: "Watch",
      name: "Saat",
      image: AssetsManager.watch,
    ),
  ];


  static List<String> categorieList = [
    'Mobile Phone',
    'Watch',
    'Cameras',
    'Flower',
    'Wearables',
    'Audio',
    'Gaming',
    'Books',
    'TVs',
    'Shoes'


  ];

  static List<DropdownMenuItem<String>>? get categoriesDropDownList{
    List<DropdownMenuItem<String>>? menuItem=
        List<DropdownMenuItem<String>>.generate(categorieList.length, (index) => DropdownMenuItem(
            child: Text(categorieList[index]),
             value: categorieList[index],
        ),
        );
        return menuItem;
  }
}