import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Home Page",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dialog"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // Get.defaultDialog();
                    Get.defaultDialog(
                        title: "SWT Technologies",
                        titleStyle: const TextStyle(fontSize: 15),
                        middleText: "We are flutter development team",
                        middleTextStyle: const TextStyle(fontSize: 20),
                        backgroundColor: Colors.purple.shade100,
                        radius: 30,
                        //To customize the middle text
                        content: const Row(
                          children: [
                            CircularProgressIndicator(),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(child: Text("Loading")),
                          ],
                        ),
                      //Default Confirm and Cancel Action
                      textCancel: "Cancel",
                      cancelTextColor: Colors.white,
                      textConfirm: "Confirm",
                      confirmTextColor: Colors.white,
                      onCancel: (){},
                      onConfirm: (){},
                      buttonColor: Colors.green,
                      cancel: const Text(
                        "Cancels",
                        style: TextStyle(color: Colors.white),
                      ),
                      confirm: const Text(
                        "Confirm",
                        style: TextStyle( color: Colors.white),
                      ),
                      actions: [
                        ElevatedButton( child: const Text("Action-1"),onPressed: (){Get.back();}),
                        ElevatedButton( child: const Text("Action-2"),onPressed: (){Get.back();})
                      ],
                      barrierDismissible: false,

                    );

                  },
                  child: const Text("Show Dialog"))
            ],
          ),
        ),
      ),
    );
  }
}
