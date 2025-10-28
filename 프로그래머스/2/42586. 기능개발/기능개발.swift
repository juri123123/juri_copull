import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var days: [Int] = []
    var result: [Int] = []

    for i in 0..<progresses.count {
        let remain = 100 - progresses[i]
        
        var day = remain / speeds[i]
        if remain % speeds[i] != 0 {
            day += 1
        }
        
        days.append(day)
    }

    var dayStack: [Int] = []
    
    for day in days {
        if dayStack.isEmpty {
            dayStack.append(day)
        } else {
            if dayStack[0] < day {
                result.append(dayStack.count)
                dayStack = []
            }   
            dayStack.append(day)
        }
    }
    
    if !dayStack.isEmpty {
        result.append(dayStack.count)
    }
    
    return result
}