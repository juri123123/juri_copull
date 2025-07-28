import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var dict: [Int: Int] = [:]
    var sum = 0
    var count = 0
    
    for i in tangerine {
        if let count = dict[i] {
            dict[i] = count + 1
        } else {
            dict[i] = 1
        }
    }
    
    let val = dict.values.sorted{ $1 < $0 }
    for i in val {
        sum += i
        if sum > k {
            sum -= i
            break
        }
    
        count += 1
        
        if sum == k {
            return count
        }
    }

    return count + 1
}

// 2번째 시도 : 스택으로 조합 구현 
// func combiStack(_ array: [Int], _ n: Int) -> Int {
//     if array.count < n {
//         return 0
//     }
    
//     var stack = array.enumerated().map { ([$0.element], $0.offset) }
//     var result: Set<Int> = []
//     var min: Int = array.count
//     while stack.count > 0 {
//         let now = stack.removeLast()
        
//         let elements = now.0
//         let index = now.1
        
//         if elements.count == n {
//             let count = Set(elements).count
//             if min > count {
//                 min = count
//             }
//             continue
//         }
        
//         guard index < array.count - 1 else { continue }
        
//         for i in index + 1...array.count - 1 {
//             stack.append((elements + [array[i]], i))
//         }
//     }
//     return min
// }

// 1번째 시도 : 재귀로 조합 구현
// func combi(_ originArr: [Int], _ count: Int, _ index: Int, _ arr: [Int]) {
    
//     if arr.count == count {
//         var set: Set<Int> = []
        
//         for i in arr {
//             set.insert(i)
//         }

//         if min > set.count {
//             min = set.count
//         }
        
//         return
//     }
        
//     for i in index..<originArr.count {
//         combi(originArr, count, i + 1, arr + [originArr[i]])
//     } 
// }