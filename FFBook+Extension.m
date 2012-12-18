//
//  FFBook+Extension.m
//  CoreDataExample
//
//  Created by Felix Flores on 12/18/12.
//  Copyright (c) 2012 felixflor.es. All rights reserved.
//

#import "FFBook+Extension.h"
#import "FFAddBookViewController.h"

@implementation FFBook (Extension)

- (id)initInDataPersistenceContext
{
    self = [[FFDataPersistence sharedInstance] entityWithName:@"FFBook"];
    return self;
}

+ (NSFetchRequest *)fetchRequestForBooksController
{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    
    NSEntityDescription *entity = [[FFDataPersistence sharedInstance] entityDescriptionWithName:@"FFBook"];
    [fetchRequest setEntity:entity];
    
    NSSortDescriptor *sort = [[NSSortDescriptor alloc] initWithKey:@"title"
                                                         ascending:YES];
    
    [fetchRequest setSortDescriptors:@[sort]];
    
    [fetchRequest setFetchBatchSize:20];
    
    return fetchRequest;
}

@end
