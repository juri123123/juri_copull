import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var count = 0
    
    var wantDiscount = discount[0..<10]
    
    var wantList: [String] = []
    
    for i in 0..<number.count {
        for j in 0..<number[i] {
            wantList.append(want[i])
        } 
    }
    
    for i in 0..<discount.count-9 {
        var list = wantList
        wantDiscount = discount[i..<i+10]
        
        for product in wantList {
            if wantDiscount.contains(product) {
                let index = list.firstIndex(of: product)!
                let discountIndex = wantDiscount.firstIndex(of: product)!
                list.remove(at: index)
                wantDiscount.remove(at: discountIndex)
            } else {
                break
            }
        }
        
        if list.isEmpty { count += 1 }
    }
    
    return count
}