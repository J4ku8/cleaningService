import 'package:cleaning/model/Cleaner.dart';
import 'package:cleaning/model/User.dart';

class Review{
  String _target;
  User _author;
  String _date;
  double ranking;


  Review(this._target, this._author, this._date, this.ranking);
  String get target => _target;

  set target(String value) {
    _target = value;
  }

  User get author => _author;

  set author(User value) {
    _author = value;
  }

  String get date => _date;

  set date(String value) {
    _date = value;
  }
}
