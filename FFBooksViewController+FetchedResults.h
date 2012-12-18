//
//  FFBooksViewController+FetchedResults.h
//  CoreDataExample
//
//  Created by Felix Flores on 12/17/12.
//  Copyright (c) 2012 felixflor.es. All rights reserved.
//

#import "FFBooksViewController.h"

@interface FFBooksViewController (FetchedResults) <NSFetchedResultsControllerDelegate>

- (void)startFetchRequestController;

@end
