import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    // 26, 10 -> 
    let sum = brown + yellow
    var count = 1
    var yellowLong = yellow
    var yellowLang = 1
    var long = sum
    var lang = 1
    
    while count <= Int(sqrt(Double(yellow))) {
        if yellow % count == 0 {
            yellowLong = yellow / count
            yellowLang = count
            
            if (yellowLong + yellowLang) * 2 + 4 == brown {
                long = yellowLong + 2
                lang = yellowLang + 2
            }
        }
        count += 1
    }

    return [long, lang]
}