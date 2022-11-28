
class Service {
    
    String name;
    bool state;

    Service(this.name, this.state);
}

class ServiceList {
    List<Service> services = [
        Service("Sweeping", false),
        Service("Mopping", false),
        Service("Vacuuming", false),
        Service("Polishing", false),
        Service("Scrubbing", false),
        Service("Vent cleaning", false),
        Service("Gardening", false),
        Service("Light Fixtures", false),
        Service("Furniture", false),
        Service("Deep Cleaning", false),
        Service("Window Cleaning", false),
        Service("Pet Cleaning", false),
    ];
}

// new Service("Sweeping", true), new Service("Mopping", true), new Service("Vacuuming", true), new Service("Polishing", false), new Service("Scrubbing", false), new Service("Vent cleaning", false), new Service("Gardening", false), new Service("Light Fixtures", true), new Service("Furniture", true), new Service("Deep Cleaning", false), new Service("Window Cleaning", true), new Service("Pet Cleaning", false)