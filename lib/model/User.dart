import 'package:cleaning/model/Address.dart';
import 'package:cleaning/model/LtdLng.dart';

class User {

  int _uniqId;

  LtdLng coords;

  Address _address;
  String _password;


  String _name;
  String _surname;
  String _email;
  String _telephone;


  User(this._uniqId, this.coords, this._address, this._password, this._name,
      this._surname, [this._email = "", this._telephone = ""]);

  int get uniqId => _uniqId;

  set uniqId(int value) {
    _uniqId = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  Address get address => _address;

  set address(Address value) {
    _address = value;
  }

  String get name => _name;
  set name(String value) {
    _name = value;
  }

  String get surname => _surname;
  set surname(String value) {
    _surname = value;
  }

  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String get telephone => _telephone;
  set telephone(String value) {
    _telephone = value;
  }
}
