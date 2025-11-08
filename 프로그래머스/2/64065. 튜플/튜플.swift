import Foundation

func solution(_ s:String) -> [Int] {
    var array = s.split(separator: "{")
    var tuples: [String] = array.map {
        let endIdx = $0.index($0.startIndex, offsetBy: $0.count-3)
        return String($0[...endIdx])
    }

    tuples.sort{ $0.count < $1.count }
    
    var result: [String] = []
    for tuple in tuples {
        result.append(tuple) 
        let tupleArray = tuple.split(separator: ",").map{ String($0) }
        
        for t in tupleArray {
            if !result.contains(t) {
                result.append(t)
            }
        }
    }
    
    return result.compactMap { Int($0) }
}