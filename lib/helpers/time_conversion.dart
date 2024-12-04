import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class TimeConversion {
  static String convertTimeStamp(Timestamp timestamp) {
    DateFormat formatter = DateFormat.yMMMMd();
    var date = formatter.format(timestamp.toDate());
    return date;
  }

  static String extractTimeFromTStamp(Timestamp timestamp) {
    var day = DateTime.now().day;
    var year = DateTime.now().year;
    var month = DateTime.now().month;
    var today = DateTime(year, month, day);

    var nxtQuizDay = timestamp.toDate().day;
    var nxtQuizYear = timestamp.toDate().year;
    var nxtQuizMonth = timestamp.toDate().month;

    var quizDayToday = DateTime(nxtQuizYear, nxtQuizMonth, nxtQuizDay);

    var hour = timestamp.toDate().hour;
    var minute = timestamp.toDate().minute;
    var formattedHr = hour < 10 ? "0$hour" : hour;
    var formattedMin = minute < 10 ? "0$minute" : minute;
    return today == quizDayToday ? " $formattedHr:$formattedMin Today" : " $formattedHr:$formattedMin";
  }

  static String convertDateTime(DateTime dateTime) {
    DateFormat formatter = DateFormat.yMMMMd();
    var date = formatter.format(dateTime);
    return date;
  }

  static DateTime convertStringToDateTime(String stringDate) {
    // DateFormat formatter = DateFormat.yMMMMd();
    var parsedDate = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      DateTime.now().hour,
      int.parse(stringDate),
    );
    // var date = formatter.format(parsedDate);
    return parsedDate;
  }

  static String convertToTimeAgo(Timestamp timestamp) {
    var date = convertToDateTime(timestamp);
    var formattedTime = timeago.format(date);
    return formattedTime;
  }

  static Timestamp convertToTimeStamp(DateTime dateTime) {
    return Timestamp.fromDate(dateTime);
  }

  static DateTime convertToDateTime(Timestamp timestamp) {
    return timestamp.toDate();
  }

  static String convertToToday(Timestamp dateTime) {
    DateTime now = DateTime.now();
    Duration difference = dateTime.toDate().difference(now);

    if (difference.inDays == 0) {
      return 'today';
    } else if (difference.inDays == -1) {
      return 'yesterday';
    } else if (difference.inDays == 1) {
      return 'tomorrow';
    } else {
      String prefix = (difference.inDays > 0) ? 'in ' : '';
      return '$prefix${difference.abs().inDays} days ${difference.inDays > 0 ? '' : 'ago'}';
    }
  }
}
