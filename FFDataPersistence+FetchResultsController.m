//
//  FFDataPersistence+FetchResultsController.m
//  CoreDataExample
//
//  Created by Felix Flores on 12/18/12.
//  Copyright (c) 2012 felixflor.es. All rights reserved.
//

#import "FFDataPersistence+FetchResultsController.h"

@implementation FFDataPersistence (FetchResultsController)
- (NSFetchedResultsController *)fetchResultsControllerWithFetchRequest:(NSFetchRequest *)fetchRequest
                                                          andCacheName:(NSString *)cacheName
{
    NSFetchedResultsController *fetchedResultsController =
    [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest
                                        managedObjectContext:[self managedObjectContext]
                                          sectionNameKeyPath:nil
                                                   cacheName:cacheName];
    
    return fetchedResultsController;
}

@end
