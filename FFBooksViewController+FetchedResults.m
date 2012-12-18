//
//  FFBooksViewController+FetchedResults.m
//  CoreDataExample
//
//  Created by Felix Flores on 12/17/12.
//  Copyright (c) 2012 felixflor.es. All rights reserved.
//

#import "FFBooksViewController+FetchedResults.h"
#import "FFBooksFetchedResultsController.h"

@implementation FFBooksViewController (FetchedResults)

- (void)startFetchRequestController
{
    [self configureFetchResultsController];
    
    NSError *error = nil;
    [[self fetchResultsController] performFetch:&error];
    
    if (error) {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
    }
}

- (void)configureFetchResultsController
{
    FFBooksFetchedResultsController *fetchResultsController = [[FFBooksFetchedResultsController alloc] initForBooksViewController];
    
    [fetchResultsController setDelegate:self];
    [self setFetchResultsController:fetchResultsController];
}

- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller
{
    [[self tableView] beginUpdates];
}

- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller
{
    [[self tableView] endUpdates];
}

- (void)controller:(NSFetchedResultsController *)controller
   didChangeObject:(id)anObject
       atIndexPath:(NSIndexPath *)indexPath
     forChangeType:(NSFetchedResultsChangeType)type
      newIndexPath:(NSIndexPath *)newIndexPath
{
    UITableView *tableView = [self tableView];
    
    switch(type) {
        case NSFetchedResultsChangeInsert:
            [tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath]
                             withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeDelete:
            [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath]
                             withRowAnimation:UITableViewRowAnimationFade];
            break;
    }
}

@end
