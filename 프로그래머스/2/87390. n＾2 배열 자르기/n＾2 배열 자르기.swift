import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var result: [Int] = []
    
    for i in Int(left)..<Int(right)+1 {
        let num = (i / n) > (i % n) ? (i / n + 1) : (i % n + 1)
        result.append(num)
    }
    
    return result
}