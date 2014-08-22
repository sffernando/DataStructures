//
//  LinkedList.m
//  DataStructures
//
//  Created by Harshad Kale on 8/17/14.
//  Copyright (c) 2014 Harshad Kale. All rights reserved.
//

#import "LinkedList.h"

@interface LinkedList ()
@property (nonatomic, strong) Node *head;
@end

@implementation LinkedList

#pragma mark - <public> Overriden methods

-(NSString *)description
{
    Node *node = _head;
    NSMutableString *description = [NSMutableString stringWithString:@""];
    
    while (node)
    {
        [description appendFormat:@"%ld -> ", node.data];
        node = node.next;
    }
    
    [description appendFormat:@"Nil"];
    
    return description;
}

#pragma mark - <private> methods

- (Node *)tail
{
    Node *indexer = _head;
    
    if (!_head)
    {
        return nil;
    }
    
    while (indexer.next)
    {
        indexer = indexer.next;
    }
    
    return indexer;
}

#pragma mark - <public> methods
- (instancetype)initLinkedListWithNode:(Node *)node
{
    if (self = [super init])
    {
        _head = node;
    }
    
    return self;
}

- (instancetype)initLinkedListWithNodeData:(NSUInteger)data
{
    if (self = [super init])
    {
        _head = [[Node alloc] init];
        _head.data = data;
        _head.next = nil;
    }
    
    return [self initLinkedListWithNode:_head];
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
        indexer = indexer.next;
    } while (indexer.next);
    
    return count;
}

- (void)push:(Node *)node
{
    node.next = _head;
    _head = node;
}

- (Node *)pop
{
    Node *popped = _head;
    _head = _head.next;
    
    return popped;
}

- (void)addAtEndNode:(Node *)node
{
    if (node)
    {
        Node *tail = [self tail];
        tail.next = node;
    }
}

- (Node *)nodeAtIndex:(NSUInteger)index
{
    Node *indexer = _head;
    for (NSUInteger i = 0; i < index; i++)
    {
        if (indexer.next)
        {
            indexer = indexer.next;
        }
        else
        {
            return nil;
        }
    }
    return indexer;
}

- (void)insert:(Node *)node atIndex:(NSUInteger)index
{
    if (node)
    {
        if (index == 0)
        {
            [self push:node];
            return;
        }
        
        Node *nodeAtIndexLessOne = [self nodeAtIndex:(index - 1)];
        if (nodeAtIndexLessOne)
        {
            node.next = nodeAtIndexLessOne.next.next;
            nodeAtIndexLessOne.next = node;
        }
    }
}

- (void)removeNodeAtIndex:(NSUInteger)index
{
    if (index == 0)
    {
        [self pop];
        return;
    }
    
    Node *nodeAtIndexLessOne = [self nodeAtIndex:(index - 1)];
    if (nodeAtIndexLessOne)
    {
        nodeAtIndexLessOne.next = nodeAtIndexLessOne.next.next;
    }
}

#pragma mark - <public> derived methods


@end
