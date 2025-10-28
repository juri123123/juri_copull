import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {

    var visited: [Bool] = Array(repeating: false, count: dungeons.count)
    var answer = 0
    
    func dfs(_ current: Int, _ count: Int) {
        answer = max(answer, count)

        for i in 0..<dungeons.count {
            let (need, use) = (dungeons[i][0], dungeons[i][1])
            
            if !visited[i], current >= need {
                visited[i] = true
                dfs(current - use, count + 1)
                visited[i] = false
            }
        }
    }
    
    dfs(k, 0)
    
    return answer
}