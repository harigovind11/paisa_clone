import 'package:intl/intl.dart';

String parseTime(DateTime time) {
  final _time = DateFormat.Hm().format(time);

  return _time;
}

String parseDate(DateTime date) {
  final _date = DateFormat.yMMMd().format(date);
  final _splitedDate = _date.split(' ');
  return '${_date}';
}
