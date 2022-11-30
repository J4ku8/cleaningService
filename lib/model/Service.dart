
class Service {

    String name;
    bool? state;

    Service(this.name, this.state, this.price);

  int price;
}

class ServiceList {
    List<Service> services;

    ServiceList(this.services);
}

