// Challenge 9
import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";

shared(msg) actor class Counter(){
    var nice : Nat = 0;
    let owner = msg.caller;
    stable var number : Nat = 0;
    // Challenge 2
    var favoriteNumber = HashMap.HashMap<Principal, Nat>(0, Principal.equal, Principal.hash);
    
    // Challenge 5
    public func update_favorite_number(upNumber : Nat) : async ?Nat{
      number := upNumber;
      return(favoriteNumber.replace(owner, upNumber));
    };

    
    public func delete_favorite_number(){
      favoriteNumber.delete(owner);
    };


    system func preupgrade() {
      favoriteNumber := favoriteNumber;
    };

    system func postupgrade() {
      favoriteNumber.put(owner, number);
    }







    
}

