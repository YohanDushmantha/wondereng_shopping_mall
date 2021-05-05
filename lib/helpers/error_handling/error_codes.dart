enum ErrorCode { se001,se002, se003, dbe001, dbe002}

extension ErrorCodeExtension on ErrorCode {
  String get message {
    switch (this) {
      case ErrorCode.se001:
        return 'Server Error 001';
      case ErrorCode.se002:
        return 'Server Error 002';
      case ErrorCode.se003:
        return 'Shopping Mall Fetching Server Error';
      case ErrorCode.dbe001:
        return 'Database Error 001';
      case ErrorCode.dbe002:
        return 'Database Error 002';
    }
  }
}
