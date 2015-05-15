//
//  JohnnyProjectViewController.m
//  john
//
//  Created by JOHNNY RANDHAWA on 4/15/15.
//  Copyright (c) 2015 JOHNNY RANDHAWA. All rights reserved.
//

#import "JohnnyProjectViewController.h"
#import "PictureViewController.h"
#import "AnotherViewController.h"

@interface JohnnyProjectViewController ()

//UILabel

@end

@implementation JohnnyProjectViewController


- (IBAction)signIn:(id)sender
{
    NSLog(@"works");
    PictureViewController *pictureVC = [[PictureViewController alloc] init];
    [self presentViewController:pictureVC animated:YES completion:nil];
    
}

- (IBAction)registerAction:(UIButton *)sender
{
    NSLog(@"works");
    AnotherViewController *anotherVC = [[AnotherViewController alloc] init];
    [self presentViewController:anotherVC animated:YES completion:nil];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
