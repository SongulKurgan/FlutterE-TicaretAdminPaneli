

import 'package:ecommerce_flutter_admin1/services/assets_manager.dart';
import 'package:ecommerce_flutter_admin1/widget/subtitle_text.dart';
import 'package:ecommerce_flutter_admin1/widget/title_text.dart';
import 'package:flutter/material.dart';

class MyAppFunctions{
  static Future<void> showErrorOrWaningDialog({
    required BuildContext context,
    required String subtitle,
    bool isError = true,
    required Function fct,

  }) async
  {
    await showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  isError ? AssetsManager.error : AssetsManager.warning,
                  height: 60,
                  width: 60,
                ),
                const SizedBox(
                  height: 16.0,),
                SubTitleTextWidget(label: subtitle, fontWeight: FontWeight.w600,),
                const SizedBox(
                  height: 16.0,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                        visible: !isError,
                        child: TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: const SubTitleTextWidget(label: "Vazgeç", color:Colors.greenAccent),
                        )

                    ),
                    TextButton(
                      onPressed: (){
                        fct();
                        Navigator.pop(context);

                      },
                      child: const SubTitleTextWidget(label: "Tamam", color:Colors.red),
                    )



                  ],


                )

              ],



            ),
          );


        }

    );


  }
  static Future<void> ImagePickerDialog({
    required BuildContext context,
    required Function cameraFCT,
    required Function galleryFCT,
    required Function removeFCT,

  })async{
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title:  const Center(
              child: TitleTextWidget(label: "Seçiniz"),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [

                  TextButton.icon(
                      onPressed: (){
                        cameraFCT();
                        if(Navigator.canPop(context)){
                          Navigator.pop(context);
                        }
                      },
                      icon: const Icon(Icons.camera),
                      label: const Text("Kamera")
                  ),


                  TextButton.icon(
                      onPressed: (){
                        galleryFCT();
                        if(Navigator.canPop(context)){
                          Navigator.pop(context);
                        }
                      },
                      icon: const Icon(Icons.image),
                      label: const Text("Galeri")
                  ),


                  TextButton.icon(
                      onPressed: (){
                        removeFCT();
                        if(Navigator.canPop(context)){
                          Navigator.pop(context);
                        }
                      },
                      icon: const Icon(Icons.delete),
                      label: const Text("Vazgeç")
                  ),

                ],
              ),
            ),
          );
        }
    );

  }

}