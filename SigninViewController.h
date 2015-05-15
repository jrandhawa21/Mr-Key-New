//
//  SigninViewController.h
//  Mr.Key New File
//
//  Created by JOHNNY RANDHAWA on 4/27/15.
//  Copyright (c) 2015 JOHNNY RANDHAWA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SigninViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *username;

@property (weak, nonatomic) IBOutlet UITextField *password;

@property (weak, nonatomic) IBOutlet UIButton *login;

@property (weak, nonatomic) IBOutlet UIButton *forgotpassword;

@property (weak, nonatomic) IBOutlet UIButton *cancel;



-(IBAction)Login:(id)sender;

-(IBAction)Forgotpassword:(id)sender;

-(IBAction)cancel:(id)sender;

-(IBAction)backgroundTap:(id)sender;




@end
