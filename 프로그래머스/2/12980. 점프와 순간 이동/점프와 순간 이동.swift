import Foundation

func solution(_ n:Int) -> Int 
{
    var ans: Int = 0
    var num = n
    
    while num >= 1 {
        if num % 2 != 0 {
            ans += 1
        }
        num /= 2
    }

    return ans
}