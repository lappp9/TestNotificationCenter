//
//  DetailViewController.h
//  TestNotificationCenter
//
//  Created by Luke Parham on 9/19/16.
//  Copyright © 2016 Luke Parham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

