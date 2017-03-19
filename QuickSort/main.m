//
//  main.m
//  QuickSort
//
//  Created by Angel Lee on 2015-07-08.
//  Copyright (c) 2015 Angel Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

int partition(NSMutableArray *unsortedArray, int start, int end)
{
    NSNumber *pivot = unsortedArray[end];
    int wall = start;
    int current = wall;
    
    while (current != end) {
        if (unsortedArray[current] < pivot) {
            [unsortedArray exchangeObjectAtIndex:current withObjectAtIndex:wall];
            wall++;
        }
        current++;
    }
    [unsortedArray exchangeObjectAtIndex:current withObjectAtIndex:wall];
    return wall;
}

NSMutableArray *quickSort(NSMutableArray *unsortedArr, int start, int end)
{
    if (start >= end) return nil;
    
    int pIndex = partition(unsortedArr, start, end);
    quickSort(unsortedArr, start, pIndex - 1);
    quickSort(unsortedArr, pIndex + 1, end);
    return unsortedArr;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSMutableArray *a = [@[@5, @4, @3,@6, @2, @1, @7] mutableCopy];
        a = quickSort(a, 0, (int)a.count -1 );
    }
    return 0;
}
