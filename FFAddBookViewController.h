//
//  FFAddBookViewController.h
//  CoreDataExample
//
//  Created by Felix Flores on 12/18/12.
//  Copyright (c) 2012 felixflor.es. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FFAddBookViewController;

@protocol FFAddBookViewControllerDelegate <NSObject>

- (void)addBookViewController:(FFAddBookViewController *)controller didAddBook:(FFBook *)book;
- (void)addBookViewControllerDidPressCancel:(FFAddBookViewController *)controller;

@end

@interface FFAddBookViewController : UITableViewController

@property (weak, nonatomic) id <FFAddBookViewControllerDelegate> delegate;

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

- (IBAction)didPressDoneButton:(id)sender;
- (IBAction)didPressCancelButton:(id)sender;

@end
