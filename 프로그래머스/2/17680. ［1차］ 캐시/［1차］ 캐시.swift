func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var queue: [String] = []
    var result: Int = 0
    
    if cacheSize == 0 {
        return 5 * cities.count
    }
    
    for city in cities {
        var city = city.lowercased()
        
        if queue.contains(city) {
            result += 1
            let idx = queue.firstIndex(of: city)!
            
            queue.remove(at: idx)
            queue.append(city)
            
            continue
        }
        
        if queue.count >= cacheSize {
            queue.remove(at: 0)
        }
        
        result += 5
        queue.append(city)
    }
    
    return result
}