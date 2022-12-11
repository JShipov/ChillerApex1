public class Director {
    public ChillerBuilder builder;
    public void setBuilder(ChillerBuilder b) {
        builder = b;
    }

    public Chiller BuildChiller() {
        builder.createChiller();
        builder.buildCapacity();
        builder.buildCompressorPower();
        builder.buildEER();
        builder.buildRefrigerationType();
        Chiller chiller = builder.getChiller();
        return chiller;
    }
}