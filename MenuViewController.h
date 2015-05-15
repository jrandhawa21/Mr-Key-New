//
//  MenuViewController.h
//  Mr.Key New File
//
//  Created by JOHNNY RANDHAWA on 5/8/15.
//  Copyright (c) 2015 JOHNNY RANDHAWA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>


@property (strong, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)Pickpicture:(UIButton *)sender;

@end