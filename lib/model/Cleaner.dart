import 'package:cleaning/model/Address.dart';
import 'package:cleaning/model/LtdLng.dart';
import 'package:cleaning/model/Review.dart';
import 'package:cleaning/model/Service.dart';

class Cleaner {

  String name;
  Address address;
  LtdLng coords;

  String prizeCategory;
  double ranking;
  List<String> _availability;
  List<Review> _reviews;
  List<Service> availableServices;


  Cleaner(this.name, this.address, this.coords, this.prizeCategory,
      this.ranking, this._availability, this._reviews, this.availableServices);

  List<String> get availability => _availability;

  set availability(List<String> value) {
    _availability = value;
  }

  List<Review> get reviews => _reviews;

  set reviews(List<Review> value) {
    _reviews = value;
  }

  int getServiceCount() {
    int i = 0; 
    for ( Service s in availableServices) {
      if (s.state != null)
        if ( s.state == true)
          i++;
    }
    return i;
  }

  List<Service> getAvailableServices() {
    final ret = <Service>[];
    for ( Service s in availableServices) {
      if (s.state != null)
        if ( s.state == true)
          ret.insert(0,new Service(s.name, false));
    }
    return ret;
  }
}
