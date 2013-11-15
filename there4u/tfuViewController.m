//
//  tfuViewController.m
//  there4u
//
//  Created by App Jam on 11/14/13.
//  Copyright (c) 2013 App Jam. All rights reserved.
//

#import "tfuViewController.h"
#import "patient.h"

@interface tfuViewController ()

@end

@implementation tfuViewController

////////////////////////////////////////////////////////
- (void)viewDidLoad
{
    [super viewDidLoad];
	if(self.user == nil)
    {
        //password
        self.user = [[patient alloc] init];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

////////////////////////////////////////////////////////

enum {
    firstNameTag = 0,
    lastNameTag,
    ageTag,
    allergiesTag
};

////////////////////////////////////////////////////////

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    switch(textField.tag)
    {
        case firstNameTag:
            self.user.firstName = self.firstNameTextField.text;
            NSLog(@"First Name: %@",self.user.firstName);
            [self.firstNameTextField resignFirstResponder];
            break;
        case lastNameTag:
            self.user.lastName = self.lastNameTextField.text;
            NSLog(@"Last Name: %@",self.user.lastName);
            [self.lastNameTextField resignFirstResponder];
            break;
        case ageTag:
            self.user.age = self.ageTextField.text;
            NSLog(@"Age %@",self.user.age);
            [self.ageTextField resignFirstResponder];
            break;
    }

    return YES;
}



- (IBAction)testButton:(id)sender {
    
}

@end
