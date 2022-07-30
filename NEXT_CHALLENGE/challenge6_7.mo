// deposit meaning add back to balance 
// Challenge 6-7


import Cycles "mo:base/ExperimentalCycles";
import Principal "mo:base/Principal";

shared({caller}) actor class testTing() = {
    public func deposit() : async Nat{
        // Check cycles
        var wanted = Cycles.available();
        // Cycles to balance
        var transfered = Cycles.accept(wanted);
        // Confirm sufficient
        assert wanted == transfered;
        // Return as wishes
        return(wanted);
    };




    type _deposit = actor{deposit() async -> (Nat)};
    public func withdraw(amount : Nat) : async Nat{
        
        let _actor : _deposit = actor(Principal.toText(caller));
        // We transfer back to balance through cycles so first, let add them 
        Cycles.add(amount);

        // Here we'll do the main thing to confirm the cycles to your balance 
        let n = await _actor;

        // Wohoo your money is back
        return(n);
    }
}