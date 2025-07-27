import Foundation

func solution(_ s:String) -> Int{
    var str = Array(s)
    var prev = str[str.startIndex]
    var stack: [Character] = []
    
    for i in str {
        //print(stack)
        if let last = stack.last {
           // print(last, i)
            if last == i {
                stack.removeLast()
                continue
            }
        }
        
        stack.append(i)
    }
    
    if stack.count == 0{
        return 1
    } else {
        return 0
    }
    
//     while true {
//         var flag = false
//         prev = str[0]
//         for idx in str.indices {
//             if idx == 0 { continue }
//            // print(prev, str[idx])
//             if prev == str[idx] {
//                 str.remove(at: idx - 1)
//                 str.remove(at: idx - 1)
//                // print(str)
//                 flag = true
//                 break
//             } else {
//                 prev = str[idx]
//             }
//         }
        
//         if !flag { return 0 }
        
//         if str.count == 0 { return 1 }
//     }
}