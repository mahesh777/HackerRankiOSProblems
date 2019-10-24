import UIKit
import Foundation

func minimumSwaps(arr: [Int]) -> Int {
    var tempArray = arr
    var swap = 0
    for i in 0..<tempArray.count {
        while (i+1 != tempArray[i]) {
            let temp = tempArray[tempArray[i] - 1];
            tempArray[arr[i] - 1] = tempArray[i]
            tempArray[i] = temp;
            swap = swap + 1
        }
    }
    return swap
}

print(minimumSwaps(arr: [4,3,1,2]))
