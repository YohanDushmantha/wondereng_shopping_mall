import 'package:intl/intl.dart';

enum DateTimeFormatterType {
  DEFAULT_APP_SHORT_DATE_FORMAT,
  DEFAULT_DESCRIPTIVE_DATE_FORMAT,
  DEFAULT_APP_TRANSACTION_DATE_FORMAT,
  DEFUALT_APP_ISO_DATE_FORMAT
}

extension DateTimeFormatterTypeExtension on DateTimeFormatterType {
  String get format {
    switch (this) {
      case DateTimeFormatterType.DEFAULT_APP_SHORT_DATE_FORMAT:
        return 'dd-MM-yyyy';
      case DateTimeFormatterType.DEFAULT_DESCRIPTIVE_DATE_FORMAT:
        return 'dd MMMM yyyy';
      case DateTimeFormatterType.DEFAULT_APP_TRANSACTION_DATE_FORMAT:
        return 'dd-MMM-yyyy hh:mm a';
      case DateTimeFormatterType.DEFUALT_APP_ISO_DATE_FORMAT:
        return 'yyyy-MM-ddTHH:mm:ss';
    }
  }
}

class DateTimeHelper {
  String? format(
      {DateTime? date,
      DateTimeFormatterType formatterType =
          DateTimeFormatterType.DEFAULT_APP_TRANSACTION_DATE_FORMAT,
      bool withTime = false}) {
    if (date == null) {
      return null;
    }
    if (withTime) {
      return DateFormat(formatterType.format).add_jm().format(date);
    } else {
      return DateFormat(formatterType.format).format(date);
    }
  }

  String? formatWithStringFormatter(
      {DateTime? date, String? formatter, bool withTime = false}) {
    if (date == null || formatter == null || formatter == '') {
      return null;
    }
    if (withTime) {
      return DateFormat(formatter).add_jm().format(date);
    } else {
      return DateFormat(formatter).format(date);
    }
  }

  String? formatStringDate(
      {String? date,
      DateTimeFormatterType formatterType =
          DateTimeFormatterType.DEFAULT_APP_TRANSACTION_DATE_FORMAT,
      bool withTime = false}) {
    if (date == null || date == '') {
      return null;
    }
    var createdDate = DateTime.parse(date);
    if (withTime) {
      return DateFormat(formatterType.format).add_jm().format(createdDate);
    } else {
      return DateFormat(formatterType.format).format(createdDate);
    }
  }
}
