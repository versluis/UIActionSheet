//
//  ViewController.m
//  ActionSheet
//
//  Created by Jay Versluis on 17/03/2015.
//  Copyright (c) 2015 Pinkstone Pictures LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIActionSheetDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // call that Action Sheet
    [self showActionSheet];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Action Sheet Methods

- (IBAction)triggerButton:(id)sender {
    
    // when that button is pressed, bring up the action sheet
    [self showActionSheet];
}

- (void)showActionSheet {
    
    // bring up a UIActionSheet
    UIActionSheet *myActionSheet;
    myActionSheet = [[UIActionSheet alloc]initWithTitle:@"Hello there!" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Cancel in Red" otherButtonTitles:@"Open in Safari", nil];
    myActionSheet.actionSheetStyle = UIActionSheetStyleAutomatic;
    [myActionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    // find out which button was pressed
    if (buttonIndex == 0) {
        NSLog(@"This was Button 0");
    }
    
    if (buttonIndex == 1) {
        NSLog(@"This was Button 1");
    }
    
    if (buttonIndex == 2) {
        NSLog(@"This was button 2");
    }
}

@end
