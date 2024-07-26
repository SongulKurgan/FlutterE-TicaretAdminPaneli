import 'package:ecommerce_flutter_admin1/services/assets_manager.dart';
import 'package:ecommerce_flutter_admin1/widget/dashboard_btn_model.dart';
import 'package:ecommerce_flutter_admin1/widget/dashboard_btn_widget.dart';
import 'package:ecommerce_flutter_admin1/widget/title_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce_flutter_admin1/provider/product_provider.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final products = productProvider.products;

    return Scaffold(
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
                AssetsManager.card,
            ),

          ),
          title:  TitleTextWidget(label:"Yönetici Paneli")
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
              DashboardButtonModel.dashboardBtnList(context).length, (index) =>
              DasboardButtonWidget(
                  text: DashboardButtonModel.dashboardBtnList(context)[index].text,
                  imagePath: DashboardButtonModel.dashboardBtnList(context)[index].imagePath,
                  onPressed: DashboardButtonModel.dashboardBtnList(context)[index].onPressed

              ))


      ),
    );
  }
}
