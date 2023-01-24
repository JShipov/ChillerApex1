public class Run {
    public List<Chiller> chillers {get; set;}
    public ChillerController() {
        Director director = new Director();
        ChillerBuilder screwBuilder = new ScrewBuilder();
        ChillerBuilder centrifugalBuilder = new CentrifugalBuilder();
        director.setBuilder(screwBuilder);
        Chiller screwChiller = director.BuildChiller();
        director.setBuilder(centrifugalBuilder);
        Chiller centrifugalChiller = director.BuildChiller();
        chillers = new List<Chiller>();
        chillers.add(screwChiller);
        chillers.add(centrifugalChiller);
        chillers.add(screwChiller);
        chillers.add(centrifugalChiller);
    }
    
}
