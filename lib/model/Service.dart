
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
        Service("Light Fixtures", "Dust cleaning on hight light fixtures", false),
        Service("Furniture", "Dust cleaning on furniture", false),
        Service("Deep Cleaning", "Deep cleaning of all upholstery", false),
        Service("Window Cleaning", "Cleaning of all windows", false),
        Service("Pet Cleaning", "Special cleaning of pets", false),

    }
}
