import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    var temp = 0
  
    for index in 0..<arr1.count {
      result.append([])
      for i in 0..<arr2[0].count {
        temp = 0
        for j in 0..<arr2.count {
          temp += arr1[index][j] * arr2[j][i]
        }
        result[index].append(temp)
      }
    }
  
    return result
}