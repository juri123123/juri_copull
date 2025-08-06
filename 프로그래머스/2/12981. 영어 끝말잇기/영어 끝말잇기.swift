import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var used: [String] = [words[0]]
    var role = 2
    var count = 1
    var previousWord = words[0]
    
    for i in 1..<words.count {
        var word = words[i]

        if used.contains(word) {
            return [role, count]
        }
        if previousWord.last != word.first {
            return [role, count]
        }
        
        used.append(word)
        previousWord = word
        
        if role == n {
            count += 1
            role = 1
        } else {
            role += 1
        }
        
    }
    
    return [0, 0]
}