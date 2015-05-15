//
//  MainViewController.m
//  Mr.Key New File
//
//  Created by JOHNNY RANDHAWA on 4/24/15.
//  Copyright (c) 2015 JOHNNY RANDHAWA. All rights reserved.
//

#import "MainViewController.h"
#import "RegisterViewController.h"
#import "SigninViewController.h"
#import "HomeViewController.h"
#import <Parse/Parse.h>
@interface MainViewController ()

//UILabel

@end

@implementation MainViewController


- (IBAction)signIn:(id)sender
{
    NSLog(@"works");
    SigninViewController *signinVC = [[SigninViewController alloc] init];
    [self.navigationController pushViewController:signinVC animated:YES];
    
}

- (IBAction)registerAction:(UIButton *)sender
{
    NSLog(@"works");
    RegisterViewController *registerVC = [[RegisterViewController alloc] init];
    [self.navigationController pushViewController:registerVC animated:YES];
}


- (void)viewDidLoad {
    [super viewDidLoad];
 
    // Do any additional setup after loading the view from its nib.
}
-(void)viewWillAppear:(BOOL)animated
{
    self.title = @"Hello";
    self.navigationController.navigationBarHidden = YES;

}
-(void)viewDidAppear:(BOOL)animated
{
    if ([PFUser currentUser])
    {
        HomeViewController *homeController = [[HomeViewController alloc] init];
        [self.navigationController pushViewController:homeController animated:YES];
//        [self presentViewController:homeController animated:YES completion:nil];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}









@end


