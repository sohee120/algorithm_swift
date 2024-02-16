//
//  main.swift
//  BaekJoon_144256
//
//  Created by 윤소희 on 2024/02/15.
//

import Foundation

func bs(_ target: String, list: [String]) ->Int {
  var l = 0, r = list.count-1, m = 0
  while l<r {
    m = (l+r)/2
    if target > list[m] { l = m + 1 }
    else { r = m }
  }
  return r
}

let input = readLine()!.split{$0==" "}.map{Int(String($0))!}
let (n,m) = (input[0],input[1])
let list = (0..<n).map { _ in readLine()! }.sorted()
let texts = (0..<m).map{ _ in readLine()! }

print(texts.filter{
  return list[bs($0,list:list)]
    .hasPrefix($0) ? true : false
}.count)

print(list.count)
