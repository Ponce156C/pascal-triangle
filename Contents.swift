import Foundation

// Pascal's Triangle

func solve(_ numRow: Int) -> [[Int]] {
    guard numRow > 0 else { return [] }
    var result  = [[Int]]()
    result.reserveCapacity(numRow)
    result.append([1])
    
    for x in 1..<numRow {
        var newRow = [1]
        let prevRow = result[x - 1]
        
        for y in 1..<prevRow.count {
            let sum = prevRow[y] + prevRow[y - 1]
            newRow.append(sum)
        }
        newRow.append(1)
        result.append(newRow)
    }
    return result
}


let answer = solve(5)
let lastRow = answer.last
let answerAdd = lastRow?.reduce(0, +) ?? 0
print("solved: " + String(answerAdd))
for row in answer {
    print(row)
}
