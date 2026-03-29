import Foundation

func solution(_ topping:[Int]) -> Int {
    var result = 0
    var firstDict: [Int: Int] = [:]
    var secondDict: [Int: Int] = [:]
    
    for t in topping {
        firstDict[t, default: 0] += 1
    }

    for t in topping {
        if let num = firstDict[t] {
            if num - 1 > 0 {
                firstDict[t]! -= 1
            } else {
                firstDict[t] = nil
            }
        }
        
        secondDict[t, default: 0] += 1
        
        if firstDict.count == secondDict.count {
            result += 1
        }
    }

    return result
}