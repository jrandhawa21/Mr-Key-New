//
//  AnotherViewController.m
//  MrKey
//
//  Created by JOHNNY RANDHAWA on 4/23/15.
//  Copyright (c) 2015 JOHNNY RANDHAWA. All rights reserved.
//

#import "AnotherViewController.h"

@interface AnotherViewController ()

@end

@implementation AnotherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)back:(UIButton *)sender
{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}
-(IBAction)next:(UIButton *)sender
{
    
}

@end
