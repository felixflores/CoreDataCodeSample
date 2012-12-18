//
//  FFAddBookViewController.m
//  CoreDataExample
//
//  Created by Felix Flores on 12/18/12.
//  Copyright (c) 2012 felixflor.es. All rights reserved.
//

#import "FFAddBookViewController.h"

@implementation FFAddBookViewController
NSString *FFBookTitle = @"FFBookTitle";
NSString *FFBookDescription = @"FFBookDescription";

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
    BOOL buttonIsEnabled = [[[self titleTextField] text] length] > 0;
    [[self doneButton] setEnabled:buttonIsEnabled];
}

- (IBAction)didPressDoneButton:(id)sender
{
    NSDictionary *info = @{
        FFBookTitle : [[self titleTextField] text],
        FFBookDescription : [[self descriptionTextView] text]
    };
    
    [[self delegate] addBookViewController:self didPressDone:info];
}

- (IBAction)didPressCancelButton:(id)sender
{
    [[self delegate] addBookViewControllerDidPressCancel:self];
}
@end
