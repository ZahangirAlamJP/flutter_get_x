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
    var count = 0.obs;
    void incriment(){
      count++;
    }
    return Scaffold(
      appBar: AppBar(title: Text("State Management"),),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center, children: [
Obx((() => Text("Count value is $count"))),
ElevatedButton(onPressed: (){
  incriment();
}, child: Text("Incriment")),
      ],),),
    );
    //Simple State Management
  }
}