import UIKit

typealias Operation = (Double, Double) -> (Double)

struct MathOperation {
    var units:String
    var operation:Operation
    
    init?(units:String, operation:@escaping Operation) {
        if(units.isEmpty){
            return nil;
        }
        
        self.units = units
        self.operation = operation
    }
}


var add = MathOperation(units: "in", operation: {(item1:Double, item2:Double) -> Double in return item1 + item2})
var wrong = MathOperation(units: "", operation: {(item1:Double, item2:Double) -> Double in return item1 + item2})
