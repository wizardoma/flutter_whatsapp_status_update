import 'package:flutter_status_update/domain/status/status_type.dart';
import 'package:flutter_status_update/domain/status/view.dart';
import 'package:flutter_status_update/domain/user/user.dart';

class Status {
  final dynamic data;
  final DateTime date;
  final User user;
  final StatusType type;
  List<View> viewers;

  Status(this.data, this.date, this.user, this.type);
}
