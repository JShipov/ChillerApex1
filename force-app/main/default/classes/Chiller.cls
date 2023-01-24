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
        this.EER = EER.setScale(2, RoundingMode.HALF_UP);
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
   
}
