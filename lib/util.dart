
import 'package:intl/intl.dart';
var mFormat = NumberFormat('###,###,###,###');

void showToast(String msg){
  Fluttertoast.cancel();
  Fluttertoast.showToast(msg:msg,toastLength: Toast.LENGTH_SHORT);
};