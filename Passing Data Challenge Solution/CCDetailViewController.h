//
//  CCDetailViewController.h
//  Passing Data Challenge Solution
//
//  Created by Eliot Arntz on 10/19/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CCPassingDataDelegate <NSObject>

@required
-(void)didUpdateText: (NSString *)text;
@end

@interface CCDetailViewController : UIViewController

@property (weak, nonatomic) id <CCPassingDataDelegate> delegate;


@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) NSString *informationFromTextField;

// Challenge 11
@property (strong, nonatomic) IBOutlet UITextField *detailUITextField;

-(IBAction)updateButtonPressed:(id)sender;

@end
