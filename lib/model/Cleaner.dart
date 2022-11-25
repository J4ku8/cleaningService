import 'package:cleaning/model/Address.dart';
import 'package:cleaning/model/Coords.dart';
import 'package:cleaning/model/Review.dart';

class Cleaner {

  String name;
  Address address;
  Coords coords;

  String prizeCategory;
  double ranking;
  List<DateTime> _availability;
  List<Review> _reviews;


  Cleaner(this.name, this.address, this.coords, this.prizeCategory,
      this.ranking, this._availability, this._reviews);

  List<DateTime> get availability => _availability;

  set availability(List<DateTime> value) {
    _availability = value;
  }

  List<Review> get reviews => _reviews;

  set reviews(List<Review> value) {
    _reviews = value;
  }
}
