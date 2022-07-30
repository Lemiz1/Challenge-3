import per_types "custom";
import animal "animal";
import List "mo:base/List";
import isNull<T> "list";
actor{
  // Challenge 1
  public type personalities = per_types.per_types;
  let matthew : personalities = {
    _type = "ENFP";
    ideal = true;
    attractive = "maybe";
  };

  public func fun() : async per_types.per_types{
    return(matthew);
  };
  
  //Challenge 2-3 in File animal.mo
  public type animal = animal.animal;
  
  //Challenge 4
  public func create_animal_then_takes_a_break(specie : Text, number_energy : Nat) : async animal{
    var newAnimal : animal = {
      specie = specie;
      energy = number_energy;
    };

    newAnimal := animal.animal_sleep(newAnimal);
    return(newAnimal);
  };

  //Challenge 5



  type List<T> = ?(T, List<T>);
  var animalList : List<animal> = List.nil<animal>();

  //Challenge 6
  public func push_animal(sample_animal : animal) {
    animalList := List.push<animal> (sample_animal, animalList);
  };

  public func get_animals() : async List<animal> {
    return(animalList);
  };








}