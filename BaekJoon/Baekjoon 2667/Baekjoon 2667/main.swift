//
//  main.swift
//  Baekjoon 2667
//
//  Created by 윤소희 on 2023/01/12.
//

import Foundation

var n = Int(readLine()!)!
var map = Array(repeating: Array(repeating: 0, count: n), count: n)
var cntList = [Int]()
var cnt = 0

let dx = [0, 1, 0, -1]
let dy = [1, 0, -1, 0]


for i in 0..<n {
    var temp: [Int]
    temp = readLine()!.map{Int(String($0))!}
    map[i] = temp
}

func bfs(_ i:Int, _ j: Int) -> Int {
    var queue = Array<(Int,Int)>()
    queue.append((i,j))
    map[i][j] = 0
    cnt = 1
    
    while !queue.isEmpty {
        let poped = queue.removeFirst()
        let y = poped.0
        let x = poped.1
        
        for k in 0..<4 {
            let ny = y + dy[k]
            let nx = x + dx[k]
            
            if nx < 0 || nx >= n || ny < 0 || ny >= n {
                continue
            }
            
            if map[ny][nx] == 1 {
                map[ny][nx] = 0
                queue.append((ny, nx))
                cnt += 1
            }
        }
    }
    return cnt
}

for i in 0..<n {
    for j in 0..<n {
        if map[i][j] == 1{
            cntList.append(bfs(i,j))
        }
    }
}

print(cntList.count)
cntList.sort()
for i in cntList {
    print(i)
}




