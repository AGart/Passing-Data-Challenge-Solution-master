//
//  CCViewController.m
//  Passing Data Challenge Solution
//
//  Created by Eliot Arntz on 10/19/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "CCViewController.h"
#import "CCDetailViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.textField.delegate = self;
}

/* The prepareForSegue method is called right before the viewController transition occurs. Notice that we do introspection to ensure that the Segue is being triggered by the button we added to our ViewController. We then confirm that the destination ViewController is the CCDetailViewController. Finally, we create a variable named detailVC that points to our destination ViewController. We set the property informationFromTextField of our detailVC equal to our textField's text property. */
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([sender isKindOfClass:[UIButton class]]){
        if ([segue.destinationViewController isKindOfClass:[CCDetailViewController class]]){
            CCDetailViewController *detailVC = segue.destinationViewController;
            detailVC.informationFromTextField = self.textField.text;
            detailVC.delegate = self;
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - CCPassingDataDelegate

-(void)didUpdateText:(NSString *)text
{
    // WHY?????????
    self.textField.text = text;
}

#pragma mark

-(BOOL)textFieldShouldReturn:(UITextField *)textField

{
    [self.textField resignFirstResponder];
    return YES;
}


@end





