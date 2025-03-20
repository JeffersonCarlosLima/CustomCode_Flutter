// This file contains the code to check the internet connection using the internet_connection_checker_plus package.
import 'package:http/http.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

Future checkInternet() async {
  bool result = await InternetConnectionCheckerPlus().hasConnection;
  return result;
}
