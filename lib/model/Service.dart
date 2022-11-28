
class Service {
    
    String name;
    String description;
    bool state;

    Service(this.name,this.description,this.state);
}

class ServiceList {
    List<Service> services = {
        Service("Sweeping", "", false),
        Service("Mopping", "", false),
        Service("Vacuuming", "", false),
        Service("Polishing", "", false),
        Service("Scrubbing", "", false),
        Service("Vent cleaning", "", false),
        Service("Gardening", "", false),
        Service("Light Fixtures", "Dust cleaning on hight light fixtures", false),
        Service("Furniture", "Dust cleaning on furniture", false),
        Service("Deep Cleaning", "Deep cleaning of all upholstery", false),
        Service("Window Cleaning", "Cleaning of all windows", false),
        Service("Pet Cleaning", "Special cleaning of pets", false),

    }
}

// new Service("Sweeping", "", true), new Service("Mopping", "", true), new Service("Vacuuming", "", true), new Service("Polishing", "", false), new Service("Scrubbing", "", false), new Service("Vent cleaning", "", false), new Service("Gardening", "", false), new Service("Light Fixtures", "Dust cleaning on hight light fixtures", true), new Service("Furniture", "Dust cleaning on furniture", true), new Service("Deep Cleaning", "Deep cleaning of all upholstery", false), new Service("Window Cleaning", "Cleaning of all windows", true), new Service("Pet Cleaning", "Special cleaning of pets", false)