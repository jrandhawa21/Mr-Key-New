//
//  ProfileViewController.m
//  Mr.Key New File
//
//  Created by JOHNNY RANDHAWA on 4/30/15.
//  Copyright (c) 2015 JOHNNY RANDHAWA. All rights reserved.
//

#import "ProfileViewController.h"
#import "CardViewController.h"

@interface ProfileViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageview;

@end

@implementation ProfileViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIBarButtonItem *btnShare = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(Nextpagecardviewcontroller)];
    [self.navigationItem setRightBarButtonItems:[NSArray arrayWithObjects:btnShare, nil]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)Nextpagecardviewcontroller {
    CardViewController *cardVC = [[CardViewController alloc] init];
    [self.navigationController pushViewController:cardVC animated:YES];
}

-(IBAction)edit:(id)sender
{

    
    [self.navigationController setToolbarHidden:NO];
    [self.navigationController.toolbar setBarStyle:UIBarStyleBlackOpaque];  //for example
    
    
    UIBarButtonItem* button1 = [[UIBarButtonItem alloc] initWithTitle:@"Take Photo" style:UIBarButtonItemStyleBordered target:self action:@selector(takePhoto)];

    UIBarButtonItem* button2 = [[UIBarButtonItem alloc] initWithTitle:@"Select Photo" style:UIBarButtonItemStyleBordered target:self action:@selector(selectPhoto)];

    //set the toolbar buttons
    [self setToolbarItems:[NSArray arrayWithObjects:button1, button2, nil]];

    
}

-(void)takePhoto
{
    
    NSLog(@"HI");
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:picker animated:YES completion:nil];
}
-(void)selectPhoto
{
   
    NSLog(@"Action2 ");
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:nil];
    
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.imageview.image = chosenImage;
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    [self.navigationController setToolbarHidden:YES];
    
    
    
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
