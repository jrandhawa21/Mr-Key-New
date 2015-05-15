//
//  MenuViewController.m
//  Mr.Key New File
//
//  Created by JOHNNY RANDHAWA on 5/8/15.
//  Copyright (c) 2015 JOHNNY RANDHAWA. All rights reserved.
//

#import "MenuViewController.h"
#import <Parse/Parse.h>
#import "RESideMenu.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)logout:(UIButton *)sender
{
    [PFUser logOut];
    [self.sideMenuViewController hideMenuViewController];
    [(UINavigationController *)self.sideMenuViewController.contentViewController popToRootViewControllerAnimated:YES];
    
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
