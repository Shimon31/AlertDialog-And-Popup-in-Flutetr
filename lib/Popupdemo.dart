import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Popupdemo extends StatelessWidget {


  //Alert dialog
  void ShowAlertDialog(BuildContext context) {
    showDialog(context: context,
        builder: (BuildContext context) =>
            AlertDialog(
              title: Text("Alert"),
              content: Text("Do you want to exit this Dialog?"),
              actions: [

                TextButton(onPressed: () => Navigator.pop(context),
                    child: Text("Yes")),
                TextButton(onPressed: () => Navigator.pop(context),
                    child: Text("No"))

              ],
            ));
  }


  void ShowSimpleDialog(BuildContext context) {}


//Snack bar
  void ShowSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(content: Text("Clicked Successfully"),
            duration: Duration(seconds: 2) ,)
    );
  }



  void ShowBottomSheet(BuildContext context) {}

  const Popupdemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ElevatedButton(
              onPressed: () => ShowAlertDialog(context),
              child: Text("Show Alertdialog"),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () => ShowSimpleDialog(context),
              child: Text("Show Simple Dialog"),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () => ShowSnackBar(context),
              child: Text("Show Snack Bar"),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () => ShowBottomSheet(context),
              child: Text("Show Bottom Sheet"),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
