import Foundation

func solution(_ s:String) -> Int {
    var result = 0
    var stack: [Character] = []
    
    var array = Array(s)
    for i in 0..<s.count {
        stack = []
        for i in array {
            if (i == "]" && stack.last == "[") ||
            (i == ")" && stack.last == "(") ||
            (i == "}" && stack.last == "{") {
                stack.removeLast()
            } else {
                stack.append(i)
            }
        }
        
        if stack.count == 0 {
            result += 1
        }
        
        let first = array.removeFirst()
        array.append(first)
    }

    return result
}