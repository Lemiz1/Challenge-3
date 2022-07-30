
    import HashMap "mo:base/HashMap";
    import Principal "mo:base/Principal";
    import Cycles "mo:base/ExperimentalCycles";
    actor{
        
        
        // Challenge 1
        public shared(msg) func is_anonymous() : async Bool{
            let anonymous = "2vxsx-fae";
            return(msg.caller == anonymous);
        };

        // Challenge 2
        var favoriteNumber = HashMap.HashMap<Principal, Nat>(0, Principal.equal, Principal.hash);

        
        //Challenge 3 + 4
        public shared(msg) func add_favorite_number(n : Nat) : async Text {
        
        if (favoriteNumber.size() > 0) {
            return ("you've already registered your number");
        }
        else{
            favoriteNumber.put(msg.caller, n);
            return "You've sucessfully registered your number";
        };
        };

        public shared (msg) func sow_favorite_number() : async ?Nat{
        return(favoriteNumber.get(msg.caller));
        };


        // Challenge 5
        public shared (msg) func update_favorite_number(upNumber : Nat) : async ?Nat{
        return(favoriteNumber.replace(msg.caller, upNumber));
        };

        public shared (msg) func delete_favorite_number(){
        favoriteNumber.delete(msg.caller);
        };


        public func balance() : async Nat {
            return(Cycles.balance())
        };
        public func message_available() : async Nat {
            return(Cycles.available())
        };
        
        // Challenge 6 - In progress
        public func transfer(amount : Nat) : async Nat{
        Cycles.accept(amount);
        };

        public func add(amount : Nat) : async Nat{
        Cycles.add(amount);
        return(amount);
        };

        

        // Challenge 6-7 in the another file
        
        // Challenge 8
        var my_name : Text = "";
        stable var counter : Nat = 0;
        public func increaseCounter(number : Nat) :async Nat{
        counter += number;
        return(counter);
        };

        public func clearCounter() : async Nat{
        counter := 0;
        return(counter);
        };

    







        


























    }   