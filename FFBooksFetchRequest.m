//
//  FFBooksFetchRequest.m
//  CoreDataExample
//
//  Created by Felix Flores on 12/18/12.
//  Copyright (c) 2012 felixflor.es. All rights reserved.
//

#import "FFBooksFetchRequest.h"

@implementation FFBooksFetchRequest
- (id)initForBooksViewController
{
    self = [super init];
    
    if (self) {
        NSEntityDescription *entity = [[FFDataPersistence sharedInstance] entityDescriptionWithName:@"FFBook"];
        [self setEntity:entity];
        
        NSSortDescriptor *sort = [[NSSortDescriptor alloc] initWithKey:@"title"
                                                             ascending:YES];
        
        [self setSortDescriptors:@[sort]];
        
        [self setFetchBatchSize:20];
    }
    
    return self;
}
@end
