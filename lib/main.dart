import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main(List<String> args) {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Get X",
    home: GetX(),
  ));
}
class GetX extends StatelessWidget {
  const GetX({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX"),),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center, children: [

ElevatedButton(onPressed: (){
Get.snackbar("show snackbar", "this will be snackbar Message",
//SnackPosition.BOTTOM Position & Text Color
snackPosition: SnackPosition.BOTTOM,
titleText: Text("Another Title",style: TextStyle(color: Colors.blue),),
messageText: Text("Another Message",style: TextStyle(color: Colors.amber),),
);
}, child: Text("Show Snackbar")),
      ],),),
    );
  }
}