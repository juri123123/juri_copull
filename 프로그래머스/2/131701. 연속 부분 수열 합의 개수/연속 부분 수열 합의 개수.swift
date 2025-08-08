import Foundation

func solution(_ elements:[Int]) -> Int {
    var set: Set<Int> = []
    
    for i in 1..<elements.count+1 {
         var startIndex = 0
        for j in 1..<elements.count+1 {
            var sum = 0
            for index in 0..<i {
                var finalIndex = startIndex + index
                if finalIndex >= elements.count {
                    finalIndex -= elements.count
                }
                sum += elements[finalIndex]
            }
            startIndex += 1
            // print(sum)
            set.insert(sum)
        }
    }
    
    return set.count
}