import Foundation

func solution(_ dirs:String) -> Int {
    var visited = Set<String>()
    var current = [0,0]
    
    for d in dirs {
        var next = current
        
        switch d {
            case "U":
                next[1] += 1
            case "D":
                next[1] -= 1
            case "R":
                next[0] += 1
            case "L":
                next[0] -= 1
            default:
                continue
        }

        if next[0] > 5 || next[0] < -5 || next[1] > 5 || next[1] < -5 {
            continue
        }
        
        let path1 = "\(current[0]), \(current[1]) -> \(next[0]), \(next[1])"
        let path2 = "\(next[0]), \(next[1]) -> \(current[0]), \(current[1])"
        
        visited.insert(path1)
        visited.insert(path2)
        
        current = next
    }
    
    return visited.count / 2
}