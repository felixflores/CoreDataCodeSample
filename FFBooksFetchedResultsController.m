//
//  FFBooksFetchedResultsController.m
//  CoreDataExample
//
//  Created by Felix Flores on 12/18/12.
//  Copyright (c) 2012 felixflor.es. All rights reserved.
//

#import "FFBooksFetchedResultsController.h"
#import "FFBooksFetchRequest.h"

@implementation FFBooksFetchedResultsController

- (id)initForBooksAlphabeticalAscending
{
    self = [super initWithFetchRequest:[[FFBooksFetchRequest alloc] initForBooksAlphabeticalAscending]
                  managedObjectContext:[[FFDataPersistence sharedInstance] managedObjectContext]
                    sectionNameKeyPath:nil
                             cacheName:@"Books"];
    
    return self;
}

@end
