func solution(_ n:Int) -> Int {
    var array = Array(repeating: 0, count: n+2)
    
    if n == 1 {
        return 1
    }
    
    array[1] = 1
    array[2] = 2
    
    if n > 2 {
        for i in 3..<n+1 {
           array[i] = (array[i-1] + array[i-2]) % 1234567
        }
    }
    
    return array[n]
}