//
//  FFBooksFetchRequest.m
//  CoreDataExample
//
//  Created by Felix Flores on 12/18/12.
//  Copyright (c) 2012 felixflor.es. All rights reserved.
//

#import "FFBooksFetchRequest.h"

@implementation FFBooksFetchRequest

- (id)initForBooksAlphabeticalAscending
{
    self = [super init];
    
    if (self) {
        NSSortDescriptor *sort = [[NSSortDescriptor alloc] initWithKey:@"title" ascending:NO];
        
        [self setEntity:[FFBook entityDescription]];
        [self setSortDescriptors:@[sort]];
        [self setFetchBatchSize:20];
    }
    
    return self;
}

@end
