//
//  PaymentViewController.m
//  Mr.Key New File
//
//  Created by JOHNNY RANDHAWA on 5/3/15.
//  Copyright (c) 2015 JOHNNY RANDHAWA. All rights reserved.
//

#import "PaymentViewController.h"
#import "AddCardViewController.h"

@interface PaymentViewController ()

@end

@implementation PaymentViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Back:(UIButton *)sender
{
    NSLog(@"works");
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)Add:(UIButton *)sender
{
    NSLog(@"works");
    {
        NSLog(@"works");
        AddCardViewController *AddCardVC = [[AddCardViewController alloc] init];
        [self presentViewController:AddCardVC animated:YES completion:nil];
        
    }

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
