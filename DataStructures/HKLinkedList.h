//
//  LinkedList.h
//  DataStructures
//
//  Created by Harshad Kale on 8/17/14.
//  Copyright (c) 2014 Harshad Kale. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedList : NSObject

/************************/
-(NSString *)description;
/************************/

- (instancetype)initLinkedListWithNode:(Node *)node;

- (instancetype)initLinkedListWithNodeData:(id)data;

- (NSUInteger)length;

- (void)push:(Node *)node;

- (Node *)pop;

- (void)addAtEndNode:(Node *)node;

- (Node *)nodeAtIndex:(NSUInteger)index;

- (void)insert:(Node *)node atIndex:(NSUInteger)index;

- (void)removeNodeAtIndex:(NSUInteger)index;

/*
- (void)insertSorted:(Node *)node;

- (void)appendList:(LinkedList *)list;

- (LinkedList *)secondListAfterSplitAtMid;

- (void)removeDuplicates;

- (LinkedList *)listAfterMovingNodeFromList:(LinkedList *)list;

- (LinkedList *)listAfterAlternativelySplittingList:(LinkedList *)list;

- (LinkedList *)listAfterShuffleMergingList:(LinkedList *)listOne withList:(LinkedList *)listTwo;

- (LinkedList *)listAfterSortedMergingList:(LinkedList *)listOne withList:(LinkedList *)listTwo;
*/

@end
