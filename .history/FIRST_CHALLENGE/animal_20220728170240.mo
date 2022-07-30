module {
    public type animal = {
        specie : Text;
        energy : Nat;
    };

    public func animal_sleep(Animal : animal) : animal{
      return({specie = Animal.specie;
             energy = Animal.energy + 10});
    }
}