//
//  SigninViewController.m
//  Mr.Key New File
//
//  Created by JOHNNY RANDHAWA on 4/27/15.
//  Copyright (c) 2015 JOHNNY RANDHAWA. All rights reserved.
//

#import "SigninViewController.h"
#import <Parse/Parse.h>
#import "HomeViewController.h"
@interface SigninViewController ()

@end

@implementation SigninViewController


-(IBAction)Login:(id)sender
{
    
    if([[self.username text] isEqualToString:@""] || [[self.password text] isEqualToString:@""] ) {
            
        [self alertStatus:@"Please enter Username and Password" :@"Sign in Failed!" :0];
            
    } else {
//        [PFUser logInWithUsername:_username.text password:_password.text];
        [PFUser logInWithUsernameInBackground:_username.text password:_password.text
                                        block:^(PFUser *user, NSError *error) {
                                            if (user) {
                                                HomeViewController *homeVC =[[HomeViewController alloc] init];
                                                [self.navigationController pushViewController:homeVC animated:YES];
//                                                [self presentViewController:homeVC animated:YES completion:nil];
                                            } else {
                                                // The login failed. Check error to see why.
                                                UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Incorrect Username or Password" delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil];
                                                [alertView show];
                                            }
                                        }];
                                                                                                    
      
    }
    
        
   
}
- (void)myMethod {
    PFUser *user = [PFUser user];
    user.username = @"my name";
    user.password = @"my pass";
    user.email = @"email@example.com";
    
    // other fields can be set just like with PFObject
    user[@"phone"] = @"415-392-0202";
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            // Hooray! Let them use the app now.
        } else {
            NSString *errorString = [error userInfo][@"error"];
            // Show the errorString somewhere and let the user try again.
        }
    }];
}
- (void) alertStatus:(NSString *)msg :(NSString *)title :(int) tag
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
                                                        message:msg
                                                       delegate:self
                                              cancelButtonTitle:@"Ok"
                                              otherButtonTitles:nil, nil];
    alertView.tag = tag;
    [alertView show];
}

-(IBAction)Forgotpassword:(id)sender;
{
    
}

-(IBAction)cancel:(id)sender;
{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];

}





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBarHidden = NO;
    self.title = @"Hello";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backgroundTap:(id)sender {
    [self.view endEditing:YES];
}
@end
