import 'package:intl/intl.dart';

class AppHelpers {
  AppHelpers._();

  static double deviceHeight = 0.0;
  static double deviceWidth = 0.0;

  /// Add GTM
  // DateTime dt = DateTime.parse(newStr).add(Duration(hours: 5, minutes: 30));
  ///

  static String convertDateInDDMMYYYY(DateTime date) {
    final DateTime now = date;
    var formatter = DateFormat('dd MMM, yyyy');
    final String outputDate = formatter.format(now);
    return outputDate;
  }

  static String getDDMMMYYYY(String inputDate) {
    var inputFormat = DateFormat("yyyy-MM-dd");
    var outputFormat = DateFormat('dd MMM, yyyy');
    var outputDate = outputFormat.format(inputFormat.parse(inputDate));
    return outputDate;
  }

  static String getDDMMMYYYYHms(String inputDate) {
    var inputFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss");
    var outputFormat = DateFormat('dd MMM, yyyy HH:mm:ss');
    var outputDate = outputFormat.format(inputFormat.parse(inputDate));
    return outputDate;
  }
}
