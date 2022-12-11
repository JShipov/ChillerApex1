public class CentrifugalBuilder extends ChillerBuilder {
    public override void buildCapacity() {
        chiller.setCoolingCapacity(((12 - 7)*1042 *1000/3600));
    }

    public override void buildCompressorPower() {
        chiller.setCompressorPower(((12 - 7)*1042*1000/3600)*0.92);
    }

    public override void buildEER() {
        chiller.setEER(((12 - 7)*1042*1000/3600)/((12 - 7)*1042*1000/3600)*0.92);
    }

    public override void buildRefrigerationType() {
        chiller.setRefrigerationType(RefrigerationType.R12);
    }
}