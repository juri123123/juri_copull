import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    var queue: [(Int, Int)] = []
    var result: Int = 0

    for i in 0..<priorities.count {
        queue.append((i, priorities[i]))
    }
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        
        if queue.contains(where: {$0.1 > current.1}) {
            queue.append(current)
        } else {
            result += 1
            
            if current.0 == location {
                return result
            }
        }
    }
    
    return 0
}