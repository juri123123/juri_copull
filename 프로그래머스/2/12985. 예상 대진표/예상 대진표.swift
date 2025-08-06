import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 1
    var big = max(a, b)
    var small = min(a, b)

    while true {
        if (small + 1 == big) && (small % 2 == 1) {
            return answer
        }
        
        if big % 2 == 1 {
            big += 1
        }
        big /= 2
        
        if small % 2 == 1 {
            small += 1
        }
        small /= 2
        
        answer += 1
    }

    return answer
}