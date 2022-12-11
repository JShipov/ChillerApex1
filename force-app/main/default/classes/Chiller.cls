public class Chiller {
    private Decimal coolingCapacity;
    private Decimal compressorPower;
    private Decimal EER;
    RefrigerationType refrigerationType;

    public void setCoolingCapacity(Decimal coolingCapacity) {
        this.coolingCapacity = coolingCapacity;
    }

    public void setCompressorPower(Decimal compressorPower) {
        this.compressorPower = compressorPower;
    }

    public void setEER(Decimal EER) {
        this.EER = EER;
    }

    public void setRefrigerationType(RefrigerationType refrigerationType) {
        this.refrigerationType = refrigerationType;
    }
    
    public Decimal getCoolingCapacity() {
        return coolingCapacity;
    }
    
    public Decimal getCompressorPower() {
        return compressorPower;
    }
    
    public Decimal getEER() {
        return EER;
    }
    
    public RefrigerationType refrigerationType() {
        return refrigerationType;
    }
    
    public List<String> write() {
        List<String> values = new List<String>();
        values.add(0, '' + this.coolingCapacity);
        values.add(1, '' + this.compressorPower);
        values.add(2, '' + this.EER);
        values.add(3, '' + this.refrigerationType);
        return values;
    }
   
}