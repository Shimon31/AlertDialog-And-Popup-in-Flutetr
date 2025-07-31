import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Popupdemo extends StatelessWidget {
  //Alert dialog
  void ShowAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (BuildContext context) => AlertDialog(
            title: Text("Alert"),
            content: Text("Do you want to exit this Dialog?"),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Yes"),
                style: TextButton.styleFrom(foregroundColor: Colors.red),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("No"),
              ),
            ],
          ),
    );
  }

  void ShowSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("Show Simple Dialog"),
          children: [
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, "Option A"),
              child: Text("Option A"),
            ),

            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, "Option B"),
              child: Text("Option B"),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, "Option C"),
              child: Text("Option C"),
            ),
          ],
        );
      },
    );
  }

  //Snack bar
  void ShowSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Clicked Successfully"),
        duration: Duration(seconds: 1),
      ),
    );
  }

  void ShowBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(10),
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Container(height: 50, color: Colors.red)],
          ),
        );
      },
    );
  }

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
              child: Text(
                "Show Simple Dialog",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                elevation: 10,
              ),
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
