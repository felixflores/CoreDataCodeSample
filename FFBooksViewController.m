//
//  FFBooksViewController.m
//  CoreDataExample
//
//  Created by Felix Flores on 12/17/12.
//  Copyright (c) 2012 felixflor.es. All rights reserved.
//

#import "FFBooksViewController.h"
#import "FFAddBookViewController.h"

@implementation FFBooksViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self startFetchRequestController];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    [self setFetchResultsController:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"Add Book Segue"]) {
        UINavigationController *navigationController = [segue destinationViewController];
        FFAddBookViewController *destinationController = [navigationController viewControllers][0];
        [destinationController setDelegate:self];
    }
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    id <NSFetchedResultsSectionInfo> sectionInfo = [[[self fetchResultsController] sections] objectAtIndex:section];
    return [sectionInfo numberOfObjects];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Book Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    [self configureBookCell:cell atIndexPath:indexPath];
    
    return cell;
}

- (void)configureBookCell:(UITableViewCell *)cell
              atIndexPath:(NSIndexPath *)indexPath
{
    FFBook *book = [[self fetchResultsController] objectAtIndexPath:indexPath];
    [[cell textLabel] setText:[book title]];
    [[cell detailTextLabel] setText:[book desc]];
}

- (void)addBookViewController:(FFAddBookViewController *)controller
                 didPressDone:(NSDictionary *)info
{
    FFBook *book = [[FFBook alloc] initWithInfo:info];
    [book save];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)addBookViewControllerDidPressCancel:(FFAddBookViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];    
}

@end
