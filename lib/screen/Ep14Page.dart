import 'package:flutter/material.dart';
import 'package:flutter001/main.dart';
import 'package:flutter001/screen/Ep13Page.dart';

class Ep14Page extends StatefulWidget {
  const Ep14Page({Key? key}) : super(key: key);

  @override
  _Ep14PageState createState() => _Ep14PageState();
}

enum ConfirmAction { CANCEL, ACCEPT }
enum Departments { Production, Research, Purchasing, Marketing, Accounting }

class _Ep14PageState extends State<Ep14Page> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Ep14-Snack Bar & Dialog',
          style: TextStyle(color: Color(0xff545d68)),
        ),
      ),
      body: Builder(builder: (context) {
        return ListView(
          children: [
            RaisedButton(
              onPressed: () {
                SnackBar mysnackbar = SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(
                      "Hello Snackbar",
                      style: TextStyle(color: Colors.yellow, fontSize: 20),
                    ));
                Scaffold.of(context).showSnackBar(mysnackbar);
              },
              child: Text('Snack Bar'),
            ),
            RaisedButton(
              onPressed: () {
                _showDialog(context);
              },
              child: Text('Dialog'),
            ),
            RaisedButton(
              onPressed: () {
                _asyncConfirmDialog(context);
              },
              child: Text('Dialog Confirm'),
            ),
            RaisedButton(
              onPressed: () {
                _asyncInputDialog(context);
              },
              child: Text('Dialog - input'),
            ),
            RaisedButton(
              onPressed: () {
                _asyncSimpleDialog(context);
              },
              child: Text('Dialog - simple'),
            ),
          ],
        );
      }),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Alert!!"),
          content: new Text("You are awesome!"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  //======================================================================
// FUNCTION DIALOG - CONFIRM
//======================================================================

  _asyncConfirmDialog(BuildContext context) async {
    return showDialog<ConfirmAction>(
      context: context,
      barrierDismissible: false, // user must tap button for close dialog!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Reset settings?'),
          content: const Text(
              'This will reset your device to its default factory settings.'),
          actions: <Widget>[
            FlatButton(
              child: const Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop(ConfirmAction.CANCEL);
              },
            ),
            FlatButton(
              child: const Text('ACCEPT'),
              onPressed: () {
                Navigator.of(context).pop(ConfirmAction.ACCEPT);
              },
            )
          ],
        );
      },
    );
  }

  //======================================================================
// FUNCTION DIALOG - simple
//======================================================================

  _asyncSimpleDialog(BuildContext context) async {
    return await showDialog<Departments>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Select Departments '),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Departments.Production);
                },
                child: const Text('Production'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Departments.Research);
                },
                child: const Text('Research'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Departments.Purchasing);
                },
                child: const Text('Purchasing'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Departments.Marketing);
                },
                child: const Text('Marketing'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Departments.Accounting);
                },
                child: const Text('Accounting'),
              )
            ],
          );
        });
  }

//======================================================================
// FUNCTION DIALOG - INPUT
//======================================================================
  _asyncInputDialog(BuildContext context) async {
    String teamName = '';
    return showDialog<String>(
      context: context,
      barrierDismissible:
          false, // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter current team'),
          content: new Row(
            children: <Widget>[
              new Expanded(
                  child: new TextField(
                autofocus: true,
                decoration: new InputDecoration(
                    labelText: 'Team Name', hintText: 'eg. Juventus F.C.'),
                onChanged: (value) {
                  teamName = value;
                },
              ))
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop(teamName);
              },
            ),
          ],
        );
      },
    );
  }
}
