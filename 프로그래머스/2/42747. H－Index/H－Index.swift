import Foundation

func solution(_ citations:[Int]) -> Int {
    let sortedCitations = citations.sorted { $0 > $1 }
    var i = sortedCitations[0]

    while true {
        var highCount = 0
        for j in sortedCitations {
            if i <= j {
                highCount += 1
            } else {
                continue
            }
        }
        
        if highCount >= i {
            return i
        }
        
        i -= 1
    }
    
    return 0
}

