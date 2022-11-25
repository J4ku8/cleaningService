import 'package:cleaning/model/Cleaner.dart';
import 'package:cleaning/model/User.dart';

class Review{
  Cleaner _target;
  User _author;
  DateTime _date;
  double ranking;

  Review(this._target, this._author, this._date, this.ranking);

  Cleaner get target => _target;

  set target(Cleaner value) {
    _target = value;
  }

  User get author => _author;

  set author(User value) {
    _author = value;
  }

  DateTime get date => _date;

  set date(DateTime value) {
    _date = value;
  }
}
