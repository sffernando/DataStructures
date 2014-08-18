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

@property (nonatomic, strong) Node *head;

- (instancetype)initLinkedListWithNode:(Node *)node;

- (NSUInteger)length;

- (void)insert:(Node *)node after:(Node *)after;

- (void)insert:(Node *)node atIndex:(NSUInteger)index;

- (void)remove:(Node *)node;

- (void)remove:(Node *)node atIndex:(NSUInteger)index;

- (Node *)nodeAtIndex:(NSUInteger)index;

- (Node *)nodeDataEqualsTo:(Node *)node;

@end
