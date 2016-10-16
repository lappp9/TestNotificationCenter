//
//  DetailViewController.m
//  TestNotificationCenter
//
//  Created by Luke Parham on 9/19/16.
//  Copyright © 2016 Luke Parham. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (nonatomic) UIButton *button;
@end

@implementation DetailViewController

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:@selector(notify)];
    self.navigationItem.rightBarButtonItem = addButton;

    self.button = [[UIButton alloc] init];
    [self.button addTarget:self action:@selector(buttonTouched) forControlEvents:UIControlEventTouchUpInside];
}

- (void)notify
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"poop" object:nil userInfo:@{@"hi there": @"oh yeah"}];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)buttonTouched
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"poop" object:nil userInfo:@{@"hi there": @"oh yeah"}];
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Managing the detail item

- (void)setDetailItem:(NSDate *)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}


@end
