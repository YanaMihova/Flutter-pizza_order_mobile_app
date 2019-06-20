import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class Scan extends StatefulWidget {

  @override
  ScanState createState() {
    return new ScanState();
  }
}
class ScanState extends State<Scan>{
  String result = "OPA";

  Future _scanQR() async{
    try {
      String qrResult = await BarcodeScanner.scan();
      setState(() {
        result = qrResult;
      });
    }on PlatformException catch(ex){
      if(ex.code == BarcodeScanner.CameraAccessDenied){
        result = 'Camera denied';
      }else{
        setState(() {
          result = 'Error $ex';
        });
      }
    }on FormatException {
      setState(() {
        result = 'Presses back button';
      });
    }catch(ex){
      setState(() {
        result = 'Error $ex';
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan"),
      ),
      body: Center(
        child: Text (result),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon (Icons.scanner,),
        label: Text ('scan'),
        onPressed: _scanQR,
      ),
    );
  }
}