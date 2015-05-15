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
#import "HistoryViewController.h"
#import "PaymentViewController.h"
#import "ContactUsViewController.h"
#import "SettingsViewController.h"



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

- (IBAction)PickPicture:(UIButton *)sender {
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:NULL];
    
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.imageView.image = chosenImage;
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

- (IBAction)History:(UIButton *)sender
{
    NSLog(@"works");
    HistoryViewController *historyVC = [[HistoryViewController alloc] init];
    [self presentViewController:historyVC animated:YES completion:nil];
    
}

- (IBAction)Payment:(UIButton *)sender
{
    NSLog(@"works");
    PaymentViewController *paymentVC = [[PaymentViewController alloc] init];
    [self presentViewController:paymentVC animated:YES completion:nil];
    
}

- (IBAction)ContactUs:(UIButton *)sender
{
    NSLog(@"works");
    ContactUsViewController *ContactUsVC = [[ContactUsViewController alloc] init];
    [self presentViewController:ContactUsVC animated:YES completion:nil];
    
}

- (IBAction)Settings:(UIButton *)sender
{
    NSLog(@"works");
    SettingsViewController *settingsVC = [[SettingsViewController alloc] init];
    [self presentViewController:settingsVC animated:YES completion:nil];
    
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
