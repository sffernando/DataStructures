//
//  main.m
//  DataStructures
//
//  Created by Harshad Kale on 8/17/14.
//  Copyright (c) 2014 Harshad Kale. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Printer.h"
#import "Node.h"
#import "LinkedList.h"

void RunProgram()
{
    Node *n1 = [[Node alloc] initNodeWithData:1];
    Node *n2 = [[Node alloc] initNodeWithData:2];
    Node *n3 = [[Node alloc] initNodeWithData:3];
    
    LinkedList *list = [[LinkedList alloc] init];
    [list push:n2];
    [list addAtEndNode:n3];
    [list insert:n1 atIndex:0];
    
    [Printer printLinkedList:list];
}

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        RunProgram();
    }
    return 0;
}


