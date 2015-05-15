//
//  HomeViewController.m
//  Mr.Key New File
//
//  Created by JOHNNY RANDHAWA on 4/27/15.
//  Copyright (c) 2015 JOHNNY RANDHAWA. All rights reserved.
//

#import "HomeViewController.h"
#import <Parse/Parse.h>
#include "RESideMenu.h"

@interface HomeViewController ()

@end

@implementation HomeViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}
-(void)viewWillAppear:(BOOL)animated
{
    // Single line comment
    /*
     
     Multi-line comment
     */
    self.navigationController.navigationBarHidden = YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
