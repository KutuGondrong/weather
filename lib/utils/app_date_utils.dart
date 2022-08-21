import 'package:intl/intl.dart';

class AppDateUtils {
  static String toyMMMEdJ(String? date) {
    try {
      DateTime parseDate = DateFormat('yyyy-MM-dd HH:mm:ss').parse(date ?? '');
      var inputDate = DateTime.parse(parseDate.toString());
      return DateFormat.yMMMEd().add_jm().format(inputDate);
    } catch (e) {
      return date ?? '';
    }
  }
}
