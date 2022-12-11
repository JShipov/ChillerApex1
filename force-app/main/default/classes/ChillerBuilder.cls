public abstract class ChillerBuilder {
    protected Chiller chiller;
    public void createChiller() {
        chiller = new Chiller();
    }
    
    public abstract void buildCapacity();
    public abstract void buildCompressorPower();
    public abstract void buildEER();
    public abstract void buildRefrigerationType();
    
    public Chiller getChiller() {
        return chiller;
    }
}