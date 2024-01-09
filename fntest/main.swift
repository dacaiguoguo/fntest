//
//  main.swift
//  fntest
//
//  Created by yanguo sun on 2024/1/8.
//

import Foundation

func f(_ n: Int, times: Int) -> Int {
    guard times > 0 else {
        return n
    }

    if n % 2 == 0 {
        // 如果 n 为偶数，则调用 f(n) = n / 2^k，其中 k 为使结果为奇数的最大整数
        var k = 0
        var result = n
        while result % 2 == 0 {
            result /= 2
            k += 1
        }
        return f(result, times: times - 1)
    } else {
        // 如果 n 为奇数，则调用 f(n) = 3n + 1
        return f(3 * n + 1, times: times - 1)
    }
}

// 示例用法
let result = f(13, times: 2018)
print(result)
import Foundation

// 定义新运算符
func newOperation(_ a: Double, _ b: Double) -> Double {
    return (a + b + abs(a - b)) / 2.0
}

// 查找所有可能组合的最大值
func findMaxResult() -> Double {
    let rationalNumbers = Array(-9...9)
    var maxResult = Double.leastNormalMagnitude  // 初始化为最小的Double值

    for a in rationalNumbers {
        for b in rationalNumbers {
            if a != b {
                let result = newOperation(Double(a), Double(b))
                maxResult = max(maxResult, result)
            }
        }
    }

    return maxResult
}

// 计算所有可能组合的最大值
let maximumResult = findMaxResult()
print("所有运算结果中的最大值是: \(maximumResult)")
