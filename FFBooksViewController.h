//
//  FFBooksViewController.h
//  CoreDataExample
//
//  Created by Felix Flores on 12/17/12.
//  Copyright (c) 2012 felixflor.es. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FFAddBookViewController.h"

@interface FFBooksViewController : UITableViewController <FFAddBookViewControllerDelegate>

@property (nonatomic, strong) NSFetchedResultsController *fetchResultsController;

@end
