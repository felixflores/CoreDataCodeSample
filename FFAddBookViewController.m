//
//  FFAddBookViewController.m
//  CoreDataExample
//
//  Created by Felix Flores on 12/18/12.
//  Copyright (c) 2012 felixflor.es. All rights reserved.
//

#import "FFAddBookViewController.h"

@implementation FFAddBookViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(toggleDoneButton:)
                                                 name:UITextFieldTextDidChangeNotification
                                               object:[self titleTextField]];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)toggleDoneButton:(NSNotification *)notification
{
    BOOL buttonShouldBeEnabled = [[[self titleTextField] text] length] > 0;
    [[self doneButton] setEnabled:buttonShouldBeEnabled];
}

- (IBAction)didPressDoneButton:(id)sender
{
    FFBook *book = [self bookFromBasedOnInformationFromView];
    [[self delegate] addBookViewController:self didAddBook:book];
}

- (FFBook *)bookFromBasedOnInformationFromView
{
    FFBook *book = [[FFBook alloc] initInDataPersistenceContext];
    NSString *title =  [[self titleTextField] text];
    NSString *desc =  [[self descriptionTextView] text];
    
    [book setTitle:title];
    [book setDesc:desc];
    
    return book;
}

- (IBAction)didPressCancelButton:(id)sender
{
    [[self delegate] addBookViewControllerDidPressCancel:self];
}

@end
