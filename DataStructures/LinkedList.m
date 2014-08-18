//
//  LinkedList.m
//  DataStructures
//
//  Created by Harshad Kale on 8/17/14.
//  Copyright (c) 2014 Harshad Kale. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

- (instancetype)initLinkedListWithNode:(Node *)node
{
    if ([super init])
    {
        _head = node;
    }
    
    return self;
}

- (NSUInteger)length
{
    NSUInteger count = 0;
    Node *indexer = _head;
    
    if (!_head)
    {
        return 0;
    }
    
    do
    {
        count++;
    } while (indexer.next);
    
    return count;
}

- (void)insert:(Node *)node atIndex:(NSUInteger)index
{
    if (node)
    {
        if (index == 0)
        {
            node.next = _head;
            _head = node;
            return;
        }
        
        Node *nodeAtIndexLessOne = [self nodeAtIndex:(index - 1)];
        if (nodeAtIndexLessOne)
        {
            node.next = nodeAtIndexLessOne.next.next;
            
        }
    }
}

- (void)insert:(Node *)node afterNode:(Node *)after
{
    
}

- (void)remove:(Node *)node
{
    
}

- (void)remove:(Node *)node atIndex:(NSUInteger)index
{
    
}

- (Node *)nodeAtIndex:(NSUInteger)index
{
    
}

- (Node *)nodeDataEqualsTo:(Node *)node
{
    Node *s = [[Node alloc] init];
    
}

@end
