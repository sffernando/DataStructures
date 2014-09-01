//
//  Node.h
//  DataStructures
//
//  Created by Harshad Kale on 8/17/14.
//  Copyright (c) 2014 Harshad Kale. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (nonatomic) id data;

@property (nonatomic, strong) Node *next;

- (instancetype)initNodeWithData:(id)data;

@end