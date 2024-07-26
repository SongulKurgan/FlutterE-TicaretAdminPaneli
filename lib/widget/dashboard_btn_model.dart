


import 'package:ecommerce_flutter_admin1/screens/editorUploadProduct.dart';
import 'package:ecommerce_flutter_admin1/screens/search_screen.dart';
import 'package:ecommerce_flutter_admin1/services/assets_manager.dart';
import 'package:ecommerce_flutter_admin1/widget/order/order_screen.dart';
import 'package:flutter/material.dart';

class DashboardButtonModel{
  final String text, imagePath;
  final Function onPressed;

  DashboardButtonModel({
    required this.text,
    required this.imagePath,
    required this.onPressed,

});

  static List<DashboardButtonModel> dashboardBtnList(context)=>[

    DashboardButtonModel(
        text: "Yeni Ürün Ekle",
        imagePath: AssetsManager.bagimages1,
        onPressed: (){
          Navigator.pushNamed(context, EditorUploadProductScreen.routName);
        },
    ),


    DashboardButtonModel(
      text: "Tüm Ürünler",
      imagePath: AssetsManager.woman2,
      onPressed: (){
        Navigator.pushNamed(context, OrderScreen.routName);
      },
    ),

    DashboardButtonModel(
      text: "Siparişleri Görüntüle",
      imagePath: AssetsManager.bagimages2,
      onPressed: (){
        Navigator.pushNamed(context, SearchScreen.routName);
      },
    ),


  ];




}