module{
    

    type List<T> = ?(T, List<T>);
    
    // Challenge 7
    public func is_null<T>(l : List<T>) : Bool {
        switch(l){
            case(null) return true;
            case(_) return false;
        };
    };

    
    // Challenge 8
    public func last<T>(l : List<T>) : ?T {
        switch(l){
            case (null) return null;
            case(?(element, null)) return ?element;
            case(?(element, nextList)) return last<element>(nextList);
        }
    }


    // Challenge 9 
    public func size<T>(l : List<T>) : Nat{
        var storeSize : Nat = 0;
        switch(l) {
            
            
            case (null) return 0;
            case(?(element, null)) {
                storeSize += 1;
                return(storeSize);
            };
            case(?(element, nextList)) return size<T>(nextList);
        };
    }

    // Challenge 10
    
    public func get<T>(l : List<T>, n : Nat) : Nat{
        switch(l) {
            case (null) return 0;
            case(?(element, null), 0) {
                return(element);
            };
            case(?(element, nextList), n) return size<T>(nextList, n);
        };
    }

}