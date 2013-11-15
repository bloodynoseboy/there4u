//
//  tfuViewController.h
//  there4u
//
//  Created by App Jam on 11/14/13.
//  Copyright (c) 2013 App Jam. All rights reserved.
//

#import <UIKit/UIKit.h>

@class patient;

@interface tfuViewController : UIViewController

@property patient *user;

#pragma - TextFields /////////////////////////////////
@property (strong, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *ageTextField;
@property (strong, nonatomic) IBOutlet UITextField *firstNameTextField;
/////////////////////////////////////////////////////
- (IBAction)testButton:(id)sender;

@end
