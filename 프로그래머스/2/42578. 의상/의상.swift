import Foundation

func solution(_ clothes:[[String]]) -> Int {
    
    var dict: [String: [String]] = [:]
    
    for fair in clothes {
        let key = fair[1]
        let value = fair[0]
        
        if var kinds = dict[key] {
            kinds.append(value)
            dict[key] = kinds
        } else {
            dict[key] = [value]
        }
    }
    
    var result: Int = 1
    
    for (key, value) in dict {
        result *= (value.count+1)
    }
    
    return result - 1
}