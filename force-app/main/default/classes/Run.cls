public class Run {
    public Decimal getCoolingCapacity() {
        Director director = new Director();
        director.setBuilder(new ScrewBuilder());
        Chiller chiller1 = director.BuildChiller();
        chiller1.toString();
        return chiller1.getCoolingCapacity();   
    }
    
    
    public Decimal getCompressorPower() {
        Director director = new Director();
        director.setBuilder(new ScrewBuilder());
        Chiller chiller1 = director.BuildChiller();
        chiller1.toString();
        return chiller1.getCompressorPower();  
    }
    
    public Decimal getEER() {
        Director director = new Director();
        director.setBuilder(new ScrewBuilder());
        Chiller chiller1 = director.BuildChiller();
        chiller1.toString();
        return chiller1.getEER();  
    }
    
    public RefrigerationType getRefrigerationType() {
        Director director = new Director();
        director.setBuilder(new ScrewBuilder());
        Chiller chiller1 = director.BuildChiller();
        chiller1.toString();
        return chiller1.refrigerationType();  
    }
    
}