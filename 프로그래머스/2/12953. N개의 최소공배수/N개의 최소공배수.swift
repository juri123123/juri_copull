func solution(_ arr:[Int]) -> Int {
    
    var array = arr
    array.sort { $0 > $1 }
    
    var number = array[0]
    var mul = 1

    while true {
        var count = 0
        for i in arr {
            if number * mul % i != 0 {
                mul += 1
                break
            }
            
            if count == arr.count - 1 {
                return number * mul
            }
            count += 1
        }
    }
}