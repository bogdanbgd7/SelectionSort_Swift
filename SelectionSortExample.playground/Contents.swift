import UIKit

var arrayOne : [Int] = [ 2, 1, 8, 6, 981, 9, 12, 82, 89, 69, 212] //unsorted array

//we need variable to hold the smallest number we are looking for in the array.
//so that smallest number we will swap with the first element in the unsorted array.

func selectionSort (unSortedArray : inout [Int]) -> [Int] {
    
    for index in 0..<unSortedArray.count { //one by on index until end of the array
        var lowest = index
        
        for index2 in index + 1..<unSortedArray.count {
            if unSortedArray[index2] < unSortedArray[lowest] {
                lowest = index2
            }
        }
        
        if index != lowest {
            unSortedArray.swapAt(index, lowest)
        }
        
    }
    
    return unSortedArray
    
}

print(selectionSort(unSortedArray: &arrayOne))
