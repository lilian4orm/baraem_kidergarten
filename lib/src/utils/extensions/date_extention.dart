import 'package:intl/intl.dart';

extension KQDatime on DateTime {
  String toDayName(local) {
    try {
      final format2 = DateFormat('E', local);
      final d = this;
      final date = format2.format(d);
      return date;
    } catch (e) {
      return "N";
    }
  }

  String toHourName(local) {
    try {
      final format2 = DateFormat('hh:mma', local);
      final d = this;
      final date = format2.format(d);
      return date;
    } catch (e) {
      return "N";
    }
  }

  String toDate() {
    try {
      return DateFormat('yyyy-MM-dd').format(this);
    } catch (e) {
      return "N";
    }
  }
}
