import 'package:intl/intl.dart';

class DateFormateUtils {
  DateFormateUtils._();

  static String converterDateWithHours(String date) {
    var now = new DateTime.now();

    var strToDateTime = DateTime.parse(date);
    final convertLocal = strToDateTime.toLocal();
    if (convertLocal.day == now.day &&
        convertLocal.month == now.month &&
        convertLocal.year == now.year) {
      var newFormat = DateFormat().add_Hm();
      String updatedDt = newFormat.format(convertLocal);
      return 'Hoje $updatedDt';
    }
    DateTime yesterday = now.subtract(Duration(days: 1));
    if (convertLocal.day == yesterday.day &&
        convertLocal.month == yesterday.month &&
        convertLocal.year == yesterday.year) {
      var newFormat = DateFormat().add_Hm();
      String updatedDt = newFormat.format(convertLocal);
      return 'Ontem $updatedDt';
    }
    if (now.difference(convertLocal).inDays < 6) {
      String weekday = DateFormat('EEEE', 'pt_Br').format(convertLocal);
      return '$weekday';
    }
    return DateFormat('dd/MM/yyyy HH:mm', 'pt_Br').format(convertLocal);
  }
}
