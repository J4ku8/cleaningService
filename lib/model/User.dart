import 'package:cleaning/model/Address.dart';
import 'package:cleaning/model/LtdLng.dart';

class User {

  int _uniqId;

  LtdLng coords;

  Address _address;
  String _password;


  String name;
  String surname;


  User(this._uniqId, this.coords, this._address, this._password, this.name,
      this.surname);

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
}
